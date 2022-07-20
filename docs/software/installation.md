# Installation

Jam can be installed as an app / service / plug-in with:

- [Raspiblitz](https://github.com/rootzoll/raspiblitz)
- [Umbrel](https://umbrel.com/)
- [Citadel](https://github.com/runcitadel)
- [BTCPay Server](https://btcpayserver.org/)

You should be able to install Jam with one click if you are running any of the
above. You can also do a manual installation.

## Install as a Package

TODO

### ...with Umbrel

Jam can be installed directly from the [Umbrel](https://umbrel.com/) app store:

- Open the Umbrel interface (`umbrel.local` in your browser)
- Find "Jam" in the Umbrel app store
- Click install

Done!

### ...with Citadel

Jam can be installed directly from the [Citadel](https://runcitadel.space/) app store:

- Open the Citadel interface (`citadel.local` in your browser)
- Find "Jam" in the Citadel app store
- Click install

Done!

### ...with Raspiblitz

You can install Jam via [the
CLI](https://github.com/rootzoll/raspiblitz/pull/2747) in RaspiBlitz v1.7.2 and
up. To install it, exit the Raspiblitz menu and run:

```sh
patch
config.scripts/bonus.joinmarket-webui.sh on
```

To get information on how to connect to Jam run:

```sh
config.scripts/bonus.joinmarket-webui.sh menu
```

We're aiming for a more stable version to be available as a one-click app
install with [RaspiBlitz
v1.8.0](https://github.com/rootzoll/raspiblitz/issues/2891).

### ...with BTCPay Server

TODO

## Manual Installation

TODO
