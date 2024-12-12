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

    It is recommended that you [run your own mempool.space
    instance][ms-install] on your full node.

See also "[a note on fees][fee-note]" from the JoinMarket documentation.

[fee-note]: https://github.com/JoinMarket-Org/joinmarket-clientserver/blob/master/docs/tumblerguide.md#a-note-on-fees
[fees]: market/fees.md
[orderbook]: market/orderbook.md
[glossary]: glossary.md
[ms]: https://mempool.space/
[ms-install]: https://github.com/mempool/mempool#one-click-installation

### What is the password used for?

The password is used for encrypting the wallet file. 
It is **not** used as a passphrase that extends your mnemonic seed (also known as the 13th or 25th word).
Only the mnemonic seed is needed to recover your funds, e.g. when you restore your wallet on a different device.

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
See ["Something else is/seems stuck"](#something-else-isseems-stuck-what-can-i-do) for more info.

### Does Jam need to be open for/during coinjoin?

To participate in coinjoin(s) the wallet needs to be active (unlocked).
This does not require Jam to be open, as the unlocked wallet stays active after closing the browser.

The rest of your setup needs to keep running and be online.

This applies to both as a [_taker_](/glossary/#taker) (Send/Sweep) and as a [_maker_](/glossary/#maker) (Earn).

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

### Why is my offer not shown in the orderbook?

It takes some time for your node to retrieve individual offers in the orderbook.
Similar to mempools, depending on your directory nodes and message channels, 
not everyone sees the same offers and there is no "The Orderbook".
Wait a couple of time and refresh your local orderbook. 
If you can't see your own offer after a few minutes, only then there may be a problem.

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

### Which bitcoin address types are supported?

For sending, all address types are supported.
For receiving, only bech32 (p2wpkh) addresses are used.

### How can I speed up/bump an unconfirmed transaction?

Bumping an unconfirmed transaction currently has to be done manually and can only be done by using CPFP.
This means that you need 1 or more outputs of the transaction to be able to bump it.

Bumping can be done with the following steps:

- Figure out which unconfirmed output(s) to use to create the child transaction
- Freeze all other coins in that jar
- Send a (non-collaborative) transaction from that jar with a high(er) fee rate

Which fee rate to use to get confirmed in the desired timeframe has to be calculated manually.

!!! warning
    Be aware of the privacy and/or additional cost trade-offs.

### How can I see the transaction history?

Jam does not display a transaction history, as the JoinMarket RPC currently does not support it.

To see the transaction history of a wallet, the JoinMarket `wallet-tool` can be used, using the command line.
More info [here](https://github.com/JoinMarket-Org/joinmarket-clientserver/blob/v0.9.11/docs/USAGE.md#wallet-history).

It is also possible to use other wallet software, but be aware of the risks (xpub leak when not usig your own node) and preferably use a watch-only wallet.

### Jam doesn't work anymore after updating Bitcoin Core to v26.0?

BerkeleyDB (BDB) wallet creation was deprecated in Bitcoin Core v26.0.
This leads to issues for JoinMarket and thus also Jam.
The problem should be fixed once JoinMarket supports Bitcoin Core descriptor wallets.

_For now, the fix is to add `deprecatedrpc=create_bdb` to your bitcoin.conf file._

<details>
<summary>Step-by-step instructions on how to do this on Umbrel/Citadel</summary>
The example commands are for Umbrel, if you're using Citadel simply replace `umbrel` with `citadel`.
<br>
<br>

1. Open the terminal and login to your node using ssh:

`ssh umbrel@umbrel.local`
<br>

2. Enter your password (same password as when you use the browser).
<br>

3. Enter command to edit your bitcoin.conf file:

`nano /mnt/data/umbrel/bitcoin/bitcoin.conf`
<br>

4. Add the following line to the config file

`deprecatedrpc=create_bdb`
<br>

5. Save and exit the editing of the file, by pressing the following keystroke combo:

`ctrl x` (to save), then `y` (to exit)
<br>

</details>

Restart and then it should work as the new config is now active.

Or use a lower version than Bitcoin Core v26.0.
