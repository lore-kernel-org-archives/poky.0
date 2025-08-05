Return-Path: <srivamsi_malladi@trimble.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D004C87FCB
	for <webhook@archiver.kernel.org>; Tue,  5 Aug 2025 08:57:34 +0000 (UTC)
Subject: Re: Multiple glibc libraries on a single host #bitbake #poky
To: poky@lists.yoctoproject.org
From: "Srivamsi Malladi" <srivamsi_malladi@trimble.com>
X-Originating-Location: Frankfurt am Main, Hesse, DE (24.206.112.163)
X-Originating-Platform: Windows Chrome 138
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 05 Aug 2025 01:57:25 -0700
References: <5rcV.1754383432133968918.mcg9@lists.yoctoproject.org>
In-Reply-To: <5rcV.1754383432133968918.mcg9@lists.yoctoproject.org>
Message-ID: <31515.1754384245429990929@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="W4DXdL7BWl9vrdzCail4"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 05 Aug 2025 08:57:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13711

--W4DXdL7BWl9vrdzCail4
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,

Thanks for the quick reply.
I will try to get the tool either statically linked to 2.28 or get the sour=
ce.

>=20
> this is not feasible
>=20

This is not feasible, because glibc is a special library and because the ke=
rnel and many other applications use it?
Or is it not feasible also in case of any other library or application?

Like I said,=C2=A0 I would like to understand how to create recipes such th=
at two versions of the same library/application are installed.

Thanks
Vamsi.

--W4DXdL7BWl9vrdzCail4
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div><span style=3D"color: #222222; font-family: Arial, Helvetica, sans-ser=
if; font-size: small; font-style: normal; font-variant-ligatures: normal; f=
ont-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans=
: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; bac=
kground-color: #ffffff; text-decoration-thickness: initial; text-decoration=
-style: initial; text-decoration-color: initial; display: inline !important=
; float: none;">Hi Alex,</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #222222; font-family: Arial, Helvetica, sans-ser=
if; font-size: small; font-style: normal; font-variant-ligatures: normal; f=
ont-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans=
: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; bac=
kground-color: #ffffff; text-decoration-thickness: initial; text-decoration=
-style: initial; text-decoration-color: initial; display: inline !important=
; float: none;">Thanks for the quick reply.</span><br style=3D"color: #2222=
22; font-family: Arial, Helvetica, sans-serif; font-size: small; font-style=
: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-w=
eight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-ind=
ent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-=
stroke-width: 0px; white-space: normal; background-color: #ffffff; text-dec=
oration-thickness: initial; text-decoration-style: initial; text-decoration=
-color: initial;" /><span style=3D"color: #222222; font-family: Arial, Helv=
etica, sans-serif; font-size: small; font-style: normal; font-variant-ligat=
ures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: =
normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: no=
ne; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-spa=
ce: normal; background-color: #ffffff; text-decoration-thickness: initial; =
text-decoration-style: initial; text-decoration-color: initial; display: in=
line !important; float: none;">I will try to get the tool either statically=
 linked to 2.28 or get the source.</span></div>
<div>&nbsp;</div>
<blockquote>
<div><span style=3D"color: #222222; font-family: Arial, Helvetica, sans-ser=
if; font-size: small; font-style: normal; font-variant-ligatures: normal; f=
ont-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans=
: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; bac=
kground-color: #ffffff; text-decoration-thickness: initial; text-decoration=
-style: initial; text-decoration-color: initial; display: inline !important=
; float: none;">this is not feasible</span></div>
</blockquote>
<div><span style=3D"color: #222222; font-family: Arial, Helvetica, sans-ser=
if; font-size: small; font-style: normal; font-variant-ligatures: normal; f=
ont-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans=
: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; bac=
kground-color: #ffffff; text-decoration-thickness: initial; text-decoration=
-style: initial; text-decoration-color: initial; display: inline !important=
; float: none;">This is not feasible, because glibc is a special library an=
d because the kernel and many other applications use it?</span><br style=3D=
"color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: smal=
l; font-style: normal; font-variant-ligatures: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: st=
art; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; white-space: normal; background-color: #fff=
fff; text-decoration-thickness: initial; text-decoration-style: initial; te=
xt-decoration-color: initial;" /><span style=3D"color: #222222; font-family=
: Arial, Helvetica, sans-serif; font-size: small; font-style: normal; font-=
variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; let=
ter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-=
transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0=
px; white-space: normal; background-color: #ffffff; text-decoration-thickne=
ss: initial; text-decoration-style: initial; text-decoration-color: initial=
; display: inline !important; float: none;">Or is it not feasible also in c=
ase of any other library or application?</span><br style=3D"color: #222222;=
 font-family: Arial, Helvetica, sans-serif; font-size: small; font-style: n=
ormal; font-variant-ligatures: normal; font-variant-caps: normal; font-weig=
ht: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent=
: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-str=
oke-width: 0px; white-space: normal; background-color: #ffffff; text-decora=
tion-thickness: initial; text-decoration-style: initial; text-decoration-co=
lor: initial;" /><br style=3D"color: #222222; font-family: Arial, Helvetica=
, sans-serif; font-size: small; font-style: normal; font-variant-ligatures:=
 normal; font-variant-caps: normal; font-weight: 400; letter-spacing: norma=
l; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; w=
idows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: n=
ormal; background-color: #ffffff; text-decoration-thickness: initial; text-=
decoration-style: initial; text-decoration-color: initial;" /><span style=
=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: s=
mall; font-style: normal; font-variant-ligatures: normal; font-variant-caps=
: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align:=
 start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0p=
x; -webkit-text-stroke-width: 0px; white-space: normal; background-color: #=
ffffff; text-decoration-thickness: initial; text-decoration-style: initial;=
 text-decoration-color: initial; display: inline !important; float: none;">=
Like I said,&nbsp; I would like to understand how to create recipes such th=
at two versions of the same library/application are installed.</span><br st=
yle=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; font-size=
: small; font-style: normal; font-variant-ligatures: normal; font-variant-c=
aps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-ali=
gn: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing:=
 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color=
: #ffffff; text-decoration-thickness: initial; text-decoration-style: initi=
al; text-decoration-color: initial;" /><br style=3D"color: #222222; font-fa=
mily: Arial, Helvetica, sans-serif; font-size: small; font-style: normal; f=
ont-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;=
 letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; t=
ext-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-widt=
h: 0px; white-space: normal; background-color: #ffffff; text-decoration-thi=
ckness: initial; text-decoration-style: initial; text-decoration-color: ini=
tial;" /><span style=3D"color: #222222; font-family: Arial, Helvetica, sans=
-serif; font-size: small; font-style: normal; font-variant-ligatures: norma=
l; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orp=
hans: 2; text-align: start; text-indent: 0px; text-transform: none; widows:=
 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal;=
 background-color: #ffffff; text-decoration-thickness: initial; text-decora=
tion-style: initial; text-decoration-color: initial; display: inline !impor=
tant; float: none;">Thanks</span><br style=3D"color: #222222; font-family: =
Arial, Helvetica, sans-serif; font-size: small; font-style: normal; font-va=
riant-ligatures: normal; font-variant-caps: normal; font-weight: 400; lette=
r-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tr=
ansform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px=
; white-space: normal; background-color: #ffffff; text-decoration-thickness=
: initial; text-decoration-style: initial; text-decoration-color: initial;"=
 /><span style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif=
; font-size: small; font-style: normal; font-variant-ligatures: normal; fon=
t-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: =
2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; wo=
rd-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; backg=
round-color: #ffffff; text-decoration-thickness: initial; text-decoration-s=
tyle: initial; text-decoration-color: initial; display: inline !important; =
float: none;">Vamsi.</span></div>

--W4DXdL7BWl9vrdzCail4--

