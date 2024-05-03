Return-Path: <ruom9900@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF65FC4345F
	for <webhook@archiver.kernel.org>; Fri,  3 May 2024 20:51:10 +0000 (UTC)
Subject: Changing permission for udev file devices in poky 
To: poky@lists.yoctoproject.org
From: ruom9900@gmail.com
X-Originating-Location: Doha, Baladiyat ad Dawhah, QA (89.211.185.109)
X-Originating-Platform: Mac Chrome 124
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 03 May 2024 13:51:09 -0700
Message-ID: <qh3Z.1714769469064666711.FU9O@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="hSJ8TZqLgHI5bIEam3Ex"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 03 May 2024 20:51:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13343

--hSJ8TZqLgHI5bIEam3Ex
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,
I'm trying to change the file ownership rules for i2c devices by specifying=
 the group to be a custom group. Im creating the custom group in my local.c=
onf file with EXTRA_USER_PARAMS , is there a way to modify the file permiss=
ions from the local.conf file instead of the devfs-udev.rules file ?

--hSJ8TZqLgHI5bIEam3Ex
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br />I'm trying to change the file ownership rules for i2c devices b=
y specifying the group to be a custom group. Im creating the custom group i=
n my local.conf file with EXTRA_USER_PARAMS , is there a way to modify the =
file permissions from the local.conf file instead of the devfs-udev.rules f=
ile ?&nbsp;

--hSJ8TZqLgHI5bIEam3Ex--

