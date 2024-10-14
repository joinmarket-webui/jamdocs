# Verification

All [releases] are signed by one of the Jam [contributors]. As of this writing ([863,123][now]), releases are signed with [tbk's PGP key][tbk] which has the following fingerprint:
```
3550 2225 7551 EAB1 26D7  5616 E807 0AF0 053A AC0D
```


### v0.3.0 and above

To verify a specific release, import the key

```
curl https://raw.githubusercontent.com/joinmarket-webui/jam-docker/refs/heads/master/standalone/pubkeys/tbk.asc | gpg --import
```

and [verify the git tag][verify-tag] of your local copy:

```
git verify-tag v0.3.0
```

This should produce an output that contains "good signature" as well as the key fingerprint mentioned above:

```
gpg: Signature made Wed 02 Oct 2024 10:19:46 AM UTC
gpg:                using RSA key 355022257551EAB126D75616E8070AF0053AAC0D
gpg: Good signature from "theborakompanioni (no comment) <theborakompanioni+github@gmail.com>" [unknown]
gpg: WARNING: This key is not certified with a trusted signature!
gpg:          There is no indication that the signature belongs to the owner.
Primary key fingerprint: 3550 2225 7551 EAB1 26D7  5616 E807 0AF0 053A AC0D
```

---

You can also see if a release was signed properly by clicking on the
verification tag ![Verification badge](../assets/github-checkmark.png) next to
the version number on the [releases page][releases] on GitHub.

It should say that _"This tag was signed with the committer’s verified
signature"_ and show you the last 16 characters of the GPG key ID listed above
(`E807 0AF0 053A AC0D`).

### Before v0.3.0

Releases before v0.3.0 were signed with [dergigi's PGP key][gigi] which has the following fingerprint:

```
8198 A185 30A5 22A0 9561 2439 89C4 A25E 69A5 DE7F
```

To verify a specific release, import the key

```
curl https://dergigi.com/PGP.txt | gpg --import
```

and [verify the git tag][verify-tag] of your local copy:

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

[verify-tag]: https://git-scm.com/docs/git-verify-tag
[releases]: https://github.com/joinmarket-webui/jam/releases
[contributors]: https://github.com/joinmarket-webui/jam/graphs/contributors
[now]: https://www.blockstream.info/block-height/863123
[tbk]: https://raw.githubusercontent.com/joinmarket-webui/jam-docker/refs/heads/master/standalone/pubkeys/tbk.asc
[gigi]: https://dergigi.com/pgp/
