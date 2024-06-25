Return-Path: <Tobias.Gassner.ext@karlstorz.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63B8DC2BBCA
	for <webhook@archiver.kernel.org>; Tue, 25 Jun 2024 13:43:19 +0000 (UTC)
Subject: Re: execute pkg_postinst_ontarget when read-only-rootfs-delayed-postinsts is set for a read only rootfs
To: poky@lists.yoctoproject.org
From: "Gassner, Tobias.ext" <Tobias.Gassner.ext@karlstorz.com>
X-Originating-Location: CH (147.161.136.111)
X-Originating-Platform: Linux Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 25 Jun 2024 06:43:17 -0700
References: <CANNYZj_7bwTBr_P-2TnYhtAEr4wRhb2XsLwJS_63HnKwJ5g=Xw@mail.gmail.com>
In-Reply-To: <CANNYZj_7bwTBr_P-2TnYhtAEr4wRhb2XsLwJS_63HnKwJ5g=Xw@mail.gmail.com>
Message-ID: <2056.1719322997165543913@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="J3h7x5kmvshKCF0RCIeu"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 25 Jun 2024 13:43:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13393

--J3h7x5kmvshKCF0RCIeu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

(sent again, to post on group as well)

the docu ( https://docs.yoctoproject.org/dev/ref-manual/features.html ) on =
read-only-rootfs-delayed-postinsts says:

>=20
>=20
>=20
> read-only-rootfs-delayed-postinsts: when specified in *conjunction* with =
read-only-rootfs
> , [...]
>=20
>=20
>=20

so I guess I have to specify both.

Greetings
-Tobias

--J3h7x5kmvshKCF0RCIeu
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi,<br /><br />(sent again, to post on group as well)</p>
<p>the <a href=3D"https://docs.yoctoproject.org/dev/ref-manual/features.htm=
l" target=3D"_blank" rel=3D"noopener">docu</a> on read-only-rootfs-delayed-=
postinsts says:</p>
<blockquote>
<p><em style=3D"box-sizing: border-box; font-weight: bold; color: #333333; =
font-family: Verdana, Sans, sans-serif; font-size: 16px; font-variant-ligat=
ures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2=
; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word=
-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; backgro=
und-color: #fcfcfc; text-decoration-thickness: initial; text-decoration-sty=
le: initial; text-decoration-color: initial;">read-only-rootfs-delayed-post=
insts:</em><span style=3D"color: #333333; font-family: Verdana, Sans, sans-=
serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal;=
 font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orpha=
ns: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2;=
 word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; ba=
ckground-color: #fcfcfc; text-decoration-thickness: initial; text-decoratio=
n-style: initial; text-decoration-color: initial; display: inline !importan=
t; float: none;"><span>&nbsp;</span>when specified in <span style=3D"color:=
 #e03e2d;"><strong>conjunction</strong></span> with<span>&nbsp;</span></spa=
n><code class=3D"docutils literal notranslate" style=3D"box-sizing: border-=
box; font-family: SFMono-Regular, Menlo, Monaco, Consolas, 'Liberation Mono=
', 'Courier New', Courier, monospace; font-size: 13.6px; white-space: norma=
l; max-width: 100%; background-image: inherit; background-position: inherit=
; background-size: inherit; background-repeat: inherit; background-attachme=
nt: inherit; background-origin: inherit; background-clip: inherit; backgrou=
nd-color: #fcfcfc; border: none; padding: unset; color: #333333; overflow-x=
: auto; font-style: normal; font-variant-ligatures: normal; font-variant-ca=
ps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-alig=
n: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0=
px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; tex=
t-decoration-style: initial; text-decoration-color: initial;"><span class=
=3D"pre" style=3D"box-sizing: border-box; font-size: medium; font-family: C=
ourier, monospace;">read-only-rootfs</span></code><span style=3D"color: #33=
3333; font-family: Verdana, Sans, sans-serif; font-size: 16px; font-style: =
normal; font-variant-ligatures: normal; font-variant-caps: normal; font-wei=
ght: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent=
: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-str=
oke-width: 0px; white-space: normal; background-color: #fcfcfc; text-decora=
tion-thickness: initial; text-decoration-style: initial; text-decoration-co=
lor: initial; display: inline !important; float: none;">, [...]<br /></span=
></p>
</blockquote>
<p><span style=3D"color: #333333; font-family: Verdana, Sans, sans-serif; f=
ont-size: 16px; font-style: normal; font-variant-ligatures: normal; font-va=
riant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; t=
ext-align: left; text-indent: 0px; text-transform: none; widows: 2; word-sp=
acing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background=
-color: #fcfcfc; text-decoration-thickness: initial; text-decoration-style:=
 initial; text-decoration-color: initial; display: inline !important; float=
: none;">so I guess I have to specify both.</span></p>
<p><span style=3D"color: #333333; font-family: Verdana, Sans, sans-serif; f=
ont-size: 16px; font-style: normal; font-variant-ligatures: normal; font-va=
riant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; t=
ext-align: left; text-indent: 0px; text-transform: none; widows: 2; word-sp=
acing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background=
-color: #fcfcfc; text-decoration-thickness: initial; text-decoration-style:=
 initial; text-decoration-color: initial; display: inline !important; float=
: none;">Greetings<br />-Tobias</span></p>

--J3h7x5kmvshKCF0RCIeu--

