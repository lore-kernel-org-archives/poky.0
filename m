Return-Path: <sebastian.krahl@lacon.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9154C8302F
	for <webhook@archiver.kernel.org>; Tue,  1 Jul 2025 06:20:10 +0000 (UTC)
Subject: Re: Generate Scarthgap genericx86-64 machine booting pcbios
To: poky@lists.yoctoproject.org
From: "Sebastian" <sebastian.krahl@lacon.de>
X-Originating-Location: Berlin, State of Berlin, DE (79.140.115.119)
X-Originating-Platform: Windows Chrome 137
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 30 Jun 2025 23:20:08 -0700
References: <12949.1750927651589115712@lists.yoctoproject.org>
In-Reply-To: <12949.1750927651589115712@lists.yoctoproject.org>
Message-ID: <7350.1751350808048802581@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="HQhXlrLwbAELJDo41Et2"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 01 Jul 2025 06:20:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13688

--HQhXlrLwbAELJDo41Et2
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

The integration of meta-intel has helped. Now the system boots.

As I'm trying to boot some old x64 machines (most likely intel Atom) the ac=
tual target intel-core2-32 is not the best fit as it only comes with 32 bit=
. I was trying to override the DEFAULTTUNE to "core2-64" but then the QS pr=
events the image building. Maybe somebody may give me a hint?

Regards,

Sebastian

--HQhXlrLwbAELJDo41Et2
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>The integration of meta-intel has helped. Now the system boots.</div>
<div>&nbsp;</div>
<div>As I'm trying to boot some old x64 machines (most likely intel Atom) t=
he actual target intel-core2-32 is not the best fit as it only comes with 3=
2 bit. I was trying to override the DEFAULTTUNE to "core2-64" but then the =
QS prevents the image building. Maybe somebody may give me a hint?</div>
<div>&nbsp;</div>
<div>Regards,</div>
<div>&nbsp;</div>
<div>Sebastian</div>

--HQhXlrLwbAELJDo41Et2--

