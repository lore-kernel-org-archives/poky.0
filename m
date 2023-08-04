Return-Path: <f.louveau@lacroix.group>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7822C001DF
	for <webhook@archiver.kernel.org>; Fri,  4 Aug 2023 12:45:38 +0000 (UTC)
Subject: [LINUX-FIRMWARE] all pacakges in image
To: poky@lists.yoctoproject.org
From: f.louveau@lacroix.group
X-Originating-Location: Versailles, Île-de-France, FR (82.66.7.113)
X-Originating-Platform: Linux Firefox 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 04 Aug 2023 05:45:29 -0700
Message-ID: <6Y6K.1691153129635207131.6RdY@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ZjQzagFR3aXXGQaWoTFJ"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 04 Aug 2023 12:45:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13108

--ZjQzagFR3aXXGQaWoTFJ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I encounter some issues with linux-firmware.

My build was configured with tag kirkstone-4.0.8, and today I try to update=
 to latest commit of kirkstone branch (fa7dd8ac75a98c04a4ca2cf90882c2b1c27b=
9679).
The build leads to an error:
>=20
> ERROR: <image>-1.0-r0 do_image_tar: The rootfs size 1456576(K) exceeds
> IMAGE_ROOTFS_MAXSIZE: 768000(K)
> ERROR: Logfile of failure stored in:
> /home/user/workspace/kirkstone/build-mymachine/tmp/work/mymachine-poky-li=
nux/<image>/1.0-r0/temp/log.do_image_tar.3783805
>=20
> ERROR: Task
> (/home/user/workspace/kirkstone/sources/meta-layer/recipes-images/image/<=
image>.bb:do_image_tar)
> failed with exit code '1'

Using buildhistory, I can see that all linux-firmware packages are embedded=
 in image that is not the case before.

After some bisect analysis, I found that the commit 1752b29e7c8d4c104c99b04=
400fd88ea985348a5 adds this weird behavior.

Temporarily, I will use tag kirkstone-4.0.11 but want to notice this issue.

Fabrice

--ZjQzagFR3aXXGQaWoTFJ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br />I encounter some issues with linux-firmware.<br /><br />My build w=
as configured with tag kirkstone-4.0.8, and today I try to update to latest=
 commit of kirkstone branch (fa7dd8ac75a98c04a4ca2cf90882c2b1c27b9679).<br =
/>The build leads to an error:
<blockquote>ERROR: &lt;image&gt;-1.0-r0 do_image_tar: The rootfs size 14565=
76(K) exceeds IMAGE_ROOTFS_MAXSIZE: 768000(K)<br />ERROR: Logfile of failur=
e stored in: /home/user/workspace/kirkstone/build-mymachine/tmp/work/mymach=
ine-poky-linux/&lt;image&gt;/1.0-r0/temp/log.do_image_tar.3783805<br />ERRO=
R: Task (/home/user/workspace/kirkstone/sources/meta-layer/recipes-images/i=
mage/&lt;image&gt;.bb:do_image_tar) failed with exit code '1'</blockquote>
Using buildhistory, I can see that all linux-firmware packages are embedded=
 in image that is not the case before.<br /><br />After some bisect analysi=
s, I found that the commit 1752b29e7c8d4c104c99b04400fd88ea985348a5 adds th=
is weird behavior.<br /><br />Temporarily, I will use tag kirkstone-4.0.11 =
but want to notice this issue.<br /><br />Fabrice

--ZjQzagFR3aXXGQaWoTFJ--

