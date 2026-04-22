Return-Path: <rustyhowell@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1352FA1FFA
	for <webhook@archiver.kernel.org>; Wed, 22 Apr 2026 21:17:10 +0000 (UTC)
Subject: Installing a third-party package
To: poky@lists.yoctoproject.org
From: "Rusty Howell" <rustyhowell@gmail.com>
X-Originating-Location: Provo, Utah, US (136.36.187.205)
X-Originating-Platform: Linux Firefox 149
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 22 Apr 2026 14:17:01 -0700
Message-ID: <d63R.1776892621156872677.1gEq@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="2QEpVcofGPjjcjeET4p5"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 22 Apr 2026 21:17:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13912

--2QEpVcofGPjjcjeET4p5
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I could use some help with the scenario I have.=C2=A0 =C2=A0We have a 3rd-p=
arty vendor that has provided us with a debian package for us to include in=
 our OS image.=C2=A0 The vendor maintains the package feed and provides upd=
ates periodically.=C2=A0 I need to find a way to get the their package inst=
alled into our OS image.=C2=A0 Not just extracted into, but installed with =
dpkg metadata and everything.=C2=A0 =C2=A0Using bin_package works... kinda.=
 It leaves out some things like postinst and the versioning can change. Is =
there another way to incorporate a third-party package that would be closer=
 to installing the package on first boot?=C2=A0 Thanks in advance.

--2QEpVcofGPjjcjeET4p5
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I could use some help with the scenario I have.&nbsp; &nbsp;We have a =
3rd-party vendor that has provided us with a debian package for us to inclu=
de in our OS image.&nbsp; The vendor maintains the package feed and provide=
s updates periodically.&nbsp; I need to find a way to get the their package=
 installed into our OS image.&nbsp; Not just extracted into, but installed =
with dpkg metadata and everything.&nbsp; &nbsp;Using bin_package works... k=
inda. It leaves out some things like postinst and the versioning can change=
. Is there another way to incorporate a third-party package that would be c=
loser to installing the package on first boot?&nbsp; Thanks in advance.</di=
v>

--2QEpVcofGPjjcjeET4p5--

