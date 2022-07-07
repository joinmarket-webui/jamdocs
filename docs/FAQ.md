# FAQ

Have a question that is not listed here? Let us know!

[:octicons-arrow-right-24: Contributing][contribute]

[contribute]: contribute.md

## Frequently Asked Questions

TODO

### How much can I earn?

TODO

### How high are the fees that I do have to pay?

The amount of [fees][fees] you have to pay depends on market and blockspace
conditions. They are dictated by supply and demand, both for collaborative
transactions and onchain tranactions in general.

Market [makers][glossary] provide liquidity and set the fee they want to earn,
either in absolute or percentage terms. Market [takers][glossary] have to agree
to take these offers voluntarily. Check the [orderbook][orderbook] to get an
up-to-date overview of the current fee market.

In addition to these fees, you will have to pay mining fees. Mining fees depend
on how many transactions are currently in the [mempool][glossary]. Inspect your
mempool or use a public site like [mempool.space][ms] to do a fee estimation.

!!! hint

    We highly recommended that you [run your own mempool.space
    instance][ms-install] on your full node.

See also "[a note on fees][fee-note]" from the JoinMarket documentation.

[fee-note]: https://github.com/JoinMarket-Org/joinmarket-clientserver/blob/master/docs/tumblerguide.md#a-note-on-fees
[fees]: market/fees.md
[orderbook]: market/orderbook
[glossary]: /glossary
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

### Something is/seems stuck; what can I do?

(hint: service feedback not yet provided; it's always safe to cancel operations;
no loss of funds)

### No connection to gateway

(hint: check service is running; check ports are open) can also be reverse proxy
issues; reverse proxy is still mandatory (this is a pain point for me.. we need
to get rid of it) don't know if we should go into details why it is needed or
what the differences are
