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

You can refer to public mempool instaces in case you don't have
access to the mempool of your own node.

[:octicons-arrow-right-24: mempool.space][mempool.space]

[mempool.space]: https://mempool.space
