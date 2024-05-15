Return-Path: <nicolas.wirth@speedgoat.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B73E7C25B75
	for <webhook@archiver.kernel.org>; Wed, 15 May 2024 12:14:12 +0000 (UTC)
Subject: Running chroot-like command in Yocto #yocto
To: poky@lists.yoctoproject.org
From: "Nicolas Wirth" <nicolas.wirth@speedgoat.ch>
X-Originating-Location: Baechli, Nidwalden, CH (146.4.107.86)
X-Originating-Platform: Windows Chrome 124
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 15 May 2024 05:14:02 -0700
Message-ID: <fhmz.1715775242631282768.NneV@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="4brUHX6vtB6gCEUApnsL"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 15 May 2024 12:14:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13349

--4brUHX6vtB6gCEUApnsL
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Greetings,

I would like to run a command that has to use my target-generated tools and=
 on my target-generated rootfs. For example, I would like to install an uti=
lity such as IMAGE_INSTALL =3D "unzip" and then run a command such as "${IM=
AGE_ROOTFS}/usr/bin/unzip ${IMAGE_ROOTFS}/home/user/test.zip" in ROOTFS_POS=
TPROCESS_COMMAND or IMAGE_POSTPROCESS_COMMAND .

Do you have any advices ?

Best,
Nicolas

--4brUHX6vtB6gCEUApnsL
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Greetings,<br /><br />I would like to run a command that has to use my targ=
et-generated tools and on my target-generated rootfs. For example, I would =
like to install an utility such as IMAGE_INSTALL =3D "unzip" and then run a=
 command such as "${IMAGE_ROOTFS}/usr/bin/unzip ${IMAGE_ROOTFS}/home/user/t=
est.zip" in ROOTFS_POSTPROCESS_COMMAND or IMAGE_POSTPROCESS_COMMAND .<br />=
<br />Do you have any advices ?<br /><br />Best,<br />Nicolas

--4brUHX6vtB6gCEUApnsL--

