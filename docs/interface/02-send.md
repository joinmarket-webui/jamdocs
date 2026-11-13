# Send

Use the 'Send' tab to send funds to an external address or to one of your own
jars.

Jam defaults to
[collaborative transactions][ct] when sending, which enhances your privacy and
security.

[ct]: /glossary/#collaborative-transaction
[jars]: /glossary/#jar

![](../assets/interface/send.png#only-dark)

![](../assets/interface/send-light.png#only-light)

Under 'Send from', select the [jar][jars] you want to send from. Only one jar can
be selected, and only non-frozen funds will be considered for the transaction.
Click 'Select UTXOs' to choose which UTXOs of that jar may be used. Unselected
UTXOs will be frozen and can be unfrozen later at any time.

Enter the 'Recipient' address, or use the buttons next to the field:

- **Scan QR Code**: scan an address with your camera. You can also paste an
  address or upload an image of a QR code.
- **Choose Jar**: send to a new address of one of your own jars. The jar you are
  sending from cannot be selected.

If you paste a payment request (e.g. `bitcoin:<address>?amount=0.001`), the
amount is filled in for you.

Enter the 'Amount' in sats, or use the 'Sweep' button to send all non-frozen
funds of the selected jar. Click 'Clear' to enter an amount again.

!!! Warning
    Using the _Sweep_ button to empty a jar can significantly override the set fee limit.
    This is because of the lack of change output.
    The (default) maximum difference is 80% and can be changed with the
    'Collaborative sweep fee change' setting under 'Adjust fee limits' in the
    [Settings][settings].

Use the
[Sweep tab][sweep] to sweep all non-frozen funds of your wallet (all jars) to external
addresses.

Click 'Send' to review the transaction. The 'Confirm payment' dialog shows the
jar you send from, the recipient, the amount, the number of collaborators, and
the fees. The collaborator fee shown is an upper limit; the actual fee is likely
to be much lower. Click 'Confirm' to send.

![](../assets/interface/send-confirm.png#only-dark)

![](../assets/interface/send-confirm-light.png#only-light)

## Sending options

Open the _Sending options_ dropdown to configure the transaction:

- **Send as collaborative transaction**: enabled by default. If you disable it,
  the button changes to 'Send without privacy improvement'.
- **Number of collaborators**: a random number from 8 to 10 by default. You can
  choose any value from the minimum set in JoinMarket (`minimum_makers`, 4 by
  default) up to 20. Below the slider, Jam shows the maximum collaborator fees
  you will pay, based on your fee limits.
- **Mining fee**: either a block target (default: 3), which uses Bitcoin Core's
  fee estimation, or a fixed fee rate in sats/vByte.

The higher the
number of collaborators, the larger your [anonymity set][anonset], but this will come with higher fees.

[anonset]: /glossary/#anonymity-set

![](../assets/interface/send-sending-options.png#only-dark)

![](../assets/interface/send-sending-options-light.png#only-light)

> The values in the images are example values, set your own ones correctly!

## Things to note

- For a collaborative transaction, the UTXOs you send from need at least 5
  confirmations. Otherwise Jam shows a warning, and the button changes to
  'Ignore warning & try send anyway'.
- If your local [orderbook][orderbook] has no offers, Jam warns you that no
  active makers were found and that the collaborative transaction might fail.
- You cannot send a collaborative transaction while [Earn][earn] is active. Stop
  the service first.
- If the jar you send from contains a [fidelity bond][fb] that is not frozen,
  freeze it first (e.g. by deselecting it under 'Select UTXOs').
- When a collaborative transaction ends, Jam shows 'Collaborative flow stopped'.
  Jam cannot always tell whether the transaction went through, so check your
  [wallet][wallet] to confirm.

After you made your first collaborative transaction with one of your jars as the
recipient, you are ready to earn.

[:octicons-arrow-right-24: Earn][earn]

[earn]: 03-earn.md
[sweep]: 04-sweep.md
[settings]: settings.md
[wallet]: wallet.md
[fb]: fidelity-bonds.md
[orderbook]: ../market/orderbook.md
