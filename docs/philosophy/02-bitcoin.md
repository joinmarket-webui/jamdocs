# Bitcoin

There is much to be said about Bitcoin and why it was created. Many books have
been written, much speculation was and is still being had in terms of Satoshi's
"true" vision and motivation.[^brc]

Undoubtedly, there are certain values embodied in the Bitcoin system—certain
opinions that are embedded in the code, expressing how things should be done and
what should be avoided. Nothing makes this more clear than [the
announcement post][announcement] of Bitcoin, written by Satoshi himself.

Below are some highlights that are particularly relevant:

> I've developed a new open source **P2P** e-cash system called Bitcoin. It's
> completely decentralized, with **no central server or trusted parties**,
> because everything is based on crypto proof instead of trust.

No central server. No trusted third party. Peer-to-peer (P2P), instead of
client-server or master-slave.

Thanks to strong cryptography, trust in third parties can be eliminated. When
possible, rely on cryptographic proof instead of trust. Trusted third parties
should be eliminated because (a) they introduce friction and (b) they are
security holes.[^szabo]

[^szabo]: Szabo, 2001. *[Trusted Third Parties Are Security Holes](https://nakamotoinstitute.org/trusted-third-parties/)*

> We have to trust [banks] with our **privacy**, trust them not to let
> identity thieves drain our accounts. [...] Before strong encryption, users had
> to rely on password protection to secure their files, placing trust in the
> system administrator to keep their information private. Privacy could always
> be overridden by the admin based on his judgment call weighing the principle
> of privacy against other concerns, or at the behest of his superiors.

Privacy. Admins that spy on you. Systems that are designed to spy on you.
Unfortunately, it's almost non-existent in today's world of surveillance
capitalism and dragnet surveillance.

While credit requires identity, money does not. When you can trust the money you
don't have to trust the person. In Bitcoin, there are no persons; only
pseudonymous identities. Identities that are generated cryptographically at
virtually no cost.

> With e-currency based on cryptographic proof, **without the need to trust a
> third party middleman**, money can be **secure** and transactions **effortless**.

No middlemen. Secure and effortless. The reason why your browser will show you a
green lock or a shield when a connection is encrypted is that privacy and
security are two sides of the same coin. Without privacy, your physical security
might be at risk.[^lopp] Without privacy, free thought and free speech are
impeded.

[^lopp]: Jameson Lopp, [List of Known Physical Bitcoin Attacks](https://github.com/jlopp/physical-bitcoin-attacks)

> The result is a distributed system with **no single point of failure.**

No single point of failure. That is one of the main value propositions of
Bitcoin, and what makes it so resilient. No single point of failure is what
makes Bitcoin resistant to censorship, and it is also what sets JoinMarket
apart.

[^brc]: A selection of books is available in the *Bitcoin and Cypherpunk History* section of [bitcoin-resources.com/books](https://bitcoin-resources.com/books/#bitcoin-and-cypherpunk-history)

[:octicons-arrow-right-24: JoinMarket][joinmarket]

[joinmarket]: /philosophy/03-joinmarket
[announcement]: https://satoshi.nakamotoinstitute.org/posts/p2pfoundation/1/
