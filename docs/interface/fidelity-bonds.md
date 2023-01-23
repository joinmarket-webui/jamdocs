# Fidelity Bonds

A fidelity bond is a mechanism which ensures that market actors act honestly. It
is a protection mechanism against various kinds of attacks that involve the
creation of fraudulent identities.

[:octicons-arrow-right-24: Glossary: Fidelity Bond][glossary]

[glossary]: /glossary/#fidelity-bond

!!! warning
    It is impossible to move or spend funds that are locked in a fidelity bond
    before the bond expires. They **cannot be used in collaborative transactions 
    (neither as [taker][taker] nor as [maker][maker])**
    as fidelity bonds are time-locked by the Bitcoin protocol.

You can create a fidelity bond via the [Earn][earn] screen. It involves the following steps:

1. Set expiration date (which defines the bond's duration)
2. Select a [jar][jar] as funding source
3. Select a UTXO, preferably one labeled `cj-out`

After that, you will be asked to review the bond configuration. If everything
looks right, you can create the fidelity bond which will [time-lock your
funds][timelock] for the set duration.

[earn]: /interface/03-earn/
[jar]: /glossary/#jar
[timelock]: /glossary/#timelock
[maker]: /glossary/#maker
[taker]: /glossary/#taker

---

Refer to the screenshots below to understand the steps in more detail:

![](../assets/interface/fb01-time.png#only-dark)

![](../assets/interface/fb01-time-light.png#only-light)

![](../assets/interface/fb02-jar.png#only-dark)

![](../assets/interface/fb02-jar-light.png#only-light)

![](../assets/interface/fb03-utxos.png#only-dark)

![](../assets/interface/fb03-utxos-light.png#only-light)

![](../assets/interface/fb04-frozen.png#only-dark)

![](../assets/interface/fb04-frozen-light.png#only-light)

![](../assets/interface/fb05-overview.png#only-dark)

![](../assets/interface/fb05-overview-light.png#only-light)


[:octicons-arrow-right-24: Orderbook][orderbook]

[:octicons-arrow-right-24: Earn][send]

[orderbook]: /market/orderbook
[send]: 03-earn.md
