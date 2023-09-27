Return-Path: <bosinski@genesismobo.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6E63E810C0
	for <webhook@archiver.kernel.org>; Wed, 27 Sep 2023 10:23:59 +0000 (UTC)
Subject: Enable ensurepip on Kirkstone?
To: poky@lists.yoctoproject.org
From: bosinski@genesismobo.com
X-Originating-Location: Warsaw, Mazovia, PL (185.129.33.103)
X-Originating-Platform: Linux Firefox 117
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 27 Sep 2023 03:23:50 -0700
Message-ID: <u4Qv.1695810230302704632.p2jb@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="7HrdYZZTeXCoZ5nz2st7"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 27 Sep 2023 10:23:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13168

--7HrdYZZTeXCoZ5nz2st7
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Dear everyone,

For reasons outside of my influence I need to have python3's "ensurepip" mo=
dule available in rootfs, but I see that python3 is deliberately compiled w=
ith "--without-ensurepip" flag. I've tried removing it, but then build comp=
letely breaks. In some other commits I've seen a package called "python3-en=
surepip" but it's not available in newest Kirkstone. Do you know if there i=
s any way to get around it?

With kind regards,
bosinski

--7HrdYZZTeXCoZ5nz2st7
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Dear everyone,<br /><br />For reasons outside of my influence I need to hav=
e python3's "ensurepip" module available in rootfs, but I see that python3 =
is deliberately compiled with "--without-ensurepip" flag. I've tried removi=
ng it, but then build completely breaks. In some other commits I've seen a =
package called "python3-ensurepip" but it's not available in newest Kirksto=
ne. Do you know if there is any way to get around it?<br /><br />With kind =
regards,<br />bosinski

--7HrdYZZTeXCoZ5nz2st7--

