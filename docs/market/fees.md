# Fees

Fees play a crucial role in the incentive structure of both Bitcoin and
JoinMarket. They form the basis for the economic incentives of both systems. In
Bitcoin, you pay fees to a miner in order for your transaction to be included in
a block. The higher the fee you are willing to pay, the higher the likelihood
that your transaction will be included quickly.

In JoinMarket, you pay fees to [market makers][maker] in order to use their
liquidity to your advantage.

Consequently, when you are sending a collaborative transaction in Jam—or when you are using the scheduler to do multiple transactions—you have to pay fees to miners and makers. How high these fees are depends on market and [mempool][mempool] conditions.

Of course, you can offer liquidity yourself via the [Earn][earn] functionality, allowing you to be on the receiving end when it comes to maker fees.

[:octicons-arrow-right-24: Earn][earn]

[maker]: /glossary/#maker
[mempool]: /glossary/#mempool
[earn]: /interface/03-earn

## Paying Maker Fees

When doing a collaborative transaction via the [Send][send] or [Jam][sweep] tabs,
you are taking liquidity offers from others, effectively becoming a [market
taker][taker].

How much you will pay in maker fees depends on the fee market of the current offers. You can get an overview of fees by inspecting the order book.

[:octicons-arrow-right-24: FAQ: How high are the fees that I do have to pay?][faq-fees]

[:octicons-arrow-right-24: Orderbook][orderbook]

[orderbook]: /market/orderbook

[sweep]: /interface/04-sweep
[send]: /interface/02-send
[taker]: /glossary/#taker

## Paying Mining Fees

Just like all users of [onchain][onchain] bitcoin, you will have to pay
transaction fees to miners.

[onchain]: /glossary/#onchain

Note that collaborative transactions are larger, in terms of bytes, than
"regular" bitcoin transactions. Since the cost of an onchain transaction is
determined by its size in bytes—not by value transferred—a collaborative
transaction is more expensive than a [simple spend][ss].


[:octicons-arrow-right-24: FAQ: How high are the fees that I do have to pay?][faq-fees]

[:octicons-arrow-right-24: Mempool][mempool]

[mempool]: /market/mempool
[ss]: /privacy/01-fundamentals/#bitcoin-transaction-types
[faq-fees]: /FAQ/#how-high-are-the-fees-that-i-do-have-to-pay

## Earning Maker Fees

As mentioned above, you can use the [Earn][earn] tab to earn maker fees
yourself.[^fn-home-mining] Simply choose an offer type, select how many fees you would like to earn, and press "Start Earning!"

Make sure to check the [orderbook][orderbook] to compare your offer with current
market rates. If your offer isn't competetive, nobody will take you up on it and
you will earn zero sats.

[orderbook]: orderbook.md

[^fn-home-mining]: You can also mine yourself to earn mining fees, but that's outside of the scope of Jam. We refer the curious reader to [econoalchemist's home mining guide](https://archive.ph/TLIay) instead.

[:octicons-arrow-right-24: FAQ: How much can I earn?][faq-earn]

[:octicons-arrow-right-24: Orderbook][orderbook]

[faq-earn]: /FAQ/#how-much-can-i-earn

## Fee Conversion

All fees are denominated in [sats][sats]. Use one of the tools below to convert them to fiat:

- [Sats converter](https://bitcoiner.guide/convert/)
- [Bitkoin.io](https://bitkoin.io/)

[sats]: /glossary/#sats

---

See also "a note on fees" from the JoinMarket documentation.

[:octicons-arrow-right-24: A Note on Fees][fee-note]

[fee-note]: https://github.com/JoinMarket-Org/joinmarket-clientserver/blob/master/docs/tumblerguide.md#a-note-on-fees
