Return-Path: <nicolas.wirth@speedgoat.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B94BAC25B7B
	for <webhook@archiver.kernel.org>; Wed, 15 May 2024 12:34:12 +0000 (UTC)
Subject: Re: Running chroot-like command in Yocto #yocto
To: poky@lists.yoctoproject.org
From: "Nicolas Wirth" <nicolas.wirth@speedgoat.ch>
X-Originating-Location: Baechli, Nidwalden, CH (146.4.107.86)
X-Originating-Platform: Windows Chrome 124
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 15 May 2024 05:34:07 -0700
References: <CANNYZj_14fsnt6RV1cZyf0qSFD=58MBh59LammMkrGx53DHXng@mail.gmail.com>
In-Reply-To: <CANNYZj_14fsnt6RV1cZyf0qSFD=58MBh59LammMkrGx53DHXng@mail.gmail.com>
Message-ID: <19808.1715776447222316220@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="dD0f1LBXWIPEsYLEmKHM"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 15 May 2024 12:34:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13351

--dD0f1LBXWIPEsYLEmKHM
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Really good point, my example can be misleading. I didn't wanted to add con=
fusion by fully explaining my goal.

The goal is to run extlinux --install ${IMAGE_ROOTFS} /boot/syslinux, as I'=
ve understood, this command install the sylinux required file but also does=
 write some bytes at the start of the partition, for the MBR. In debbos, I =
could do that using the following code and now I'm trying to reproduce that=
 in the Yocto build system:

- action : run
description : Set up Syslinux
chroot : true
command : extlinux --install /boot/syslinux

--dD0f1LBXWIPEsYLEmKHM
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Really good point, my example can be misleading. I didn't wanted to add =
confusion by fully explaining my goal.<br /><br />The goal is to run extlin=
ux --install <span style=3D"color: #333333; font-family: system-ui, 'Segoe =
UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-=
serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Colo=
r Emoji'; font-size: 16px; font-style: normal; font-variant-ligatures: norm=
al; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; or=
phans: 2; text-align: start; text-indent: 0px; text-transform: none; widows=
: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal=
; background-color: #ffffff; text-decoration-thickness: initial; text-decor=
ation-style: initial; text-decoration-color: initial; display: inline !impo=
rtant; float: none;">${IMAGE_ROOTFS}</span>/boot/syslinux, as I've understo=
od, this command install the sylinux required file but also does write some=
 bytes at the start of the partition, for the MBR. In debbos, I could do th=
at using the following code and now I'm trying to reproduce that in the Yoc=
to build system:</p>
<div style=3D"color: #333333; background-color: #f5f5f5; font-family: 'JetB=
rains Mono', Consolas, 'Courier New', monospace; font-weight: normal; font-=
size: 14px; line-height: 19px; white-space: pre;">
<div><span style=3D"color: #333333;">&nbsp; </span><span style=3D"color: #7=
77777;">-</span><span style=3D"color: #333333;"> </span><span style=3D"colo=
r: #4b69c6;">action</span><span style=3D"color: #777777;">:</span><span sty=
le=3D"color: #333333;"> </span><span style=3D"color: #448c27;">run</span></=
div>
<div><span style=3D"color: #333333;">&nbsp; &nbsp; </span><span style=3D"co=
lor: #4b69c6;">description</span><span style=3D"color: #777777;">:</span><s=
pan style=3D"color: #333333;"> </span><span style=3D"color: #448c27;">Set u=
p Syslinux</span></div>
<div><span style=3D"color: #333333;">&nbsp; &nbsp; </span><span style=3D"co=
lor: #4b69c6;">chroot</span><span style=3D"color: #777777;">:</span><span s=
tyle=3D"color: #333333;"> </span><span style=3D"color: #9c5d27;">true</span=
></div>
<div><span style=3D"color: #333333;">&nbsp; &nbsp; </span><span style=3D"co=
lor: #4b69c6;">command</span><span style=3D"color: #777777;">:</span><span =
style=3D"color: #333333;"> </span><span style=3D"color: #448c27;">extlinux =
--install /boot/syslinux</span></div>
</div>

--dD0f1LBXWIPEsYLEmKHM--

