Return-Path: <Tobias.Gassner.ext@karlstorz.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E80AC30653
	for <webhook@archiver.kernel.org>; Wed, 26 Jun 2024 08:03:08 +0000 (UTC)
Subject: Re: execute pkg_postinst_ontarget when read-only-rootfs-delayed-postinsts is set for a read only rootfs
To: poky@lists.yoctoproject.org
From: "Gassner, Tobias.ext" <Tobias.Gassner.ext@karlstorz.com>
X-Originating-Location: CH (147.161.136.109)
X-Originating-Platform: Linux Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 26 Jun 2024 01:02:59 -0700
References: <CANNYZj_EKyhoTsvSEH5=6T35F20sGHVEgVT5k5bXXWGZhD1jQg@mail.gmail.com>
In-Reply-To: <CANNYZj_EKyhoTsvSEH5=6T35F20sGHVEgVT5k5bXXWGZhD1jQg@mail.gmail.com>
Message-ID: <8366.1719388979063893614@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="PkZdzAGqy9HZzPgOClaQ"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 26 Jun 2024 08:03:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13396

--PkZdzAGqy9HZzPgOClaQ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,

>=20
> I would only suggest to grep the poky tree for
> read-only-rootfs-delayed-postinsts to see how it's implemented
>=20

already did before my first post. Basically, the only place in all of poky =
where this feature is used is in rootfs.py to turn off a bb.fatal when you =
have a delayed postinstall script and a read-only rootfs. This is also what=
 the doc says

>=20
> read-only-rootfs-delayed-postinsts: when specified in conjunction with re=
ad-only-rootfs
> , specifies that post-install scripts are still permitted (this assumes
> that the root filesystem will be made writeable for the first boot; *this
> feature does not do anything to ensure that - it just disables the check
> for post-install scripts* )

The _uninstall_unneeded method in rootfs.py removes packages with postinsta=
ll steps if read-only-rootfs is set. However, as I suggested in my patch, t=
he check should also take into account the read-only-rootfs-delayed-postins=
ts feature, which allows postinstall code even for read-only rootfs.

--PkZdzAGqy9HZzPgOClaQ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,<br /><br />
<blockquote><span style=3D"color: #333333; font-family: system-ui, 'Segoe U=
I', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-s=
erif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color=
 Emoji'; font-size: 16px; font-style: normal; font-variant-ligatures: norma=
l; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orp=
hans: 2; text-align: start; text-indent: 0px; text-transform: none; widows:=
 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wra=
p; background-color: #ffffff; text-decoration-thickness: initial; text-deco=
ration-style: initial; text-decoration-color: initial; display: inline !imp=
ortant; float: none;">I would only suggest to grep the poky </span><span st=
yle=3D"color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helveti=
ca Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color E=
moji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: =
16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps=
: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align:=
 start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0p=
x; -webkit-text-stroke-width: 0px; white-space: pre-wrap; background-color:=
 #ffffff; text-decoration-thickness: initial; text-decoration-style: initia=
l; text-decoration-color: initial; display: inline !important; float: none;=
">tree for read-only-rootfs-delayed-postinsts to see how it's </span><span =
style=3D"color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helve=
tica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color=
 Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size=
: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-ca=
ps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-alig=
n: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: =
0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; background-colo=
r: #ffffff; text-decoration-thickness: initial; text-decoration-style: init=
ial; text-decoration-color: initial; display: inline !important; float: non=
e;">implemented<br /></span></blockquote>
<span style=3D"color: #333333; font-family: system-ui, 'Segoe UI', Roboto, =
'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple=
 Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; fon=
t-size: 16px; font-style: normal; font-variant-ligatures: normal; font-vari=
ant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; tex=
t-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; backgroun=
d-color: #ffffff; text-decoration-thickness: initial; text-decoration-style=
: initial; text-decoration-color: initial; display: inline !important; floa=
t: none;"><span style=3D"color: #333333; font-family: system-ui, 'Segoe UI'=
, Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-ser=
if, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color E=
moji'; font-size: 16px; font-style: normal; font-variant-ligatures: normal;=
 font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orpha=
ns: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2=
; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap;=
 background-color: #ffffff; text-decoration-thickness: initial; text-decora=
tion-style: initial; text-decoration-color: initial; display: inline !impor=
tant; float: none;">already did before my first post. Basically, the only p=
lace in all of poky where this feature is used is in rootfs.py to turn off =
a bb.fatal when you have a delayed postinstall script and a read-only rootf=
s. This is also what the doc says<span style=3D"color: #333333; font-family=
: system-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation=
 Sans', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI=
 Symbol', 'Noto Color Emoji'; font-size: 16px; font-style: normal; font-var=
iant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter=
-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tra=
nsform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;=
 white-space: normal; background-color: #fafafa; text-decoration-thickness:=
 initial; text-decoration-style: initial; text-decoration-color: initial; d=
isplay: inline !important; float: none;"><br /><br /></span></span></span>
<blockquote><span style=3D"color: #333333; font-family: system-ui, 'Segoe U=
I', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-s=
erif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color=
 Emoji'; font-size: 16px; font-style: normal; font-variant-ligatures: norma=
l; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orp=
hans: 2; text-align: start; text-indent: 0px; text-transform: none; widows:=
 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wra=
p; background-color: #ffffff; text-decoration-thickness: initial; text-deco=
ration-style: initial; text-decoration-color: initial; display: inline !imp=
ortant; float: none;"><em style=3D"box-sizing: border-box; font-weight: bol=
d; color: #333333; font-family: Verdana, Sans, sans-serif; font-size: 16px;=
 font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing:=
 normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: no=
ne; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-spa=
ce: normal; background-color: #fcfcfc; text-decoration-thickness: initial; =
text-decoration-style: initial; text-decoration-color: initial;">read-only-=
rootfs-delayed-postinsts:</em><span style=3D"color: #333333; font-family: V=
erdana, Sans, sans-serif; font-size: 16px; font-style: normal; font-variant=
-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spa=
cing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transfor=
m: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; whit=
e-space: normal; background-color: #fcfcfc; text-decoration-thickness: init=
ial; text-decoration-style: initial; text-decoration-color: initial; displa=
y: inline !important; float: none;"><span>&nbsp;</span>when specified in co=
njunction with<span>&nbsp;</span></span><code class=3D"docutils literal not=
ranslate" style=3D"box-sizing: border-box; font-family: SFMono-Regular, Men=
lo, Monaco, Consolas, 'Liberation Mono', 'Courier New', Courier, monospace;=
 font-size: 13.6px; white-space: normal; max-width: 100%; background-image:=
 inherit; background-position: inherit; background-size: inherit; backgroun=
d-repeat: inherit; background-attachment: inherit; background-origin: inher=
it; background-clip: inherit; background-color: #fcfcfc; border: none; padd=
ing: unset; color: #333333; overflow-x: auto; font-style: normal; font-vari=
ant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-=
spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-trans=
form: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; t=
ext-decoration-thickness: initial; text-decoration-style: initial; text-dec=
oration-color: initial;"><span class=3D"pre" style=3D"box-sizing: border-bo=
x; font-size: medium; font-family: Courier, monospace;">read-only-rootfs</s=
pan></code><span style=3D"color: #333333; font-family: Verdana, Sans, sans-=
serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal;=
 font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orpha=
ns: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2;=
 word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; ba=
ckground-color: #fcfcfc; text-decoration-thickness: initial; text-decoratio=
n-style: initial; text-decoration-color: initial; display: inline !importan=
t; float: none;">, specifies that post-install scripts are still permitted =
(this assumes that the root filesystem will be made writeable for the first=
 boot; <strong>this feature does not do anything to ensure that - it just d=
isables the check for post-install scripts</strong>)</span></span></blockqu=
ote>
The <span style=3D"font-family: courier_newregular, courier;">_uninstall_un=
needed</span> method in rootfs.py removes packages with postinstall steps i=
f <span style=3D"font-family: courier_newregular, courier;">read-only-rootf=
s</span> is set. However, as I suggested in my patch, the check should also=
 take into account the <span style=3D"font-family: courier_newregular, cour=
ier;">read-only-rootfs-delayed-postinsts</span> feature, which allows posti=
nstall code even for read-only rootfs.

--PkZdzAGqy9HZzPgOClaQ--

