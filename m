Subject: Re: [PATCH] connman: Fix critical CVE-2021-33833 for dunfell branch #poky
To: poky@lists.yoctoproject.org
From: "Damien HACKETT" <damienhackett@eaton.com>
X-Originating-Location: Atlanta, Georgia, US (104.129.205.10)
X-Originating-Platform: Linux Firefox 78
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 22 Sep 2021 05:41:04 -0700
References: <CANNYZj9gtwCPEOaBrCV=KuZFqpikXUAQONFdNWNWn7UT=Pn6Fw@mail.gmail.com>
In-Reply-To: <CANNYZj9gtwCPEOaBrCV=KuZFqpikXUAQONFdNWNWn7UT=Pn6Fw@mail.gmail.com>
Message-ID: <9092.1632314464757056597@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="lWEnRQwsTulr0NM6pYYZ"

--lWEnRQwsTulr0NM6pYYZ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 22, 2021 at 12:28 PM, Alexander Kanavin wrote:

>=20
> Thanks for the patch, it's basically ok, but:
>=20
> - the patch file for connman needs 'Upstream-Status: Backport [link]' jus=
t
> above your s-o-b
>=20

Added.

>=20
>=20
> - use 'git send-email' to send it, no attachments or sending via
> interactive email clients
>=20

Ok sure. I am not used to it.

>=20
>=20
> (many things can go wrong if you do that)
> - the correct mailing list is openembedded-core one
>=20

For this point are you sure because my changes are on poky layer not meta-o=
penembedded one ??

>=20
>=20
> - the patch should apply to current poky master; if it's not relevant or
> needed for master this needs to be clarified.
>=20

I see some people add [dunfell] in message subject to specify a specific br=
anch on which appling the patch.

>=20
>=20
>=20
> Alex
>=20

By the way, thanks foryour support to those which try to support the commun=
ity. ;)

>=20
>=20
>

--lWEnRQwsTulr0NM6pYYZ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 22, 2021 at 12:28 PM, Alexander Kanavin wrote:<br />
<blockquote>
<div dir=3D"ltr">
<div>Thanks for the patch, it's basically ok, but:</div>
<div>&nbsp;</div>
<div>- the patch file for connman needs 'Upstream-Status: Backport [link]' =
just above your s-o-b</div>
</div>
</blockquote>
Added.<br /><br />
<blockquote>
<div dir=3D"ltr">
<div>&nbsp;</div>
<div>- use 'git send-email' to send it, no attachments or sending via inter=
active email clients</div>
</div>
</blockquote>
Ok sure. I am not used to it.<br />
<blockquote>
<div dir=3D"ltr">
<div>&nbsp;</div>
<div>(many things can go wrong if you do that)</div>
<div>- the correct mailing list is openembedded-core one</div>
</div>
</blockquote>
For this point are you sure because my changes are on poky layer not meta-o=
penembedded one ??<br />
<blockquote>
<div dir=3D"ltr">
<div>&nbsp;</div>
<div>- the patch should apply to current poky master; if it's not relevant =
or needed for master this needs to be clarified.</div>
</div>
</blockquote>
I see some people add [dunfell] in message subject to specify a specific br=
anch on which appling the patch.<br /><br />
<blockquote>
<div dir=3D"ltr">
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>Alex</div>
</div>
</blockquote>
<br />By the way, thanks foryour support to those which try to support the =
community. ;)<br />
<blockquote>
<div dir=3D"ltr">
<div>&nbsp;</div>
</div>
</blockquote>

--lWEnRQwsTulr0NM6pYYZ--
