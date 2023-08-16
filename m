Return-Path: <nicolas.wirth@speedgoat.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A473C001B0
	for <webhook@archiver.kernel.org>; Wed, 16 Aug 2023 10:44:48 +0000 (UTC)
Subject: Re: GCC configuration issue: nanosleep does not seems to be available
To: poky@lists.yoctoproject.org
From: "Nicolas Wirth" <nicolas.wirth@speedgoat.ch>
X-Originating-Location: Baechli, Nidwalden, CH (146.4.107.86)
X-Originating-Platform: Windows Chrome 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 16 Aug 2023 03:44:42 -0700
References: <29355.1692107670535769906@lists.yoctoproject.org>
In-Reply-To: <29355.1692107670535769906@lists.yoctoproject.org>
Message-ID: <19617.1692182682229094718@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="YYNdB1gkNTS4xXYkFVYB"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 16 Aug 2023 10:44:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13126

--YYNdB1gkNTS4xXYkFVYB
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

My issue is now fixed, there was an include missing from my code that didn'=
t throw an error on GCC 10.2 but did in GCC 11.2 ...

Thanks to RIchard for the help !

--YYNdB1gkNTS4xXYkFVYB
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">My issue is now fixed,=
 there was an include missing from my code that didn&#39;t throw an error o=
n GCC 10.2 but did in GCC 11.2 ...<br/><br/>Thanks to RIchard for the help =
!</p>

--YYNdB1gkNTS4xXYkFVYB--

