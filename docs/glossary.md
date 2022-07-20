# Glossary

Unfortunately, there is no way to talk about bitcoin privacy and the intricacies
of Joinmarket without a little bit of special lingo.

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

A bitcoin address—also called bitcoin invoice address[^bip179]—is a string of
characters that you send to someone else to receive funds.

There are currently three invoice address formats in use:

- [P2PKH](#p2pkh) starting with `1`
- [P2SH](#p2sh) starting with `3`
- [Bech32](#bech32) starting with `bc1`

For more details please refer to the [Bitcoin Wiki][wiki-addr]. Jam defaults to
Bech32 addresses.

[wiki-addr]: https://en.bitcoin.it/wiki/Invoice_address

[^bip179]: The term *invoice* is proposed in [BIP-179](https://github.com/bitcoin/bips/blob/master/bip-0179.mediawiki) as an alternative.

### Address Reuse

### Address Type

## B
### Base Layer

[:octicons-arrow-right-24: Layered Money][layered-money]

[layered-money]: https://bitcoin-resources.com/books/layered-money

### Batch Transaction

A batch transaction is a transaction that combines multiple real-world
transactions into one on-chain transaction. It has multiple inputs and multiple
outputs. Different parties may control one or multiple inputs and receive one or
multiple outputs.

[:octicons-arrow-right-24: Privacy Fundamentals][fundamentals]

[fundamentals]: privacy/01-fundamentals.md

### Bech32

Bech32 is an [invoice address](#address) format. It was specified in [BIP
173][bip173] and is used for both SegWit and Taproot addresses.

[bip173]: https://en.bitcoin.it/wiki/BIP_0173

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

A CoinJoin is a collaborative transaction that combines inputs from multiple
parties. The purpose of a CoinJoin is to combine inputs and create outputs in
ways that improves the financial privacy of participants, without relying on a
trusted third party for custody. When done correctly, a CoinJoin breaks any
deterministic links between transactions, moving the process of chainalysis from
quasi-deterministic with high certainty to probabilistic with low certainty.

CoinJoins break the [common input ownership
heuristic](#common-input-ownership-heuristic) that is used by chain analysis
companies to de-anonymize actors. The concept was introduced in 2013 by Gregory
Maxwell.[^gmaxwell1][^gmaxwell2]

All CoinJoins are collaborative transactions. The two main types of CoinJoins
are equal-output and unequal-output. Other differences might be interactivity
and number of participants.

[^gmaxwell1]: [I taint rich!](https://bitcointalk.org/?topic=139581) Maxwell, Jan. 2013
[^gmaxwell2]: [CoinJoin: Bitcoin privacy for the real world](https://bitcointalk.org/?topic=279249) Maxwell, Aug. 2013


### Collaborative Transaction

A collaborative transaction is a bitcoin transaction that is initiated and
signed by multiple participants. A collaborative transaction involves two or
more parties and is thus always a [batch transaction](#batch-transaction). All
CoinJoins are collaborative transactions.

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

"Doxxic" change is any leftover change that is going back to you when
participating in an equal-output CoinJoin. Doxxic change is problematic because
it can potentially destroy any privacy benefits gained from a CoinJoin.  

The word is a combination of "toxic" and "doxxing." Doxxing is the act of finding
out the legal identity (or similar identifiying information) of a pseudonymous
entity. Bitcoin is a pseudonymous system and does not require the *True
Names*[^true-names] of participants.

[^true-names]: Vernor Vinge, 1981, [True Names](https://bitcoin-resources.com/books/true-names)

The concept of "doxxic change" does not exist in Jam, since Joinmarket does not
produce doxxic change.

## E
### Eclipse Attack
### Equal-Output CoinJoin

...also referred to as equal-amount or equal-value CoinJoin transactions.

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

[^mixdepths]: What we call "jars" are usually called "mixdepths" in Joinmarket. They are also referred to as "pockets" and "accounts" in some of the older parts of the Joinmarket documentation.

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
### P2PKH
Short for pay-to-public-key-hash.

[:octicons-arrow-right-24: Learn Me A Bitcoin: P2PKH][p2pkh]

[p2pkh]: https://learnmeabitcoin.com/technical/p2pkh

### P2SH
Short for pay-to-script-hash.

[:octicons-arrow-right-24: Learn Me A Bitcoin: P2SH][p2sh]

[p2sh]: https://learnmeabitcoin.com/technical/p2sh

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
### SNICKER
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

The data structure of Bitcoin's [base layer](#base-layer).

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
