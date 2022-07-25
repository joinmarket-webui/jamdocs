# Cheat Sheet

While everyone will use Jam differently, here is one way you can think about the
general application flow:

![](../assets/jam-flow.png)

Some of your [UTXOs][utxo] might be chunky and identifiable, like whole or large
pieces of fruit. Once you make delicious jam out of them, they are less chunky
and less identifiable. You are free to offer your fruits to others so they can
make jam more easily.

Without the fruity metaphor: to increase the privacy and fungibility of your
funds, you should use Jam as both a [market maker][maker] ('Earn' tab) and a
[taker][taker] ('Jam' tab). Use a Jar's sweep functionality or the [Jam
Scheduler][jam] to transfer funds out of Jam, e.g. to move all your funds to
cold storage or to use them to open lightning channels. If you want to pay
others for goods and services, use [send][send].

[utxo]: /glossary/#utxo
[maker]: /glossary/#maker
[taker]: /glossary/#taker

## First Use

1. [Receive][receive] sats to fund your wallet
2. [Jam][jam] it up with the Jam scheduler
3. [Earn][earn] sats by offering liquidity[^fnfb]
4. [Send][send] a collaborative transaction
5. Rinse and repeat!

[:octicons-arrow-right-24: Receive][receive]

[^fnfb]: Make sure to create a [fidelity bond][fb] to increase the chances of your offer being taken.

[receive]: 01-receive.md
[jam]: 02-jam.md
[earn]: 03-earn.md
[send]: 04-send.md
[fb]: fidelity-bonds.md

## Things to Note

Some processes in Jam might take a long time to complete. Further, **Jam is
considered beta software.** While JoinMarket is tried and tested, Jam is new and
things might break. Use with caution. Please report any issues [directly on
GitHub](https://github.com/joinmarket-webui/joinmarket-webui/issues/new).

Make sure to understand the privacy fundamentals, best practices, as well as the
motivation behind this software. Also, understand that you are participating in
a free market. How much you can earn and how many fees you have to pay depends
on market conditions.

[:octicons-arrow-right-24: Motivation][motivation]

[:octicons-arrow-right-24: Privacy Fundamentals][fundamentals]

[:octicons-arrow-right-24: Fees][fees]

[motivation]: /philosophy/00-motivation
[fundamentals]: /privacy/01-fundamentals
[fees]: /market/fees
