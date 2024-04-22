Return-Path: <bhstalel@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B6FBC4345F
	for <webhook@archiver.kernel.org>; Mon, 22 Apr 2024 11:15:12 +0000 (UTC)
Subject: Failed to spawn fakeroot worker: Broken Pipe Issue
To: poky@lists.yoctoproject.org
From: "BELHADJ SALEM Talel" <bhstalel@gmail.com>
X-Originating-Location: TN (197.28.11.80)
X-Originating-Platform: Linux Chrome 123
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 22 Apr 2024 04:15:02 -0700
Message-ID: <OGzg.1713784502488483155.cwqW@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="1f1J5EKhhVyITDjJbvWs"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 22 Apr 2024 11:15:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13329

--1f1J5EKhhVyITDjJbvWs
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All,

I am really confused with the following error:

*ERROR: Failed to spawn fakeroot worker to run /home/talel.hajsalem/Documen=
ts/FinalGit/easyocto/test_output/layers/poky/meta/recipes-kernel/linux-libc=
-headers/linux-libc-headers_5.4.bb:do_install: [Errno 32] Broken pipe*
*WARNING: /home/talel.hajsalem/.../layers/poky/bitbake/lib/bb/runqueue.py:2=
229: ResourceWarning: unclosed file <_io.BufferedWriter name=3D31>*
*return True*

*WARNING: /home/talel.hajsalem/.../layers/poky/bitbake/lib/bb/runqueue.py:2=
229: ResourceWarning: unclosed file <_io.BufferedReader name=3D32>*
*return True*

Everything is owned by my regular user, and I have nothing changed in my se=
tup, suddenly this error showed up.

I even tried to clean all sstate and remove the entire build and try from z=
ero. I even restarted the system.

Any clue ?

Thanks.

--1f1J5EKhhVyITDjJbvWs
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All,<br /><br />I am really confused with the following error:<br /><=
br />
<div><strong>ERROR: Failed to spawn fakeroot worker to run /home/talel.hajs=
alem/Documents/FinalGit/easyocto/test_output/layers/poky/meta/recipes-kerne=
l/linux-libc-headers/linux-libc-headers_5.4.bb:do_install: [Errno 32] Broke=
n pipe</strong></div>
<div><strong>WARNING: /home/talel.hajsalem/.../layers/poky/bitbake/lib/bb/r=
unqueue.py:2229: ResourceWarning: unclosed file &lt;_io.BufferedWriter name=
=3D31&gt;</strong></div>
<div><strong>&nbsp; return True</strong></div>
<div>&nbsp;</div>
<div><strong>WARNING: /home/talel.hajsalem/.../layers/poky/bitbake/lib/bb/r=
unqueue.py:2229: ResourceWarning: unclosed file &lt;_io.BufferedReader name=
=3D32&gt;</strong></div>
<div><strong>&nbsp; return True</strong><br /><br />Everything is owned by =
my regular user, and I have nothing changed in my setup, suddenly this erro=
r showed up.<br /><br />I even tried to clean all sstate and remove the ent=
ire build and try from zero. I even restarted the system.<br /><br />Any cl=
ue ?<br /><br />Thanks.</div>

--1f1J5EKhhVyITDjJbvWs--

