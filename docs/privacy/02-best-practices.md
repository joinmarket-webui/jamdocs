# Best Practices

As with every­thing in Bitcoin, taking control of your privacy is
a gradual, step-by-step process. Learning about and imple­menting these
best practices takes patience and respon­si­bility, so do not be
discour­aged if it seems overwhelming at first. Every step, no matter
how small, is a step in the right direction.

## Take Action

The following are action­able steps you can take to increase
your privacy:

-   [Self-custody your coins](#self-custody-your-coins)
-   [Do not reuse addresses](#do-not-reuse-addresses)
-   [Minimize exposure to KYC](#minimize-exposure-to-kyc) (Know Your Customer)
-   [Minimize exposure to third parties](#minimize-exposure-to-third-parties)
-   [Run your own node](#run-your-own-node)
-   [Use the Light­ning Network for small transactions](#use-the-lightning-network-for-small-transactions)
-   [Do not use public block explorers](#do-not-use-public-block-explorers)
-   [CoinJoin early and often](#coinjoin-early-and-often)

## Self-custody your coins

Not your keys, not your bitcoin. If someone
else is holding your bitcoin for you, they know every­thing there is to
know about these coins: amounts, trans­ac­tion histo­ries, future
trans­ac­tions, etc. Taking self-custody of your coins is the first and
most essen­tial step.

[:octicons-arrow-right-24: Bitcoin Wallet Guide][wallets]

[wallets]: https://bitcoiner.guide/wallet/

## Do not reuse addresses

Reusing addresses destroys the privacy of
both the sender and the receiver. It should be avoided at all costs.

[:octicons-arrow-right-24: Address Reuse][reuse]

[reuse]: /glossary/#address-reuse

## Minimize exposure to KYC

Linking your real-world identity to your
bitcoin addresses is a neces­sary evil in most juris­dic­tions. While
the effec­tive­ness of these regula­tions is question­able, the
impli­ca­tions for regular users are mostly negative as a multi­tude of
data leaks have shown. If you choose to use KYC on- or off-ramps, make
sure that you under­stand the relation­ship between yourself and the
service in question. You are trusting this service with your personal
data, including the future safety of this data.
If you want to skip KYC entirely, have
a look at no-KYC only.

[:octicons-arrow-right-24: No KYC Only][nokyc]

[nokyc]: https://bitcoiner.guide/nokyconly/

## Minimize exposure to third parties

Trusted third parties are security holes. If you can rely on yourself instead of
trusted third parties, you should.

[:octicons-arrow-right-24: Trusted Third Parties Are Security Holes][ttp]

[ttp]: https://nakamotoinstitute.org/trusted-third-parties/

## Run your own node

Not your node, not your rules. Running your own node is essen­tial to use
Bitcoin in a private manner. Every inter­ac­tion with the Bitcoin network is
facil­i­tated by a node. If you are not in control of this node, whatever you
are doing is seen by the node you are inter­acting with. This means whoever is
in control of the node is able to see what you are doing. The bitcoiner node
guide is a great resource to get you started.

[:octicons-arrow-right-24: Bitcoiner Node Guide][node-guide]

[node-guide]: https://bitcoiner.guide/node/

## Use the Light­ning Network for small trans­ac­tions

The off-chain nature of the light­ning network increases the trans­ac­tional
privacy of its users without having to jump through too many hoops. While it is
still early, the absolutely reckless days of the light­ning network are likely
behind us. Using it for small- and medium-sized trans­ac­tions can help improve
both your privacy as well as your fee footprint.

[:octicons-arrow-right-24: Bitcoiner Lightning Guide][ln-guide]

[ln-guide]: https://bitcoiner.guide/lightning/

## Do not use public block explorers

Looking up addresses in public block explorers will link those addresses with
your IP, which, in turn, can be linked to your real identity. Software packages
like Umbrel, Citadel, RaspiBlitz, and BTCPay Server make it easy to run your own
block explorer. If you have to use a public block explorer, make sure to mask
your IP by connecting to them via [Tor](https://www.torproject.org/download/),
or at least use a VPN.

[:octicons-arrow-right-24: Mempool Instances][mempool]

[mempool]: /market/mempool/#mempool-instances

## CoinJoin early and often

Because Bitcoin is forever, using trans­ac­tional best practices such as
collab­o­ra­tive CoinJoin trans­ac­tions will ensure that your privacy is
protected going forward. While CoinJoin trans­ac­tions are nuanced,
user-friendly software exists to help you create and automate these kinds of
trans­ac­tions. For example, there is JoinMarket, which, thanks to projects like
[JoininBox](https://github.com/openoms/joininbox) and [Jam](/), can be set up
quite easily on your own node.

[:octicons-arrow-right-24: Getting Started with Jam][getting-started]

[:octicons-arrow-right-24: Installation][installation]

[getting-started]: /
[installation]: /software/installation/


---

<small>
The above is a slightly modified version of [Bitcoin Privacy: Best
Practices"](https://dergigi.com/privacy) by Gigi, released originally under a
[CC BY-SA 4.0 license][ccbysa] and modified for Jam by the author.

[ccbysa]: https://creativecommons.org/licenses/by-sa/4.0/
</small>
