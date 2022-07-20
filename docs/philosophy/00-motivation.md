# Motivation

> There is a sacred realm of privacy for every man and woman where he makes his
> choices and decisions — a realm of his own essen­tial rights and liber­ties into
> which the law, gener­ally speaking, must not intrude.
>
> <cite>Geoffrey Fisher, Archbishop of Canter­bury (1959)</cite>

Jam is a tool, just like bitcoin. Before using it, you should understand how you
could benefit from using it, how it works, and how to use it correctly. In order
to answer the "how" you should also understand the "why" --- why was it created,
and what is the problem in the first place?

To answer that properly, we will have to talk about privacy and financial
privacy in general, and bitcoin privacy in particular:

- Why care about privacy?
- Why use Jam?

## Why Care About Privacy?

> "Privacy is neces­sary for an open society in the electronic age.
> Privacy is not secrecy. A private matter is something one doesn't want
> the whole world to know, but a secret matter is something one doesn't
> want anybody to know. Privacy is the power to selec­tively reveal
> oneself to the world."
>
> <cite>Eric Hughes</cite>

With these powerful words Eric Hughes opened his [Cypher­punk's
Manifesto](https://nakamotoinstitute.org/static/docs/cypherpunk-manifesto.txt)
in 1993. The differ­ence between privacy and secrecy is subtle, but
impor­tant. Choosing to remain private does not imply that one has
secrets or has something to hide. To illus­trate this just realize that
what you do on the toilet or in the bedroom is neither illegal nor
a secret (in most cases), yet you close the door and pull the curtains.

Similarly, how much money you have and where you spend it is not
neces­sarily a secret matter. It should, however, be a private one. Most
would agree that your boss should not know how you choose to spend your
salary.

The impor­tance of privacy is recog­nized by many inter­na­tional
bodies. From the *American Decla­ra­tion of the Rights and Duties of
Man* to the United Nations, it is recog­nized that privacy is
a funda­mental human right worldwide.

> No one shall be subjected to arbitrary inter­fer­ence with his
> privacy, family, home or corre­spon­dence, nor to attacks upon his
> honour and reputa­tion. Everyone has the right to the protec­tion of
> the law against such inter­fer­ence or attacks.
>
> <cite>Article 12, United Nations Decla­ra­tion of Human Rights</cite>

Although Bitcoin was often described as an anony­mous method of payment
by early propo­nents and by the media, it is anything but. Bitcoin is
pseudo­ny­mous at best and as of today making sure that your
pseudo­ny­mous bitcoin identi­ties cannot be linked to your real-world
identity proves diffi­cult for most people. 

Bitcoin is an open system. Its public ledger can be inspected and
studied by everyone. Thus every trans­ac­tion that is embedded in its
proof-of-work chain will be exposed for as long as Bitcoin exists:
eternity. Failing to follow privacy best practices now can poten­tially
have negative reper­cus­sions in the future.

Privacy, like security, is a process and it is diffi­cult, but not
impos­sible. Tools continue to be devel­oped to help preserve privacy
while using Bitcoin and fortu­nately most of these tools become easier
to use over time. Unfor­tu­nately no panacea exists. One has to remain
aware of the trade­offs and follow best practices as they evolve.[^fn1]

[:octicons-arrow-right-24: Free Software][free-software]

[free-software]: /philosophy/01-free-software

[^fn1]: Some parts of the above are based on "[Bitcoin Privacy: Best
Practices](https://dergigi.com/2021/03/14/bitcoin-privacy-best-practices/),
written by Gigi and released under CC BY-SA 4.0 license."

## Why Jam?

Jam is a front-end for [Joinmarket][jmcs], a privacy-focused bitcoin software
that uses a peer-to-peer marketplace to facilitate collaborative transactions,
also called "CoinJoins."[^fn-glossary]

[^fn-glossary]: We prefer to refer to them as [collaborative transactions](../glossary.md), which is more concise and explanatory.

[jmcs]: https://github.com/Joinmarket-Org/joinmarket-clientserver

A collaborative transaction, as the name implies, is a bitcoin transaction that
is done collaboratively by multiple parties. The tricky part of getting a
collaborative transactions done is not technical, but social. It is a problem of
matchmaking, timing, and trust.

Usually, this problem is solved with a central coordinator.

Joinmarket takes a different approach. It allows participants to propose
collaborative transactions to others, creating an open market of buyers and
sellers, which removes the central coordinator from the equation.

[:octicons-arrow-right-24: Joinmarket][joinmarket]

[joinmarket]: /philosophy/03-joinmarket

## Tech Fundamentals

With the motivation and purpose of Jam covered, understanding the
fundamentals of bitcoin in general and bitcoin privacy in particular might be
useful.

[:octicons-arrow-right-24: Privacy Fundamentals][fundamentals]

[fundamentals]: ../privacy/01-fundamentals.md
