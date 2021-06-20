Subject: Re: [PULL][PATCH 0/2] Implement debian packages GPG signing
To: poky@lists.yoctoproject.org
From: "Ferry Toth" <fntoth@gmail.com>
X-Originating-Location: Leiden, South Holland, NL (83.160.74.106)
X-Originating-Platform: Linux Firefox 89
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 20 Jun 2021 13:42:23 -0700
References: <CANNYZj9hVr8KfCXXXDHyubS44fEBPPdtpwHqab7qPGp+Rp9ujg@mail.gmail.com>
In-Reply-To: <CANNYZj9hVr8KfCXXXDHyubS44fEBPPdtpwHqab7qPGp+Rp9ujg@mail.gmail.com>
Message-ID: <29294.1624221743778282039@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ANIqqEV8gD7Lqst0k61w"

--ANIqqEV8gD7Lqst0k61w
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 1, 2019 at 02:19 AM, Alexander Kanavin wrote:

>=20
> Thanks, please send these patches to openembedded-core mailing list.

Yes, Xavier please don't forget to send these patches. They have become es=
sential even now that apt will not allow unsigned repositories.

I have refreshed your patches so they apply to gatesgarth. You can find th=
em here if you are interested: https://github.com/htot/meta-intel-edison/tr=
ee/gatesgarth/utils
0001-gpg-sign-Add-parameters-to-gpg-signature-function.patch
0002-package_manager-sign-DEB-package-feeds.patch

I have one question though. When building the sdk I get:

Some packages could not be installed. This may mean that you have
requested an impossible situation or if you are using the unstable
distribution that some required packages have not yet been created
or been moved out of Incoming.
The following information may help to resolve the situation:

The following packages have unmet dependencies:
signing-keys-dev : Depends: signing-keys (=3D 1.0-r0) but it is not instal=
lable
E: Unable to correct problems, you have held broken packages.

I don't know how to resolve that. Any ideas?

>=20
> Some kind of test case similar to the rpm feed sign test in
> meta/lib/oeqa/selftest/cases/runtime_test.py would be good to have.
>=20
> Alex
>=20
>=20
> On Mon, 1 Apr 2019 at 10:45, Xavier Berger <xavier.berger@bio-logic.net>
> wrote:
>=20
>>=20
>> The following patches add signing feature for debian packages.
>>=20
>>=20
>> The following changes since commit
>> 3bc700a12d4f21a5c7a1575da0972f9f78b4a091:
>>=20
>> mesa: update 19.0.0 -> 19.0.1 (2019-03-29 08:28:53 +0000)
>>=20
>> are available in the git repository at:
>>=20
>> git://push.yoctoproject.org/poky-contrib xberger/deb_sign
>>=20
>> Xavier Berger (2):
>> gpg-sign: Add parameters to gpg signature function
>> package_manager: sign DEB package feeds
>>=20
>> meta/lib/oe/gpg_sign.py | 6 +++++-
>> meta/lib/oe/package_manager.py | 19 ++++++++++++++++---
>> 2 files changed, 21 insertions(+), 4 deletions(-)
>>=20
>> --
>> 2.7.4
>>=20
>> --
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>=20
>

--ANIqqEV8gD7Lqst0k61w
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 1, 2019 at 02:19 AM, Alexander Kanavin wrote:<br />
<blockquote>Thanks, please send these patches to openembedded-core mailing=
 list.</blockquote>
Yes, Xavier please don't forget to send these patches. They have become es=
sential even now that apt will not allow unsigned repositories. <br /><br /=
>I have refreshed your patches so they apply to gatesgarth. You can find th=
em here if you are interested: <a class=3D"moz-txt-link-freetext" href=3D"h=
ttps://github.com/htot/meta-intel-edison/tree/gatesgarth/utils">https://git=
hub.com/htot/meta-intel-edison/tree/gatesgarth/utils</a> <br />0001-gpg-sig=
n-Add-parameters-to-gpg-signature-function.patch <br />0002-package_manager=
-sign-DEB-package-feeds.patch <br /><br />I have one question though. When =
building the sdk I get: <br /><br />Some packages could not be installed. T=
his may mean that you have <br />requested an impossible situation or if yo=
u are using the unstable <br />distribution that some required packages hav=
e not yet been created <br />or been moved out of Incoming. <br />The follo=
wing information may help to resolve the situation: <br /><br />The followi=
ng packages have unmet dependencies: <br />&nbsp;signing-keys-dev : Depends=
: signing-keys (=3D 1.0-r0) but it is not installable <br />E: Unable to co=
rrect problems, you have held broken packages. <br /><br />I don't know how=
 to resolve that. Any ideas? <br />
<blockquote>Some kind of test case similar to the rpm feed sign test in<br=
 />meta/lib/oeqa/selftest/cases/runtime_test.py would be good to have.<br /=
><br />Alex<br /><br /><br />On Mon, 1 Apr 2019 at 10:45, Xavier Berger &lt=
;xavier.berger@bio-logic.net&gt; wrote:<br />
<blockquote><br />The following patches add signing feature for debian pac=
kages.<br /><br /><br />The following changes since commit 3bc700a12d4f21a5=
c7a1575da0972f9f78b4a091:<br /><br />mesa: update 19.0.0 -&gt; 19.0.1 (2019=
-03-29 08:28:53 +0000)<br /><br />are available in the git repository at:<b=
r /><br />git://push.yoctoproject.org/poky-contrib xberger/deb_sign<br /><b=
r />Xavier Berger (2):<br />gpg-sign: Add parameters to gpg signature funct=
ion<br />package_manager: sign DEB package feeds<br /><br />meta/lib/oe/gpg=
_sign.py | 6 +++++-<br />meta/lib/oe/package_manager.py | 19 ++++++++++++++=
++---<br />2 files changed, 21 insertions(+), 4 deletions(-)<br /><br />--<=
br />2.7.4<br /><br />--<br />_____________________________________________=
__<br />poky mailing list<br />poky@yoctoproject.org<br /><a href=3D"https:=
//lists.yoctoproject.org/listinfo/poky" target=3D"_blank" rel=3D"noopener">=
https://lists.yoctoproject.org/listinfo/poky</a></blockquote>
</blockquote>

--ANIqqEV8gD7Lqst0k61w--
