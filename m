Return-Path: <daniel.macumber@terumobct.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4DDEC77B7F
	for <webhook@archiver.kernel.org>; Fri, 12 May 2023 23:02:45 +0000 (UTC)
Subject: Trouble with quilt-0.67 in Kirkstone 4.0.4 #poky
To: poky@lists.yoctoproject.org
From: daniel.macumber@terumobct.com
X-Originating-Location: US (208.51.143.189)
X-Originating-Platform: Linux Chrome 112
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 12 May 2023 16:02:44 -0700
Message-ID: <jL02.1683932564788554823.GrCM@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="x5w8XYL3CAlyh3o5WF8p"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 12 May 2023 23:02:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13065

--x5w8XYL3CAlyh3o5WF8p
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello, I am building a project based on Yocto Kirkstone 4.0.4.=C2=A0 Severa=
l of our developers have gotten this to build successfully.=C2=A0 However, =
I am seeing the errors building quilt-native_0.67:

>=20
> + do_configure
> + find /src/build/tmp/work/x86_64-linux/quilt-native/0.67-r0/quilt-0.67
> -name '*.in' -exec sed -i -e '1s,^#\!.*@PERL@ -w$,#\! @PERL@\nuse
> warnings;,' '{}' ';'
>=20
> + oe_runconf
>=20
> ++ basename
> /src/build/tmp/work/x86_64-linux/quilt-native/0.67-r0/quilt-0.67/configur=
e
>=20
>=20
> + cfgscript_name=3Dconfigure
>=20
> ++ python3 -c 'import os;
> print(os.path.relpath(os.path.dirname('\''/src/build/tmp/work/x86_64-linu=
x/quilt-native/0.67-r0/quilt-0.67/configure'\''),
> '\''.'\''))'
>=20
> + cfgscript=3D./configure
>=20
> + '[' -x ./configure ']'
>=20
> + bbfatal 'no configure script found at ./configure'
>=20
> + '[' -p
> /src/build/tmp/work/x86_64-linux/quilt-native/0.67-r0/temp/fifo.201 ']'
> + printf '%b\0' 'bbfatal no configure script found at ./configure'
>=20
> ERROR: quilt-native-0.67-r0 do_configure: no configure script found at
> ./configure
> + exit 1
> + bb_bash_exit_handler 'exit 1'
> + ret=3D1
>=20
> WARNING:
> /src/build/tmp/work/x86_64-linux/quilt-native/0.67-r0/temp/run.do_configu=
re.201:181
> exit 1 from 'exit 1'
> WARNING: Backtrace (BB generated script):
>=20
> + set +x
>=20
> #1: bbfatal,
> /src/build/tmp/work/x86_64-linux/quilt-native/0.67-r0/temp/run.do_configu=
re.201,
> line 181
>=20
> #2: oe_runconf,
> /src/build/tmp/work/x86_64-linux/quilt-native/0.67-r0/temp/run.do_configu=
re.201,
> line 170
> #3: do_configure,
> /src/build/tmp/work/x86_64-linux/quilt-native/0.67-r0/temp/run.do_configu=
re.201,
> line 153
> #4: main,
> /src/build/tmp/work/x86_64-linux/quilt-native/0.67-r0/temp/run.do_configu=
re.201,
> line 205
>=20
> ERROR: quilt-native-0.67-r0 do_configure:
> ExecutionError('/src/build/tmp/work/x86_64-linux/quilt-native/0.67-r0/tem=
p/run.do_configure.201',
> 1, None, None)
> ERROR: Logfile of failure stored in:
> /src/build/tmp/work/x86_64-linux/quilt-native/0.67-r0/temp/log.do_configu=
re.201
>=20
> ERROR: Task
> (/src/poky/meta/recipes-devtools/quilt/quilt-native_0.67.bb:do_configure)
> failed with exit code '1'
>=20

When I look at the files, the build/tmp/work/x86_64-linux/quilt-native/0.67=
-r0/quilt-0.67/configure script is there, permissions are correct, and it i=
s executable.=C2=A0 Does anyone know what might be causing this?

Thanks a lot,
Dan

--x5w8XYL3CAlyh3o5WF8p
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div class=3D"x_elementToProof" style=3D"border: 0px; font-style: inherit; =
font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-si=
ze: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetica, san=
s-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-=
settings: inherit; font-variation-settings: inherit; margin: 0px; padding: =
0px; vertical-align: baseline; color: #000000 !important;" data-ogsc=3D"rgb=
(0, 0, 0)">Hello, I am building a project based on Yocto Kirkstone 4.0.4.&n=
bsp; Several of our developers have gotten this to build successfully.&nbsp=
; However, I am seeing the errors building quilt-native_0.67:</div>
<div class=3D"x_elementToProof" style=3D"border: 0px; font-style: inherit; =
font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-si=
ze: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetica, san=
s-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-=
settings: inherit; font-variation-settings: inherit; margin: 0px; padding: =
0px; vertical-align: baseline; color: #000000 !important;" data-ogsc=3D"rgb=
(0, 0, 0)">&nbsp;</div>
<div class=3D"x_elementToProof x_ContentPasted0" style=3D"border: 0px; font=
-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch:=
 inherit; font-size: 12pt; line-height: inherit; font-family: Calibri, Aria=
l, Helvetica, sans-serif; font-optical-sizing: inherit; font-kerning: inher=
it; font-feature-settings: inherit; font-variation-settings: inherit; margi=
n: 0px; padding: 0px; vertical-align: baseline; color: #000000 !important;"=
 data-ogsc=3D"rgb(0, 0, 0)">
<blockquote style=3D"margin-bottom: 0px;">+ do_configure
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">+ find /src/build/tmp/work/x86_64-linu=
x/quilt-native/0.67-r0/quilt-0.67 -name '*.in' -exec sed -i -e '1s,^#\!.*@P=
ERL@ -w$,#\! @PERL@\nuse warnings;,' '{}' ';'</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">&nbsp;</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">+ oe_runconf</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">&nbsp;</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">++ basename /src/build/tmp/work/x86_64=
-linux/quilt-native/0.67-r0/quilt-0.67/configure</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">&nbsp;</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">+ cfgscript_name=3Dconfigure</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">&nbsp;</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">++ python3 -c 'import os; print(os.pat=
h.relpath(os.path.dirname('\''/src/build/tmp/work/x86_64-linux/quilt-native=
/0.67-r0/quilt-0.67/configure'\''), '\''.'\''))'</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">&nbsp;</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">+ cfgscript=3D./configure</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">&nbsp;</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">+ '[' -x ./configure ']'</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">&nbsp;</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">+ bbfatal 'no configure script found a=
t ./configure'</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">&nbsp;</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">+ '[' -p /src/build/tmp/work/x86_64-li=
nux/quilt-native/0.67-r0/temp/fifo.201 ']'</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">+ printf '%b\0' 'bbfatal no configure =
script found at ./configure'</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">&nbsp;</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">ERROR: quilt-native-0.67-r0 do_configu=
re: no configure script found at ./configure</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">+ exit 1</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">+ bb_bash_exit_handler 'exit 1'</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">+ ret=3D1</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">&nbsp;</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">WARNING: /src/build/tmp/work/x86_64-li=
nux/quilt-native/0.67-r0/temp/run.do_configure.201:181 exit 1 from 'exit 1'=
</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">WARNING: Backtrace (BB generated scrip=
t):</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">&nbsp;</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">+ set +x</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">&nbsp;</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;#1=
: bbfatal, /src/build/tmp/work/x86_64-linux/quilt-native/0.67-r0/temp/run.d=
o_configure.201, line 181</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">&nbsp;</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;#2=
: oe_runconf, /src/build/tmp/work/x86_64-linux/quilt-native/0.67-r0/temp/ru=
n.do_configure.201, line 170</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;#3=
: do_configure, /src/build/tmp/work/x86_64-linux/quilt-native/0.67-r0/temp/=
run.do_configure.201, line 153</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;#4=
: main, /src/build/tmp/work/x86_64-linux/quilt-native/0.67-r0/temp/run.do_c=
onfigure.201, line 205</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">&nbsp;</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">ERROR: quilt-native-0.67-r0 do_configu=
re: ExecutionError('/src/build/tmp/work/x86_64-linux/quilt-native/0.67-r0/t=
emp/run.do_configure.201', 1, None, None)</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">ERROR: Logfile of failure stored in: /=
src/build/tmp/work/x86_64-linux/quilt-native/0.67-r0/temp/log.do_configure.=
201</div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">ERROR: Task (/src/poky/meta/recipes-de=
vtools/quilt/quilt-native_0.67.bb:do_configure) failed with exit code '1'</=
div>
</blockquote>
</div>
<div class=3D"x_elementToProof x_ContentPasted0" style=3D"border: 0px; font=
-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch:=
 inherit; font-size: 12pt; line-height: inherit; font-family: Calibri, Aria=
l, Helvetica, sans-serif; font-optical-sizing: inherit; font-kerning: inher=
it; font-feature-settings: inherit; font-variation-settings: inherit; margi=
n: 0px; padding: 0px; vertical-align: baseline; color: #000000 !important;"=
 data-ogsc=3D"rgb(0, 0, 0)">&nbsp;</div>
<div class=3D"x_elementToProof x_ContentPasted0 x_ContentPasted1" style=3D"=
border: 0px; font-style: inherit; font-variant: inherit; font-weight: inher=
it; font-stretch: inherit; font-size: 12pt; line-height: inherit; font-fami=
ly: Calibri, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; fo=
nt-kerning: inherit; font-feature-settings: inherit; font-variation-setting=
s: inherit; margin: 0px; padding: 0px; vertical-align: baseline; color: #00=
0000 !important;" data-ogsc=3D"rgb(0, 0, 0)">When I look at the files, the =
build/tmp/work/x86_64-linux/quilt-native/0.67-r0/quilt-0.67/configure scrip=
t is there, permissions are correct, and it is executable.&nbsp; Does anyon=
e know what might be causing this?</div>
<div class=3D"x_elementToProof x_ContentPasted0 x_ContentPasted1" style=3D"=
border: 0px; font-style: inherit; font-variant: inherit; font-weight: inher=
it; font-stretch: inherit; font-size: 12pt; line-height: inherit; font-fami=
ly: Calibri, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; fo=
nt-kerning: inherit; font-feature-settings: inherit; font-variation-setting=
s: inherit; margin: 0px; padding: 0px; vertical-align: baseline; color: #00=
0000 !important;" data-ogsc=3D"rgb(0, 0, 0)"><br aria-hidden=3D"true" />Tha=
nks a lot,<br aria-hidden=3D"true" />Dan</div>
<div class=3D"x_elementToProof x_ContentPasted0 x_ContentPasted1" style=3D"=
border: 0px; font-style: inherit; font-variant: inherit; font-weight: inher=
it; font-stretch: inherit; font-size: 12pt; line-height: inherit; font-fami=
ly: Calibri, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; fo=
nt-kerning: inherit; font-feature-settings: inherit; font-variation-setting=
s: inherit; margin: 0px; padding: 0px; vertical-align: baseline; color: #00=
0000 !important;" data-ogsc=3D"rgb(0, 0, 0)">&nbsp;</div>

--x5w8XYL3CAlyh3o5WF8p--

