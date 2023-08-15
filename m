Return-Path: <nicolas.wirth@speedgoat.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6D94C001B0
	for <webhook@archiver.kernel.org>; Tue, 15 Aug 2023 13:54:32 +0000 (UTC)
Subject: Re: GCC configuration issue: nanosleep does not seems to be available
To: poky@lists.yoctoproject.org
From: "Nicolas Wirth" <nicolas.wirth@speedgoat.ch>
X-Originating-Location: Baechli, Nidwalden, CH (146.4.107.86)
X-Originating-Platform: Windows Chrome 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 15 Aug 2023 06:54:30 -0700
References: <29355.1692106655155071796@lists.yoctoproject.org>
In-Reply-To: <29355.1692106655155071796@lists.yoctoproject.org>
Message-ID: <29355.1692107670535769906@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="gfqfOxKHN3x36W0wyMLr"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 15 Aug 2023 13:54:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13125

--gfqfOxKHN3x36W0wyMLr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

From to console.log under: builds/my-build/work/cortexa72-cortexa53-poky-li=
nux/gcc-runtime/11.2.0-r0/gcc-11.2.0/build.aarch64-poky-linux.aarch64-poky-=
linux/aarch64-poky-linux/libstdc++-v3/config.log

configure: 81215 : WARNING : unrecognized options: --disable-dependency-tra=
cking, --with-libtool-sysroot, --enable-languages, --enable-threads, --enab=
le-default-pie, --without-local-prefix, --disable-install-libiberty, --disa=
ble-libssp, --enable-libitm, --enable-lto, --disable-bootstrap, --with-syst=
em-zlib, --with-linker-hash-style, --enable-linker-build-id, --with-ppl, --=
with-cloog, --enable-checking, --without-isl, --with-sysroot, --with-build-=
sysroot, --enable-standard-branch-protection, --with-glibc-version, --enabl=
e-initfini-array, --enable-__cxa_atexit, --enable-libstdccxx-time

It looks like the option I'm using is not supported. I found out why:

" *Another update:* GCC 4.9.0 is out and now defaults to automatically enab=
ling nanosleep and sched_yield on platforms that are known to support them.=
 There is no longer any need to use --enable-libstdcxx-time."

Which cause me troubles to understand why I still get the following error:

>=20
>=20
>=20
> error: 'sleep_for' is not a member of
>=20
>=20
>=20
> 'std::this_thread'
>=20
>=20
>=20
> 126 |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=20
> std::this_thread::sleep_for(std::chrono::milliseconds(500));
>=20
>

--gfqfOxKHN3x36W0wyMLr
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>From to console.log under: builds/my-build/work/cortexa72-cortexa53-poky=
-linux/gcc-runtime/11.2.0-r0/gcc-11.2.0/build.aarch64-poky-linux.aarch64-po=
ky-linux/aarch64-poky-linux/libstdc++-v3/config.log<br /><br /><span style=
=3D"font-family: 'JetBrains Mono', Consolas, 'Courier New', monospace; whit=
e-space: pre; background-color: #f5f5f5;">configure:</span><span style=3D"f=
ont-family: 'JetBrains Mono', Consolas, 'Courier New', monospace; white-spa=
ce: pre; background-color: #f5f5f5; color: #9c5d27;">81215</span><span styl=
e=3D"font-family: 'JetBrains Mono', Consolas, 'Courier New', monospace; whi=
te-space: pre; background-color: #f5f5f5;">: </span><span style=3D"font-fam=
ily: 'JetBrains Mono', Consolas, 'Courier New', monospace; white-space: pre=
; background-color: #f5f5f5; color: #000000;">WARNING</span><span style=3D"=
font-family: 'JetBrains Mono', Consolas, 'Courier New', monospace; white-sp=
ace: pre; background-color: #f5f5f5;">: unrecognized options: --disable-dep=
endency-tracking, --with-libtool-sysroot, --enable-languages, --enable-thre=
ads, --enable-default-pie, --without-local-prefix, --disable-install-libibe=
rty, --disable-libssp, --enable-libitm, --enable-lto, --disable-bootstrap, =
--with-system-zlib, --with-linker-hash-style, --enable-linker-build-id, --w=
ith-ppl, --with-cloog, --enable-checking, --without-isl, --with-sysroot, --=
with-build-sysroot, --enable-standard-branch-protection, --with-glibc-versi=
on, --enable-initfini-array, --enable-__cxa_atexit, --enable-libstdccxx-tim=
e</span><br /><br />It looks like the option I'm using is not supported. I =
found out why:<br /><br />"<strong style=3D"margin: 0px; padding: 0px; bord=
er: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; f=
ont-variant-alternates: inherit; font-stretch: inherit; line-height: inheri=
t; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI Adjusted', 'Se=
goe UI', 'Liberation Sans', sans-serif; font-optical-sizing: inherit; font-=
kerning: inherit; font-feature-settings: inherit; font-variation-settings: =
inherit; font-size: 15px; vertical-align: baseline; box-sizing: inherit; co=
lor: #232629;">Another update:</strong><span style=3D"color: #232629; font-=
family: -apple-system, BlinkMacSystemFont, 'Segoe UI Adjusted', 'Segoe UI',=
 'Liberation Sans', sans-serif; font-size: 15px;">&nbsp;GCC 4.9.0 is out an=
d now defaults to automatically enabling&nbsp;</span><code style=3D"margin:=
 0px; padding: var(--su2) var(--su4); border: 0px; font-variant-numeric: in=
herit; font-variant-east-asian: inherit; font-variant-alternates: inherit; =
font-stretch: inherit; line-height: inherit; font-family: var(--ff-mono); f=
ont-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: =
inherit; font-variation-settings: inherit; font-size: var(--_pr-code-fs); v=
ertical-align: baseline; box-sizing: inherit; background-color: var(--black=
-075); white-space-collapse: preserve; color: #232629; border-radius: var(-=
-br-sm);">nanosleep</code><span style=3D"color: #232629; font-family: -appl=
e-system, BlinkMacSystemFont, 'Segoe UI Adjusted', 'Segoe UI', 'Liberation =
Sans', sans-serif; font-size: 15px;">&nbsp;and&nbsp;</span><code style=3D"m=
argin: 0px; padding: var(--su2) var(--su4); border: 0px; font-variant-numer=
ic: inherit; font-variant-east-asian: inherit; font-variant-alternates: inh=
erit; font-stretch: inherit; line-height: inherit; font-family: var(--ff-mo=
no); font-optical-sizing: inherit; font-kerning: inherit; font-feature-sett=
ings: inherit; font-variation-settings: inherit; font-size: var(--_pr-code-=
fs); vertical-align: baseline; box-sizing: inherit; background-color: var(-=
-black-075); white-space-collapse: preserve; color: #232629; border-radius:=
 var(--br-sm);">sched_yield</code><span style=3D"color: #232629; font-famil=
y: -apple-system, BlinkMacSystemFont, 'Segoe UI Adjusted', 'Segoe UI', 'Lib=
eration Sans', sans-serif; font-size: 15px;">&nbsp;on platforms that are kn=
own to support them. There is no longer any need to use&nbsp;</span><code s=
tyle=3D"margin: 0px; padding: var(--su2) var(--su4); border: 0px; font-vari=
ant-numeric: inherit; font-variant-east-asian: inherit; font-variant-altern=
ates: inherit; font-stretch: inherit; line-height: inherit; font-family: va=
r(--ff-mono); font-optical-sizing: inherit; font-kerning: inherit; font-fea=
ture-settings: inherit; font-variation-settings: inherit; font-size: var(--=
_pr-code-fs); vertical-align: baseline; box-sizing: inherit; background-col=
or: var(--black-075); white-space-collapse: preserve; color: #232629; borde=
r-radius: var(--br-sm);">--enable-libstdcxx-time</code><span style=3D"color=
: #232629; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI Adjust=
ed', 'Segoe UI', 'Liberation Sans', sans-serif; font-size: 15px;">."<br /><=
/span><br />Which cause me troubles to understand why I still get the follo=
wing error:</p>
<blockquote>
<p>error: 'sleep_for' is not a member of</p>
<p>&nbsp; &nbsp; 'std::this_thread'</p>
<p>126 |&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;std::=
this_thread::sleep_for(std::chrono::milliseconds(500));</p>
</blockquote>
<p>&nbsp;</p>
<div>&nbsp;</div>

--gfqfOxKHN3x36W0wyMLr--

