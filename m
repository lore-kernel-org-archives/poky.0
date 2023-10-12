Return-Path: <Grant.Smith3@ngc.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B8C0CDB465
	for <webhook@archiver.kernel.org>; Thu, 12 Oct 2023 00:19:18 +0000 (UTC)
Subject: CVE CHECK scorev3
To: poky@lists.yoctoproject.org
From: Grant.Smith3@ngc.com
X-Originating-Location: New York, New York, US (163.116.157.95)
X-Originating-Platform: Windows Chrome 117
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 11 Oct 2023 17:19:12 -0700
Message-ID: <DxsL.1697069952825184652.wun3@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="689HQoS71tvGqacRnn4l"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 12 Oct 2023 00:19:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13173

--689HQoS71tvGqacRnn4l
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

All,

In the poky layer (yocto-4.2.3 branch) I am using the built in cve-checker =
and running into an issue where it is unable to produce the scorev3 metric.=
 All CVEs have a scorev3 equivalent to 0.0. When looking at poky (yocto-4.0=
.9 branch) I noticed that the cve-checker uses the 1.1 version of the NVD d=
atabase and can successfully produce scorev3 when running a test build. The=
 yocto-4.2.3 branch uses version 2 of the database. There have also been se=
veral patches that affect the way these scores are produced. I am just wond=
ering if anyone might have any insight to this issue or maybe have a soluti=
on.

Thanks

--689HQoS71tvGqacRnn4l
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

All,<br/><br/>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
In the poky layer (yocto-4.2.3 branch) I am using the built in cve-checker =
and running into an issue where it is unable to produce the scorev3 metric.=
 All CVEs have a scorev3 equivalent to 0.0. When looking at poky (yocto-4.0=
.9 branch) I noticed that the cve-checker uses the 1.1 version of the NVD d=
atabase and can successfully produce scorev3 when running a test build. The=
 yocto-4.2.3 branch uses version 2 of the database. There have also been se=
veral patches that affect the way these scores are produced. I am just wond=
ering if anyone might have any insight to this issue or maybe have a soluti=
on.<br/><br/>Thanks=C2=A0

--689HQoS71tvGqacRnn4l--

