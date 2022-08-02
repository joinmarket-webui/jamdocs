# Glossary

Unfortunately, there is no way to talk about bitcoin privacy and the intricacies
of JoinMarket without a little bit of special lingo.

This glossary explains some of the concepts and terms used in Jam.

---

<center>
[
A ·
B ·
[C](#c) ·
[D](#d) ·
[E](#e) ·
[F](#f) ·
G ·
H ·
I ·
[J](#j) ·
K ·
L ·
[M](#m) ·
N ·
O ·
P ·
Q ·
R ·
[S](#s) ·
[T](#t) ·
[U](#u) ·
V ·
W ·
X ·
Y ·
Z
]
</center>

---



## C
### Chain Analysis

Chain analysis is is the practice of applying heuristics to a
[timechain](#timechain)'s public transaction graph. The goal of chain analysis
is to link the pseudonymous identities created by bitcoin software with "real"
identities corresponding to natural persons or entities.

Chain analysis is based on flawed assumptions, because ownership in bitcoin is
defined by secret knowledge, not possession. Identities can only be linked
probabilistically, not provably. One of the main assumptions used by chain
analysis companies is the [common input ownership
heuristic](#common-input-ownership-heuristic). Collaborative transactions break
this heuristic.

### CoinJoin
### Collaborative Transaction

A collaborative transaction is a bitcoin transaction that --- you guessed it ---
is done collaboratively by multiple participants. Specifically, a coinjoin is a 
transaction with multiple inputs belonging to different users.

### CIOH

Short for [Common Input Ownership Heuristic](#common-input-ownership-heuristic).
It is assumed that all inputs of a transaction belong to a single person.

### Common Input Ownership Heuristic
## D
### Doxxic Change
## E
### Eclipse Attack
## F
### Fidelity Bond
### Fungibility
## J
### Jam

Jam is both [the name][name] of the project and the verb we use for running multiple
collaborative transactions automatically via the [scheduler](#schedule).

[:octicons-arrow-right-24: About][name]

[:octicons-arrow-right-24: Jam Interface][i/jam]

[name]: about.md
[i/jam]: interface/02-jam.md
### Jar

In Jam, a "jar" is a container that holds some sats of yours.[^mixdepths] Jars
exist to segregate your sats into multiple buckets that are disconnected from
each other, which aids privacy. To not risk any privacy degradation, you can
only spend from one jar at a time.

There are 5 jars by default. The default jar to receive funds is *Jar #0*.

[^mixdepths]: What we call "jars" are usually called "mixdepths" in JoinMarket. They are also referred to as "pockets" and "accounts" in some of the older parts of the JoinMarket documentation.

## M
### Maker

A market maker is someone who offers bitcoin liquidity to the market, to be used by
others for collaborative transactions. You can create an offer via the ["Earn"
tab][i/earn] and become a market maker.

[:octicons-arrow-right-24: Earn Screen][i/earn]

[i/earn]: interface/03-earn.md


### Mempool
A list of valid bitcoin transactions that are not yet confirmed in the timechain.
## O
### Offchain
### Onchain
## S
### Sats
The atomic unit of the Bitcoin protocol. 100 million sats are considered 1 btc. 
The total supply of all sat units is 21 quadrillion.
### Schedule
### Sybil Attack
## T
### Taint
### Taker
A market taker is someone who buys bitcoin liquidity from the market, taking up
[market makers](#maker) on their offers. You can see active offers in the [order book][orderbook].

You will automatically take offers when running the scheduler via the ["Jam"
tab][i/earn].

[:octicons-arrow-right-24: Earn Screen][i/earn]

[i/earn]: interface/02-jam.md
[orderbook]: market/orderbook.md

### Timechain
A timestamped and linked list of blocks. Anyone can create a new block, but each block must have 
sufficient proof of work, making it difficult to create new blocks.
### Timelock
A UTXO can be locked up by a script which defines that said UTXO can only be spent in a block that 
is higher than a certain value. This makes coins unspendable before a specific time.
## U
### Unspent Transaction Output
The tip of the chain of signatures which originates in a coinbase output. It's a "coin" that
has not yet been spent and can still be spend.
### UTXO
Short for [Unspent Transaction Output](#unspent-transaction-output).
