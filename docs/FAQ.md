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


[lockfile-issue]: https://github.com/joinmarket-webui/joinmarket-webui/issues/173#issuecomment-1069086553

### Why is my collaborative transaction taking so long?

This can have multiple reasons. Tor or general network connection issues,
participants not responding in a timely manner, missing requirements to
source commitments ([see the docs][sourcing-commitments]), period of slow
block production, unexpected increase of transaction fees, etc.

[sourcing-commitments]: https://github.com/JoinMarket-Org/joinmarket-clientserver/blob/v0.9.7/docs/SOURCING-COMMITMENTS.md

For a better assessment, the following can be taken as a guideline:

- single collaborative transactions generally take only a few minutes (<15min)
- a scheduled sweep can take hours, even days (<3days)

If something takes longer that this, then there might be a different issue.
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

### No connection to gateway

TODO

(hint: check service is running; check ports are open) can also be reverse proxy
issues; reverse proxy is still mandatory (this is a pain point for me.. we need
to get rid of it) don't know if we should go into details why it is needed or
what the differences are
