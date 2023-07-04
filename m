Return-Path: <adrian.fueloep@holtkamp.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 480E4EB64D9
	for <webhook@archiver.kernel.org>; Tue,  4 Jul 2023 13:45:39 +0000 (UTC)
Subject: Bootchart2 is not generating a proper chart
To: poky@lists.yoctoproject.org
From: "adrian.fueloep@holtkamp.de" <adrian.fueloep@holtkamp.de>
X-Originating-Location: Osnabrück, Lower Saxony, DE (212.95.101.59)
X-Originating-Platform: Windows Firefox 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 04 Jul 2023 06:45:31 -0700
Message-ID: <rVI2.1688478331779822059.Kc7f@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="BQrrkf05X94470lfEzkg"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 04 Jul 2023 13:45:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13102

--BQrrkf05X94470lfEzkg
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello people,

I'm heaving trouble to use bootchart2 in my yocto project.
I've included bootchart2 from openembedded-core. Kernel Configs and cmd lin=
e args are set as described in this ( https://github.com/xrmx/bootchart/blo=
b/master/README ) document.
On bootup this message appears:

systemd[1]: bootchart2.service: Failed with result 'protocol'.
systemd[1]: Failed to start Collect Bootchart Data.
[FAILED] Failed to start Collect Bootchart Data.
See 'systemctl status bootchart2.service' for details.

The resulting graph covers only 1,4 seconds.

Does anyone know about this issue?

--BQrrkf05X94470lfEzkg
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello people,<br /><br />I'm heaving trouble to use bootchart2 in my yocto =
project. <br />I've included bootchart2 from openembedded-core. Kernel Conf=
igs and cmd line args are set as described in <a href=3D"https://github.com=
/xrmx/bootchart/blob/master/README" target=3D"_blank" rel=3D"noopener">this=
</a> document.<br />On bootup this message appears:<br /><br />systemd[1]: =
bootchart2.service: Failed with result 'protocol'.<br />systemd[1]: Failed =
to start Collect Bootchart Data.<br />[FAILED] Failed to start Collect Boot=
chart Data.<br />See 'systemctl status bootchart2.service' for details.<br =
/><br />The resulting graph covers only 1,4 seconds.<br /><br />Does anyone=
 know about this issue?

--BQrrkf05X94470lfEzkg--

