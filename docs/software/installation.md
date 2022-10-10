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

!!! info
    If you are asked to enter a username and password after installation, enter
    "citadel" as the username and the password that Citadel provides for you.

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

There are three ways to set up Jam manually:

1. [Run the standalone docker image](#with-docker-image) (easiest)
2. [Connect Jam to a local JoinMarket instance](#connecting-to-a-local-joinmarket-instance)
3. [Connect Jam to a remote JoinMarket instance](#connecting-to-a-remote-joinmarket-instance)

All these methods have benefits and drawbacks. One method is easy, but you
have less control. Others give you more flexibility, but require several
manual steps. Choose the method that works best for you.
The rule of thumb is: Always prefer to build and verify the applications
locally yourself if you have the necessary technical skills to do so.

### ...with docker image

Using docker is the easiest way to run JoinMarket with Jam.
However, a disadvantage is that you have to trust the developers and it is
rather difficult to verify the authenticity.

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
        --env JM_RPC_PORT="API_PORT_OF_BITCOIN_CORE" \
        --env JM_RPC_USER="BTC_RPC_USERNAME" \
        --env JM_RPC_PASSWORD="****************" \
        --env APP_USER="JAM_USERNAME" \
        --env APP_PASSWORD="****************" \
        --publish "8080:80" \
        ghcr.io/joinmarket-webui/jam-standalone:v0.1.0-clientserver-v0.9.8
```

If you are connecting to a local Bitcoin Core node, use the above command but
add param `--add-host=host.docker.internal:host-gateway` and set the environment
variable `JM_RPC_HOST` to `host.docker.internal`.

After starting the container, Jam can be accessed by visiting
`http://localhost:8080` in your browser.

Make sure to replace the above dummy values for IP, port, RPC username, and RPC
password with values appropriate to your setup. For example:

```sh
docker run --rm  -it \
        --env JM_RPC_HOST="192.168.1.1" \
        --env JM_RPC_PORT="8332" \
        --env JM_RPC_USER="bitcoin" \
        --env JM_RPC_PASSWORD="n5a___YOUR_RPC_PASSWORD___yNA" \
        --env APP_USER="jam" \
        --env APP_PASSWORD="AvQ___YOUR_APP_PASSWORD___iCw" \
        --publish "8080:80" \
        ghcr.io/joinmarket-webui/jam-standalone:v0.1.0-clientserver-v0.9.8
```

Please use your password manager or something like `openssl rand -base64 32` to
generate strong passwords.


### ...connecting to a local JoinMarket instance

Prerequisites:

- Bitcoin Core
- Tor
- JoinMarket
- [docker](#with-docker) or [node & npm](#without-docker)

If you have [successfully installed JoinMarket][jm-install-docs], generate a
self-signed SSL certificate in JoinMarket's working directory, then navigate
to JoinMarket's root directory and start `jmwalletd` and `ob-watcher`.

In JoinMarket's working directory (e.g. `~/.joinmarket/`):
```sh
mkdir ssl/ && cd "$_"
openssl req -newkey rsa:4096 -x509 -sha256 -days 3650 -nodes \
  -out cert.pem -keyout key.pem \
  -subj "/C=US/ST=Utah/L=Lehi/O=Your Company, Inc./OU=IT/CN=example.com"
```

In JoinMarket's root directory:

```sh
. jmvenv/bin/activate
python3 scripts/jmwalletd.py
```

```sh
. jmvenv/bin/activate
python3 scripts/obwatch/ob-watcher.py --host=127.0.0.1
```

!!! info
    Bind both services to `127.0.0.1` instead of `0.0.0.0` to not expose them to
    your local network.

It is recommended to install both services as system services, e.g. via
`systemd`. Also, see your `joinmarket.cfg` config file and adapt the values to
your needs. It is generally advised to leave all settings at their default
values. The above commands all use the standard values (e.g. for ports).

[jm-install-docs]: https://github.com/JoinMarket-Org/joinmarket-clientserver/blob/master/docs/INSTALL.md


!!! info
    Please make sure to provide values for config variables `max_cj_fee_abs`
    and `max_cj_fee_rel` in `joinmarket.cfg`. Set them to values you feel
    comfortable with.

Once `jmwalletd` and `ob-watcher` are running, the last thing to do is to launch
Jam. You can either run the docker image, or download the source code and run it
via npm. If you run Jam via the `docker` image, you will have to make sure that
the "internal" host is used:

```sh
# Option 1: run Jam via docker

docker run --rm  -it \
        --add-host=host.docker.internal:host-gateway \
        --env JAM_JMWALLETD_HOST="host.docker.internal" \
        --env JAM_JMWALLETD_API_PORT="28183" \
        --env JAM_JMWALLETD_WEBSOCKET_PORT="28283" \
        --env JAM_JMOBWATCH_PORT="62601" \
        --publish "8080:80" \
        ghcr.io/joinmarket-webui/jam-ui-only:v0.1.0-clientserver-v0.9.8
```

```sh
# Option 2: run Jam via npm

git clone https://github.com/joinmarket-webui/jam.git --branch v0.1.0 --depth=1
cd jam/
npm install
npm start
```

!!! success
    Always make sure to [verify the code][verification] that you run.

When successful, a browser pointing to `http://localhost:3000` should
automatically be opened.


### ...connecting to a remote JoinMarket instance

Do all the same steps as in [Connecting to a local JoinMarket instance](#connecting-to-a-local-joinmarket-instance)
but before starting Jam (either directly or with docker), create a ssh tunnel
to the remote host.

```sh
ssh yourhost.local -v -o GatewayPorts=true -N \
  -L 28183:127.0.0.1:28183 -L 28283:127.0.0.1:28283 -L 62601:127.0.0.1:62601
```

---

Once you managed to install Jam, make sure to understand how to use it.

[:octicons-arrow-right-24: First Use][cheatsheet]


[cheatsheet]: /interface/00-cheatsheet
