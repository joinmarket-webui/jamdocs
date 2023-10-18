# FAQ

Have a question that is not listed here? [Let us know!][contribute]

[:octicons-arrow-right-24: Contributing][contribute]

[contribute]: contribute.md

## Frequently Asked Questions

This FAQ compiles questions that relate to Jam in particular. For things related
to JoinMarket in general, please refer to the [JoinMarket documentation][jm-docs].

[jm-docs]: https://github.com/JoinMarket-Org/joinmarket-clientserver/tree/master/docs

### How much can I earn?

Earning sats entails providing liquidity to other market participants.
Consequently, how much you can earn depends on multiple factors, market
conditions and liquidity size being two of them. In general, the more liquidity
you provide, the more you can earn. That being said, you are competing in an
open market, and because competition is global and only constraint by market
forces, the margin is usually thin.

If your offers are not taken by market participants, your offer might be too
expensive. Check the [order book][orderbook] and compare your offer to the
market price. If your offer is competitive and is still ignored, make sure to
create a [Fidelity Bond][glossary], which signals that you are a serious market
participant and not a malicious entity.

See also "[a few words about incentives][jm-incentives]" from the JoinMarket
documentation.

[jm-incentives]: https://github.com/JoinMarket-Org/joinmarket-clientserver/blob/master/docs/YIELDGENERATOR.md#a-few-words-about-incentives

### How high are the fees that I do have to pay?

The amount of [fees][fees] you have to pay depends on market and blockspace
conditions. They are dictated by supply and demand, both for collaborative
transactions and single user transactions.

Market [makers][glossary] provide liquidity and set the fee they want to earn,
either in absolute or percentage terms. Market [takers][glossary] have to agree
to take these offers voluntarily. Check the [orderbook][orderbook] to get an
up-to-date overview of the current fee market.

In addition to these fees, you will have to pay mining fees for you and the makers. Mining fees depend
on how many transactions are currently in the [mempool][glossary]. Inspect your
mempool or use a public site like [mempool.space][ms] to do a fee estimation.

!!! hint

    We recommended that you [run your own mempool.space
    instance][ms-install] on your full node.

See also "[a note on fees][fee-note]" from the JoinMarket documentation.

[fee-note]: https://github.com/JoinMarket-Org/joinmarket-clientserver/blob/master/docs/tumblerguide.md#a-note-on-fees
[fees]: market/fees.md
[orderbook]: market/orderbook.md
[glossary]: glossary.md
[ms]: https://mempool.space/
[ms-install]: https://github.com/mempool/mempool#one-click-installation

### I'm getting an error when trying to open the wallet

The following error can pop up in case JoinMarket didnt't shut down cleanly:

```
wallet.jmdat cannot be created/opened, it is locked.
```

!!! warning
    Make sure that you have **written down your wallet seed** before executing
    *any* command

You can resolve this by manually deleting the wallet `.lock` file as explained
in [issue #173][lockfile-issue].


[lockfile-issue]: https://github.com/joinmarket-webui/jam/issues/173#issuecomment-1069086553

### Why is my collaborative transaction taking so long?

This can have multiple reasons. Tor or general network connection issues,
participants not responding in a timely manner, missing requirements to
source commitments ([see the docs][sourcing-commitments]), period of slow
block production, unexpected increase of transaction fees, etc.

[sourcing-commitments]: https://github.com/JoinMarket-Org/joinmarket-clientserver/blob/v0.9.7/docs/SOURCING-COMMITMENTS.md

For a better assessment, the following can be taken as a guideline:

- single collaborative transactions generally take only a few minutes (<15min)
- a scheduled sweep can take hours, even days (<3days)

If an operation takes longer than that, then there might be a different issue.
See ["Something else is/seems stuck"](#something-isseems-stuck-what-can-i-do) for more info.

### Something else is/seems stuck; what can I do?

If a single collaborative transaction takes hours, or if your
scheduled sweep already takes over three days, there might be a different
underlying problem.

A general rule of thumb is: Any operation either succeeds or fails. 
If an operation is aborted prematurely, there is no danger of loss of funds.

All operations can be aborted by **locking your wallet**.

Since Jam does not yet have a way to provide fine grained error information to users,
it is always a good idea to inspect the log files for warning and error messages.

### How do I view the log file?

If you are running Jam with one of the supported integrations (RaspiBlitz,
Citadel, Umbrel, etc.) chances are you can view the logs inside the app
(See Settings > Show logs).

If the option is not displayed, or if you run the `standalone` docker image
yourself, you can find all log files inside the container in directory 
`/var/log/jam/`. See `jmwalletd_stdout.log` or `jmwalletd_stderr.log` for 
problems with Jam.

e.g. `tail -n 200 -f /var/log/jam/jmwalletd_stdout.log`

If you run JoinMarket natively, you can find the logs files inside the `logs`
folder of JoinMarket's working directory (e.g. `/home/<user>/.joinmarket/logs`)

e.g. `tail -n 200 -f /home/user/.joinmarket/logs/jmwalletd_logs.log`

### How to resolve "No connection to gateway"?

This can have several reasons and basically means that the UI cannot reach the backend service.
Depending on your [installation](/software/installation/) (native setup, docker images,
local/remote hosts, etc.), there are a number of things you should verify.

Please make sure that:

- Your Bitcoin Core instance is up and running, fully synced and is accepting RPC requests.

```
bitcoin-cli getblockchaininfo
```

- The backend service is running and is reachable on the specified ports.
  Verify that you get a response from the server, by executing a request
  _on the host that is running your JoinMarket instance_ (if you run an Umbrel node, 
  this requests needs to be executed _inside_ the Jam docker container):

```
curl --insecure https://127.0.0.1:28183/api/v1/session
```

- [Check the logs](#how-do-i-view-the-log-file) for any errors or warnings.

- If all the above fails, try restarting every service or do a complete node reboot.

- As a last resort, seek help in the [support channel](/contribute/#say-hello).

### Can I import an existing wallet?

Yes, importing an existing wallet can be done via the web interface since [Jam `v0.1.6`][jam-v0-1-6]
using the button labeled "Import existing wallet" on the starting page.
Make sure you are running [JoinMarket `v0.9.10`][jm-v0-9-10] or later.

[jam-v0-1-6]: https://github.com/joinmarket-webui/jam/releases/tag/v0.1.6
[jm-v0-9-10]: https://github.com/JoinMarket-Org/joinmarket-clientserver/releases/tag/v0.9.10

### How to import an existing wallet via the command line?

If you are running a JoinMarket version lower than `v0.9.10` or if you are a command line maximalist, follow these steps:

- Log into the host machine, e.g. with `ssh` (see an example for Umbrel below)
- Navigate to JoinMarket's root directory
- Invoke the recover mechansim of the `wallet-tool.py` script

```sh
. jmvenv/bin/activate # if virtual environment is enabled
python3 scripts/wallet-tool.py recover --gap-limit=200 --recoversync
```

- Answer questions (provide seed phrase, etc.). Make sure that you put ".jmdat" 
at the end of the name for the wallet, otherwise it won't be displayed in Jam.
Answer the question for support of fidelity bonds with "y" (yes).

```
root@821939a90a7c:/src# python3 scripts/wallet-tool.py recover --gap-limit=200 --recoversync
User data location: /root/.joinmarket/
Input mnemonic recovery phrase: zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo wrong
Input mnemonic extension, leave blank if there isnt one: 
Enter new passphrase to encrypt wallet: 
Reenter new passphrase to encrypt wallet: 
Input wallet file name (default: wallet.jmdat): recover.jmdat
Would you like this wallet to support fidelity bonds? write 'n' if you don't know what this is (y/n): y
Write down this wallet recovery mnemonic

zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo wrong

Recovered wallet OK
```

- All done.

Here is an example of how you'd get into the Jam container on Umbrel:

- Log into your umbrel with `ssh umbrel@umbrel.local`
- Move into the jam container with `docker exec -it jam_web_1 bash`
- Navigate to JoinMarket's root directory with `cd /src`
- Now follow the import procedure as explained above
- Leave the command line with `exit` (multiple times)
