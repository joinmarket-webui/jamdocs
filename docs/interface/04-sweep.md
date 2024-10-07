# Sweep

Use the 'Sweep' tab to empty your wallet using the scheduler (a.k.a. tumbler). The scheduler will
execute a series of collaborative sweep transactions through the mixdepths (jars) with randomized parameters, like the time between the transactions and the fees. Eventually it will send your funds to the three entered destination addresses.

![](../assets/interface/jam.png#only-dark)

![](../assets/interface/jam-light.png#only-light)

Once the scheduler is active you will see a green indicator light, which means
that the scheduler service is running. The service will [take][taker] any
matching offer automatically.

[taker]: /glossary/#taker

![](../assets/interface/jam-running.png#only-dark)

![](../assets/interface/jam-running-light.png#only-light)

You can stop the scheduler at any time.

[:octicons-arrow-right-24: Cheatsheet][cs]

[cs]: 00-cheatsheet.md
