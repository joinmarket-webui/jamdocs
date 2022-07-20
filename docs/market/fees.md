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

[maker]: /glossary/#maker
[mempool]: /glossary/#mempool
[earn]: /interface/03-earn

## Maker Fees

## Mining Fees

## Earning Fees

As mentioned above, you can use the [Earn][earn] tab to earn maker fees
yourself.[^fn-home-mining] Simply choose an offer type, select how many fees you would like to earn, and press "Start Earning!"

Make sure to check the [orderbook][orderbook] to compare your offer with current
market rates. If your offer isn't competetive, nobody will take you up on it and
you will earn zero sats.

[orderbook]: orderbook.md

[^fn-home-mining]: You can also mine yourself to earn mining fees, but that's outside of the scope of Jam. We refer the curious reader to [econoalchemist's home mining guide](https://archive.ph/TLIay) instead.

[:octicons-arrow-right-24: FAQ: How much can I earn?][faq-earn]

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
