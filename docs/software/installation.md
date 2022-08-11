# Installation

Jam comes packaged with the following full-node solutions:

- [Umbrel](#with-umbrel)
- [Citadel](#with-citadel)
- [Raspiblitz](#with-raspiblitz)

You should be able to install Jam with one click if you are running any of the
above. You can also do a [manual installation](#manual-installation).

---

## Install as a Package

The easiest way to install Jam is to install it as a package.

!!! info
    Please understand the trade-offs you are making when installing Jam as a
    package. Make sure to verify the integrity and authenticity of the node
    software you are running. And, if possible, [verify the Jam
    installation][verification] yourself.

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

---

## Manual Installation

There are multiple ways to run Jam.
- Using the official standalone docker image (easiest)
- Running Jam connecting to a local JoinMarket instance
- Running Jam connecting to a remote JoinMarket instance

All these methods have benefits and drawbacks. One method is easy, but you
have less control. Others give you more flexibility, but require several
manual steps. Choose the method that works best for you.

### Using docker

Using docker is the easiest way to run Jam and JoinMarket.

Prerequisites:
- Bitcoin Core
- docker

The official [Jam standalone docker image][jam-docker-standalone]
is already bundled with JoinMarket and Tor. It takes care of starting all
subservices (API, Orderbook, etc.) and everything works out-of-the-box.

[jam-docker-standalone]: https://github.com/joinmarket-webui/jam-docker/pkgs/container/joinmarket-webui-standalone

If you are connecting to a remote Bitcoin Core node, run:
```sh
docker run --rm  -it \
        --env JM_RPC_HOST="IP_OF_HOST_RUNNING_BITCOIN_CORE" \
        --env JM_RPC_PORT="8332" \
        --env JM_RPC_USER="MY_BTC_RPC_USER" \
        --env JM_RPC_PASSWORD="****************" \
        --env APP_USER="MY_JAM_USER" \
        --env APP_PASSWORD="****************" \
        --publish "8080:8080" \
        ghcr.io/joinmarket-webui/joinmarket-webui-standalone:v0.0.10-clientserver-v0.9.6
```

If you are connecting to a local Bitcoin Core node, use the above command but
add param `--add-host=host.docker.internal:host-gateway` and set env variable
`JM_RPC_HOST` to `host.docker.internal`.

After starting the container, Jam can be accessed by visiting
`http://localhost:8080` in your browser.

Replace the variables in the commands above to your needs, e.g.:
```sh
docker run --rm  -it \
        --env JM_RPC_HOST="192.168.1.1" \
        --env JM_RPC_PORT="8332" \
        --env JM_RPC_USER="bitcoin" \
        --env JM_RPC_PASSWORD="LXDDdLDf3aOmJ12Dd228i0BQTy5v3LH4" \
        --env APP_USER="jam" \
        --env APP_PASSWORD="v2tjeUwZFtUza1w6Ag0CzPJHgoNHUuxl" \
        --publish "8080:8080" \
        ghcr.io/joinmarket-webui/joinmarket-webui-standalone:v0.0.10-clientserver-v0.9.6
```

### Connecting to a local JoinMarket instance

Prerequisites:
- Bitcoin Core
- Tor
- JoinMarket
- [docker](#with-docker) or [node & npm](#without-docker)

If you have [successfully installed JoinMarket][jm-install-docs], start
`jmwalletd` and `ob-watcher`. It is recommended to install them as system 
services, e.g. via `systemd`.

[jm-install-docs]: https://github.com/JoinMarket-Org/joinmarket-clientserver/blob/master/docs/INSTALL.md

To start the services manually, nagivate to JoinMarket's `scripts`
directory and execute:

```sh
python3 jmwalletd.py
```
and
```sh
python3 obwatch/ob-watcher.py --host=127.0.0.1
```

#### With docker
TODO

#### Without docker

Download, [verify][verification] and run Jam.

```sh
git clone https://github.com/joinmarket-webui/jam.git --branch v0.0.10 --depth=1
cd jam/
npm install
npm start
```

A browser should automatically be opened on `http://localhost:3000`. 

### Connecting to a remote JoinMarket instance

Do all the same steps as in [Connecting to a local JoinMarket instance](#connecting-to-a-local-JoinMarket-instance)
but before starting Jam, create a ssh tunnel to the remote host.

```sh
ssh yourhost.local -v -o GatewayPorts=true -N -L 28183:0.0.0.0:28183 -L 28283:0.0.0.0:28283 -L 62601:0.0.0.0:62601
```

---

Once you managed to install Jam, make sure to understand how to use it.

[:octicons-arrow-right-24: First Use][cheatsheet]


[cheatsheet]: /interface/00-cheatsheet
