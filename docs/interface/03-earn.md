# Earn

Use the 'Earn' tab to earn [sats][sats] by offering liquidity to other market
participants. You will be acting as a [market maker][maker]. Creating a
[fidelity bond][bond] is recommended.
In Jam, takers pay 100% of the mining fees: as a market maker, you will not pay anything. Just profit!

[sats]: /glossary/#sats
[bond]: /glossary/#fidelity-bond

![](../assets/interface/earn.png#only-dark)

![](../assets/interface/earn-light.png#only-light)

### Fidelity Bonds

Make sure to [create a fidelity bond][fb] to increase the chances of your offer
being taken.

A fidelity bond is a mechanism which ensures that market actors act honestly. It
is a protection mechanism against [Sybil attacks][sybil]. A fidelity bond makes
the creation of cryptographic identities costly.

Fidelity bonds improve the privacy guarantees of the whole system and increase
your chance of being chosen as a [market maker][maker] drastically.

Be aware that funds locked in a Fidelity Bond will **not** be included in your offer amount,
so remember to keep additional funds in order to participate as a market maker.

!!! warning
    It is impossible to move or spend funds that are locked in a fidelity bond
    before the bond expires. They **cannot be used in collaborative transactions 
    (neither as [taker][taker] nor as [maker][maker])**
    as fidelity bonds are time-locked by the Bitcoin protocol.

[:octicons-arrow-right-24: Fidelity Bonds][fb]

[fb]: fidelity-bonds.md
[sybil]: /glossary/#sybil-attack
[taker]: /glossary/#taker
[maker]: /glossary/#maker

### Offer Options

There are two types of offers:

1. **Absolute offer:** the fee you are charging is set in absolute terms, e.g. as `250 sats`.
2. **Relative offer:** the fee you are charging is set in percentage terms, e.g. as `0.03%`.

Once you are done earning, you can sweep all funds to an external wallet.

[:octicons-arrow-right-24: Sweep][sweep]

[sweep]: 04-sweep.md
