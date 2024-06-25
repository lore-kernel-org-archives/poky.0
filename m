Return-Path: <nicolas.wirth@speedgoat.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB8C1C2BBCA
	for <webhook@archiver.kernel.org>; Tue, 25 Jun 2024 06:46:03 +0000 (UTC)
Subject: Re: Issue with Dynamic Linker and Python Dependency in Yocto SDK Setup
To: poky@lists.yoctoproject.org
From: "Nicolas Wirth" <nicolas.wirth@speedgoat.ch>
X-Originating-Location: Baechli, Nidwalden, CH (146.4.107.86)
X-Originating-Platform: Windows Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 24 Jun 2024 23:46:03 -0700
References: <CAMKF1soCgis2C+1cxm0Jzt_39hTwgiOWy3ZKhTdgZfWi19Kb5Q@mail.gmail.com>
In-Reply-To: <CAMKF1soCgis2C+1cxm0Jzt_39hTwgiOWy3ZKhTdgZfWi19Kb5Q@mail.gmail.com>
Message-ID: <6942.1719297963074354692@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="oixJx3DF2r4TlYuWNdET"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 25 Jun 2024 06:46:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13389

--oixJx3DF2r4TlYuWNdET
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>=20
> relocating tools is a necessary part of SDK self-installer, so it can
> edit the binaries to use correct libs as SDK expects. You may explore
> using buildtools-tarball which can provide python perhaps
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.0/buildtools/

We found a workaround using patchelf to change the dynamic linker of the SD=
K to the current directory. Then, we create a symlink to the toolchain's dy=
namic linker. By setting LD_LIBRARY_PATH , we can use the toolchain as inte=
nded without using the installation script or Python.

This is our current solution. Do you see any potential issues or a better w=
ay to achieve this?

--oixJx3DF2r4TlYuWNdET
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
ortant; float: none;">relocating tools is a necessary part of SDK self-inst=
aller, so it can</span><br style=3D"box-sizing: border-box; overflow-wrap: =
break-word !important; color: #333333; font-family: system-ui, 'Segoe UI', =
Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif=
, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emo=
ji'; font-size: 16px; font-style: normal; font-variant-ligatures: normal; f=
ont-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans=
: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; b=
ackground-color: #ffffff; text-decoration-thickness: initial; text-decorati=
on-style: initial; text-decoration-color: initial;" /><span style=3D"color:=
 #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'No=
to Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji', 'Segoe=
 UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-st=
yle: normal; font-variant-ligatures: normal; font-variant-caps: normal; fon=
t-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-=
indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-te=
xt-stroke-width: 0px; white-space: pre-wrap; background-color: #ffffff; tex=
t-decoration-thickness: initial; text-decoration-style: initial; text-decor=
ation-color: initial; display: inline !important; float: none;">edit the bi=
naries to use correct libs as SDK expects. You may explore</span><br style=
=3D"box-sizing: border-box; overflow-wrap: break-word !important; color: #3=
33333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto =
Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI=
 Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-style=
: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-w=
eight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-ind=
ent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-=
stroke-width: 0px; white-space: pre-wrap; background-color: #ffffff; text-d=
ecoration-thickness: initial; text-decoration-style: initial; text-decorati=
on-color: initial;" /><span style=3D"color: #333333; font-family: system-ui=
, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Ari=
al, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', '=
Noto Color Emoji'; font-size: 16px; font-style: normal; font-variant-ligatu=
res: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: n=
ormal; orphans: 2; text-align: start; text-indent: 0px; text-transform: non=
e; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-spac=
e: pre-wrap; background-color: #ffffff; text-decoration-thickness: initial;=
 text-decoration-style: initial; text-decoration-color: initial; display: i=
nline !important; float: none;">using buildtools-tarball which can provide =
python perhaps</span><br style=3D"box-sizing: border-box; overflow-wrap: br=
eak-word !important; color: #333333; font-family: system-ui, 'Segoe UI', Ro=
boto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, =
'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji=
'; font-size: 16px; font-style: normal; font-variant-ligatures: normal; fon=
t-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: =
2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; wo=
rd-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; bac=
kground-color: #ffffff; text-decoration-thickness: initial; text-decoration=
-style: initial; text-decoration-color: initial;" /><a style=3D"box-sizing:=
 border-box; background-color: #ffffff; color: #2f6fa7; text-decoration: no=
ne; overflow-wrap: break-word !important; font-family: system-ui, 'Segoe UI=
', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-se=
rif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color =
Emoji'; font-size: 16px; font-style: normal; font-variant-ligatures: normal=
; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orph=
ans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: =
2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap=
;" href=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-5.0/buil=
dtools/" target=3D"_blank" rel=3D"noopener">https://downloads.yoctoproject.=
org/releases/yocto/yocto-5.0/buildtools/</a></blockquote>
<p>We found a workaround using <code>patchelf</code> to change the dynamic =
linker of the SDK to the current directory. Then, we create a symlink to th=
e toolchain's dynamic linker. By setting <code>LD_LIBRARY_PATH</code>, we c=
an use the toolchain as intended without using the installation script or P=
ython.</p>
<p>This is our current solution. Do you see any potential issues or a bette=
r way to achieve this?</p>

--oixJx3DF2r4TlYuWNdET--

