# Glossary

Unfortunately, there is no way to talk about bitcoin privacy and the intricacies
of JoinMarket without a little bit of special lingo.

This glossary explains some of the concepts and terms used in Jam.

---

<center>
[
[A](#a) ·
[B](#b) ·
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
[O](#o) ·
[P](#p) ·
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

## A

### Address

### Address Type

## B
### Base Layer

### Batch Transaction

### Blockchain

A bad word for [timechain](#timechain).

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

A collaborative transaction is a bitcoin transaction that—you guessed it—is done
collaboratively by multiple participants. A collaborative transaction involves two or more parties and is thus always a [batch transaction](#batch-transaction).

Collaborative transactions break the [common input ownership heuristic](#common-input-ownership-heuristic) that is used by chain analysis companies to de-anonymize actors.
### Change

When using physical cash, spending a $100 bill to pay for a $25 item, you will
get $75 back in change. The reason for this is that you can't spend just a part
of the bill, because ripping off a quarter of it for payment will invalidate the
bill. Consequently, when bills change hands, the whole bill has to be spent, and
an appropriate amount of change goes back to the spender.

Bitcoin works the same way. When sats change hands, the spender has to spend the
whole [UTXO](#utxo). Bitcoin creates the appropriate amount of change
automatically. Because all transactions are recorded transparently and publicly on the [timechain](#timechain),

As of this writing,[^744811] a [simple spend](#simple-spend) is
the most common transaction type, which describes the example given above: one
input ($100 bill) produces two outputs: $25 for the merchant, and $75 in change.
The act of an outside observer guessing whether you bought something for $25 or
$75 (or: who was the customer of the transaction, and who was the merchant) is
what is called [change detection](#change-detection).



[^744811]: Block 744,811

### Change Detection

[:octicons-arrow-right-24: Privacy Fundamentals][fundamentals]

[fundamentals]: privacy/01-fundamentals.md

### CIOH

Short for [Common Input Ownership Heuristic](#common-input-ownership-heuristic).

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

In Jam, a "jar" is a container that holds some [sats](#sats) of yours.[^mixdepths] Jars
exist to segregate your sats into multiple buckets that are disconnected from
each other, which aids privacy. To not risk any privacy degradation, you can
only spend from one jar at a time.

There are 5 jars by default. The default jar to receive funds is *Jar #0*.

[^mixdepths]: What we call "jars" are usually called "mixdepths" in JoinMarket. They are also referred to as "pockets" and "accounts" in some of the older parts of the JoinMarket documentation.

## M
### Maker

A market maker is someone who offers liquidity to the market, to be used by
others for collaborative transactions. You can create an offer via the ["Earn"
tab][i/earn] and become a market maker.

[:octicons-arrow-right-24: Earn Screen][i/earn]

[i/earn]: interface/03-earn.md


### Mempool
## O
### Offchain
### Onchain
## P
### PayJoin
## S
### Sats
Short for *satoshis*, plural of *sat* (satoshi).

A sat the smallest fraction of a bitcoin that can be expressed
[on-chain](#onchain). There are `100,000,000` sats in a bitcoin. There are
multiple currency symbols for a sat emerging. In Jam, the *sat
symbol*[^satsymbol] is used:
<i class="fak fa-satoshisymbol-solidtilt"></i>

[^satsymbol]: [satsymbol.com](https://satsymbol.com/)

### Schedule
### Simple Spend
### Sybil Attack
## T
### Taint
### Taker
A market taker is someone who buys liquidity from the market, taking up
[market makers](#maker) on their offers. You can see active offers in the [order book][orderbook].

You will automatically take offers when running the scheduler via the ["Jam"
tab][i/earn].

[:octicons-arrow-right-24: Earn Screen][i/earn]

[i/earn]: interface/02-jam.md
[orderbook]: market/orderbook.md

### Timechain

[:octicons-arrow-right-24: Bitcoin is Time][time]

[time]: https://dergigi.com/time

### Timelock
### Transaction
### TX
Short for [transaction](#transaction).
## U
### Unspent Transaction Output
### UTXO
Short for [Unspent Transaction Output](#unspent-transaction-output).
