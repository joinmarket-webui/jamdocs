# Mempool

The mempool (memory pool) is a pool of transactions that are not included in the
timechain yet. It is a waiting room for transactions, if you will. Every full
node has its own mempool—there is no single mempool that is shared by nodes,
there is an individual mempool for every single node. Mempools might differ
depending on node configuration. Nodes can decide which transactions to keep,
which transactions to pass on to other nodes, and which transactions to drop.

Miners will consult their mempools to construct candidate blocks. Once a
transaction is included in a valid block—and your node confirms the blocks
validity—it is considered confirmed and removed from the node's mempool.

[:octicons-arrow-right-24: Learn me a bitcoin: Memory Pool][learn]

[learn]: https://learnmeabitcoin.com/technical/memory-pool

Miners are incentivised to include transactions that reward them the most, i.e.
transactions that pay the highest mining fees. Because mining fees are set by
the users, you can view mining fees as a kind of bribe that is paid by the users
to the miners. If the bribe is high, the chance of your transaction being
included is high. If it is low, the chance of inclusion is lower.

[:octicons-arrow-right-24: Paying Mining Fees][fees]

[fees]: /market/fees/#paying-mining-fees

## Mempool and Transaction Fees

Bitcoin block space is scarce. If onchain activity is high, the mempool will be
crowded. The more crowded the mempool, the higher the "bribe" you will have to
pay to miners.

Fee estimation is an attempt to guess how high the fee needs to be for your
transaction to be included in the future. It is more an art than a science,
since the future is always uncertain and mempool conditions might change
quickly.

Most mempool explorers have some sort of fee estimation. You can also use the
[`estimatesmartfee`][cmd-estimate] command to do a fee estimation based on your
mempool:

    bitcoin-cli estimatesmartfee 21 economical

[cmd-estimate]: https://developer.bitcoin.org/reference/rpc/estimatesmartfee.html

## Mempool Instances

We recommend that you use your own node to inspect the mempool. For example, you
can use the [`getrawmempool`][cmd-mempool] command to inspect your mempool:

    bitcoin-cli getrawmempool true

[cmd-mempool]: https://developer.bitcoin.org/reference/rpc/getrawmempool.html

Of course, plenty of graphical user interfaces exist too. The software that is
powering mempool.space is free software and can be installed quite easily on
your node.

[:octicons-arrow-right-24: Mempool One-Click Installation][mempool-install]

[mempool-install]: https://github.com/mempool/mempool#one-click-installation

## Mempool Visualisations

You can also refer to public mempool instaces in case you don't have access to
the mempool of your own node. Note, however, that using public mempool and block
explorers has certain privacy implications, as whoever is running these websites
will be able to correlate your IP with the blocks and transactions you look up.
Use Tor or a VPN to mitigate this.

[:octicons-arrow-right-24: mempool.space][mempool.space]

There are also great visualisations that help you understand what's going on,
*Bitfeed* and *Mempool Observer* being two of them.

[:octicons-arrow-right-24: Visualisation: Mempool Observer][mempool.observer]

[:octicons-arrow-right-24: Visualisation: Bitfeed][bitfeed]


[mempool.space]: https://mempool.space
[mempool.observer]: https://mempool.observer/monitor/
[bitfeed]: https://bits.monospace.live/
