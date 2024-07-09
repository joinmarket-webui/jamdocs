# Send

Use the 'Send' tab to send funds to someone or to one of jars. Jam defaults to
[collaborative transactions][ct] when sending, which enhances your privacy and
security.

!!! info
    Jam uses [jars][jars] under the hood to separate funds into disconnected
    containers. Think of jars as different pockets in your wallet, or different
    identities.

[ct]: /glossary/#collaborative-transaction
[jars]: /glossary/#jar

You can choose the number of collaborators in the send options. The higher the
number of collaborators, the larger your [anonymity set][anonset].

[anonset]: /glossary/#anonymity-set

![](../assets/interface/send.png#only-dark)

![](../assets/interface/send-light.png#only-light)

Use the 'Sweep' button in the amount field to empty a single jar, or use the
[Sweep tab][sweep] to sweep all non-frozen funds of your wallet to external
addresses.

!!! Warning
    Using the _Sweep_ button to empty a jar can significantly override the set fee limit.
    This is because of the lack of change output.
    The (default) maximum difference is 80%.

After you made your first collaborative transaction with one of your jars as the
recipient, you are ready to earn.

[:octicons-arrow-right-24: Earn][earn]

[earn]: 03-earn.md
[sweep]: 04-sweep.md
