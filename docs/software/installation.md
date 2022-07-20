# Installation

Jam can be installed as an app / service / plug-in with:

- [Raspiblitz](https://github.com/rootzoll/raspiblitz)
- [Umbrel](https://umbrel.com/)
- [Citadel](https://github.com/runcitadel)
- [BTCPay Server](https://btcpayserver.org/)

You should be able to install Jam with one click if you are running any of the
above. You can also do a manual installation.

## Install as a Package

The easiest way to install Jam is to install it as a package.

!!! info
    Please understand the trade-offs you are making with a one-click install. Make sure to verify the integrity and authenticity of the node software you are running. And, if possible, [verify the Jam installation][verification] yourself.

[verification]: /software/verification

### ...with Umbrel

Jam can be installed directly from the [Umbrel](https://umbrel.com/) app store:

- Open the interface of your Umbrel node <br/> (type `umbrel.local` in your browser)
- Find "Jam" in the Umbrel app store
- Click install
- Done!

### ...with Citadel

Jam can be installed directly from the [Citadel](https://runcitadel.space/) app store:

- Open the interface of your Citadel node <br/> (type `citadel.local` in your browser)
- Find "Jam" in the Citadel app store
- Click install
- Done!

### ...with Raspiblitz

You can install Jam via the command line in RaspiBlitz v1.7.2 and up. To install
it, exit the Raspiblitz menu and run:

```sh
patch
config.scripts/bonus.joinmarket-webui.sh on
```

To get information on how to connect to Jam run:

```sh
config.scripts/bonus.joinmarket-webui.sh menu
```

We hope that Jam will be available as a one-click app
install with [RaspiBlitz
v1.8.0](https://github.com/rootzoll/raspiblitz/issues/2891).

## Manual Installation

TODO

---

Once you managed to install Jam, make sure to understand how to use it.

[:octicons-arrow-right-24: First Use][cheatsheet]


[cheatsheet]: /interface/00-cheatsheet
