Return-Path: <Tobias.Gassner.ext@karlstorz.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2DFC3C3271E
	for <webhook@archiver.kernel.org>; Thu,  4 Jul 2024 13:34:47 +0000 (UTC)
Subject: Re: execute pkg_postinst_ontarget when read-only-rootfs-delayed-postinsts is set for a read only rootfs
To: poky@lists.yoctoproject.org
From: "Gassner, Tobias.ext" <Tobias.Gassner.ext@karlstorz.com>
X-Originating-Location: CH (147.161.138.99)
X-Originating-Platform: Linux Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 04 Jul 2024 06:34:38 -0700
References: <b3ac57bc2f8963fcacd6f47e32c990e3302319dc.camel@linuxfoundation.org>
In-Reply-To: <b3ac57bc2f8963fcacd6f47e32c990e3302319dc.camel@linuxfoundation.org>
Message-ID: <31491.1720100078506379952@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="WYMbuSannh9NLLifq3qP"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 04 Jul 2024 13:34:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13406

--WYMbuSannh9NLLifq3qP
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>=20
> Do we need to try every package manager in a loop? I know other tests do
> it, but if the issue being tested is read-only rootfs with read-write /tm=
p,
> then maybe testing just once is enough?
>=20

The combination of not setting systemd as init and rpm as package class lea=
ds to a hanging boot of qemu, see below.

>=20
> Why systemd? Is it needed for something? Note that any deviation from def=
ault
> config risks adding full builds without sstate to the test, preventing
> sstate reuse.
>=20

As far as I understand the postinst_ontarget mechanism, a script is deploye=
d to the target, which is executed on the first boot by init and deleted af=
terwards. since I configured a read-only rootfs, the script cannot be delet=
ed. if I don't set systemd as init manager, qemu hangs on boot but *only* f=
or the rpm package class. I have the assumption that this is related to the=
 fact that the postinst_ontarget script cannot be deleted. With systemd as =
init manager qemu boots normally for all package classes and the test passe=
s.

I guess that if I would configure an overlayFS, the test would probably pas=
s for other init managers as well, but that would add a lot of boilerplate =
code so I tried the KISS solution in the first attempt.

2024-07-04 15:25:44,358 - oe-selftest - INFO - Ran 1 test in 1193.515s
2024-07-04 15:25:44,358 - oe-selftest - INFO - FAILED
2024-07-04 15:25:44,358 - oe-selftest - INFO - =C2=A0(errors=3D1)
2024-07-04 15:25:47,294 - oe-selftest - INFO - RESULTS:
2024-07-04 15:25:47,294 - oe-selftest - INFO - RESULTS - runtime_test.Posti=
nst.test_postinst_on_target_for_read_only_rootfs: UNKNOWN (1193.40s)
2024-07-04 15:25:47,394 - oe-selftest - INFO - SUMMARY:
2024-07-04 15:25:47,395 - oe-selftest - INFO - oe-selftest () - Ran 1 test =
in 1193.517s
2024-07-04 15:25:47,395 - oe-selftest - INFO - oe-selftest - FAIL - Require=
d tests failed (successes=3D0, skipped=3D0, failures=3D0, errors=3D1)

--WYMbuSannh9NLLifq3qP
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<blockquote><span style=3D"color: #333333; font-family: system-ui, 'Segoe U=
I', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-s=
erif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color=
 Emoji'; font-size: 16px; font-style: normal; font-variant-ligatures: norma=
l; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orp=
hans: 2; text-align: start; text-indent: 0px; text-transform: none; widows:=
 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wra=
p; background-color: #ffffff; text-decoration-thickness: initial; text-deco=
ration-style: initial; text-decoration-color: initial; display: inline !imp=
ortant; float: none;">Do we need to try every package manager in a loop? I =
know other tests</span><span style=3D"color: #333333; font-family: system-u=
i, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Ar=
ial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', =
'Noto Color Emoji'; font-size: 16px; font-style: normal; font-variant-ligat=
ures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: =
normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: no=
ne; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-spa=
ce: pre-wrap; background-color: #ffffff; text-decoration-thickness: initial=
; text-decoration-style: initial; text-decoration-color: initial; display: =
inline !important; float: none;">do it, but if the issue being tested is re=
ad-only rootfs with</span><span style=3D"color: #333333; font-family: syste=
m-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans',=
 Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol=
', 'Noto Color Emoji'; font-size: 16px; font-style: normal; font-variant-li=
gatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacin=
g: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform:=
 none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-=
space: pre-wrap; background-color: #ffffff; text-decoration-thickness: init=
ial; text-decoration-style: initial; text-decoration-color: initial; displa=
y: inline !important; float: none;">read-write /tmp, then maybe testing jus=
t once is enough?<br /></span></blockquote>
<span style=3D"color: #333333; font-family: system-ui, 'Segoe UI', Roboto, =
'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple=
 Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; fon=
t-size: 16px; font-style: normal; font-variant-ligatures: normal; font-vari=
ant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; tex=
t-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; backgroun=
d-color: #ffffff; text-decoration-thickness: initial; text-decoration-style=
: initial; text-decoration-color: initial; display: inline !important; floa=
t: none;">The combination of not setting systemd as init and rpm as package=
 class leads to a hanging boot of qemu, see below.<br /><br /></span>
<blockquote><span style=3D"color: #333333; font-family: system-ui, 'Segoe U=
I', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-s=
erif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color=
 Emoji'; font-size: 16px; font-style: normal; font-variant-ligatures: norma=
l; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orp=
hans: 2; text-align: start; text-indent: 0px; text-transform: none; widows:=
 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wra=
p; background-color: #ffffff; text-decoration-thickness: initial; text-deco=
ration-style: initial; text-decoration-color: initial; display: inline !imp=
ortant; float: none;">Why systemd? Is it needed for something? Note that an=
y deviation from</span><span style=3D"color: #333333; font-family: system-u=
i, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Ar=
ial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', =
'Noto Color Emoji'; font-size: 16px; font-style: normal; font-variant-ligat=
ures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: =
normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: no=
ne; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-spa=
ce: pre-wrap; background-color: #ffffff; text-decoration-thickness: initial=
; text-decoration-style: initial; text-decoration-color: initial; display: =
inline !important; float: none;">default config risks adding full builds wi=
thout sstate to the test,</span><span style=3D"color: #333333; font-family:=
 system-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation =
Sans', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI =
Symbol', 'Noto Color Emoji'; font-size: 16px; font-style: normal; font-vari=
ant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-=
spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tran=
sform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
white-space: pre-wrap; background-color: #ffffff; text-decoration-thickness=
: initial; text-decoration-style: initial; text-decoration-color: initial; =
display: inline !important; float: none;">preventing sstate reuse.<br /></s=
pan></blockquote>
<span><span class=3D"ui-provider go oh gl oi oj ok ol om on oo op oq or os =
ot ou ov ow ox oy oz pa pb pc pd pe pf pg ph pi pj pk pl pm pn" dir=3D"ltr"=
>As far as I understand the postinst_ontarget mechanism, a script is deploy=
ed to the target, which is executed on the first boot by init and deleted a=
fterwards. since I configured a read-only rootfs, the script cannot be dele=
ted. if I don't set systemd as init manager, qemu hangs on boot but <strong=
>only</strong> for the rpm package class. I have the <em>assumption</em> th=
at this is related to the fact that the postinst_ontarget script cannot be =
deleted. With systemd as init manager qemu boots normally for all package c=
lasses and the test passes.<br /><br />I guess that if I would configure an=
 overlayFS, the test would probably pass for other init managers as well, b=
ut that would add a lot of boilerplate code so I tried the KISS solution in=
 the first attempt.<br /><br /><span style=3D"font-family: courier_newregul=
ar, courier;">2024-07-04 15:25:44,358 - oe-selftest - INFO - Ran 1 test in =
1193.515s</span><br /><span style=3D"font-family: courier_newregular, couri=
er;">2024-07-04 15:25:44,358 - oe-selftest - INFO - FAILED</span><br /><spa=
n style=3D"font-family: courier_newregular, courier;">2024-07-04 15:25:44,3=
58 - oe-selftest - INFO - &nbsp;(errors=3D1)</span><br /><span style=3D"fon=
t-family: courier_newregular, courier;">2024-07-04 15:25:47,294 - oe-selfte=
st - INFO - RESULTS:</span><br /><span style=3D"font-family: courier_newreg=
ular, courier;">2024-07-04 15:25:47,294 - oe-selftest - INFO - RESULTS - ru=
ntime_test.Postinst.test_postinst_on_target_for_read_only_rootfs: UNKNOWN (=
1193.40s)</span><br /><span style=3D"font-family: courier_newregular, couri=
er;">2024-07-04 15:25:47,394 - oe-selftest - INFO - SUMMARY:</span><br /><s=
pan style=3D"font-family: courier_newregular, courier;">2024-07-04 15:25:47=
,395 - oe-selftest - INFO - oe-selftest () - Ran 1 test in 1193.517s</span>=
<br /><span style=3D"font-family: courier_newregular, courier;">2024-07-04 =
15:25:47,395 - oe-selftest - INFO - oe-selftest - FAIL - Required tests fai=
led (successes=3D0, skipped=3D0, failures=3D0, errors=3D1)</span></span></s=
pan><br /><span style=3D"color: #333333; font-family: system-ui, 'Segoe UI'=
, Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-ser=
if, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color E=
moji'; font-size: 16px; font-style: normal; font-variant-ligatures: normal;=
 font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orpha=
ns: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2=
; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap;=
 background-color: #ffffff; text-decoration-thickness: initial; text-decora=
tion-style: initial; text-decoration-color: initial; display: inline !impor=
tant; float: none;"><br /></span>

--WYMbuSannh9NLLifq3qP--

