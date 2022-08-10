# JoinMarket

JoinMarket, just like Bitcoin, doesn't have a single point of failure. It can be
understood as a protocol that facilitates certain kinds of collaborative
transactions—CoinJoins—via an open market.

Creating collaborative transactions is not a technical problem, but a problem of
coordination. Someone has to bring the participants together, coordinate time
and place, as well as amounts and fees.

Usually, this problem is solved by a central coordinator. In the
best case, the central coordinator is non-custodial and blinded, meaning that
user funds are never at risk, and the amount of information the central
coordinator can obtain is minimal. However, even in this optimal case, the
central coordinator is still a single point of failure.

In addition to being a central point of failure, any central coordinator usually
charges a fee for the coordination service, which means that it is an entity
that is making money. In most cases, this entity is a company that can be
pressured and subverted, as has happened in the past. Even without any outside
pressure, an economic entity might make certain decisions against the best
interest of its users, just out of self-preservation alone.[^wasabi]

[^wasabi]: See, for example: [https://archive.ph/C53tk](https://archive.ph/C53tk), [https://archive.ph/hIYJO](https://archive.ph/hIYJO)

JoinMarket provides a decentralised alternative to these central coordination
services. It is not a central entity, it is software that is coordinating the
actions of multiple peers, just like Bitcoin. JoinMarket is neutral, meaning
that the system itself is not charging its users to use the software for
coordination. Fees are earned by [market makers][maker], i.e. those who are
willing to provide liquidity to the open market. Consequently, JoinMarket is not
a financial entity. Only the users are making money. JoinMarket is not.


[:octicons-arrow-right-24: Glossary][glossary]

JoinMarket is a tried and tested CoinJoin implementation, having been actively
used on Bitcoin's mainnet since 2015.[^jmwiki] Because of its lack of a
centralised coordinator, it works a bit differently than other CoinJoin
implementations.[^btcmedia] You can read about the details of JoinMarket's
design in the [high-level
design](https://github.com/JoinMarket-Org/JoinMarket-Docs/blob/master/High-level-design.md)
document of the JoinMarket docs.

[^jmwiki]: See the Bitcoin Wiki for [https://en.bitcoin.it/wiki/JoinMarket](https://en.bitcoin.it/wiki/JoinMarket)
[^btcmedia]: *Shinobi*, 2021 [JoinMarket Vs. ZeroLink](https://archive.ph/2r2mD)

JoinMarket is free and open-source software, which means that anyone is free to
use, inspect, and modify the software.

[:octicons-arrow-right-24: Free Software][free-software]

Because of its decentralised nature, and thus the lack of funds and focused
effort that a central company structure allows, the JoinMarket software was,
historically, a bit difficult to set up and use. We hope that the efforts around
*Jam* will make it a bit easier.

[:octicons-arrow-right-24: Installation][installation]

[free-software]: /philosophy/01-free-software
[installation]: /software/installation
[maker]: ../glossary.md#maker
[glossary]: ../glossary.md
