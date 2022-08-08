# Verification

All [releases] are signed by one of the Jam [contributors]. As of this writing ([742,834][now]), releases are signed with [dergigi's PGP key][gigi] which has the following fingerprint:

```
8198 A185 30A5 22A0 9561 2439 89C4 A25E 69A5 DE7F
```

To verify a specific release, import the key

```
curl https://dergigi.com/PGP.txt | gpg --import
```

and [verify the git tag][verify-tag] of your local copy:

[verify-tag]: https://git-scm.com/docs/git-verify-tag

```
git verify-tag v0.0.10
```

This should produce an output that contains "good signature" as well as the key fingerprint mentioned above:

```
gpg: Signature made Fr  5 Aug 14:17:58 2022 CEST
gpg:                using RSA key 8198A18530A522A09561243989C4A25E69A5DE7F
gpg: Good signature from "Gigi <dergigi@pm.me>" [unknown]
...
Primary key fingerprint: 8198 A185 30A5 22A0 9561  2439 89C4 A25E 69A5 DE7F
```

---

You can also see that a release was signed properly by clicking on the
verification tag ![Verification badge](../assets/github-checkmark.png) on the
[releases page][releases] on GitHub.


![Verified release on GitHub](../assets/github-verified.png)


[releases]: https://github.com/joinmarket-webui/joinmarket-webui/releases
[contributors]: https://github.com/joinmarket-webui/joinmarket-webui/graphs/contributors
[now]: https://www.blockstream.info/block-height/742834
[gigi]: https://dergigi.com/pgp/
