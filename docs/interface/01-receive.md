# Receive

Use the 'Receive' tab to receive funds.

![](../assets/interface/receive.png#only-dark)

![](../assets/interface/receive-light.png#only-light)

The address stays hidden until you click 'Reveal address'. Click 'Get new
address' to generate another one. You can scan the QR code with a mobile
wallet or copy/paste the [address][address] to receive funds from someone
else, or send funds from another wallet yourself.

!!! info
    Jam uses [jars][jars] under the hood to separate funds into disconnected
    containers. Think of jars as different pockets in your wallet, or different
    identities. The default jar to receive funds is **Jar A**.

To receive to a specific jar, open 'Receive options' and select it under
'Receive to'. The badge below the address shows which jar it belongs to.

If you enter an amount (in sats), the QR code becomes a BIP21 payment request.
'Copy' and 'Share' then hand out the full payment request instead of just the
address.

Once you have funded your wallet, you can use the 'Send' tab to do
a collaborative transaction.

[jars]: /glossary/#jar
[address]: /glossary/#address

[:octicons-arrow-right-24: Send][send]

[send]: 02-send.md
