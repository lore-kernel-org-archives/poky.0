Return-Path: <nicolas.wirth@speedgoat.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A68B2EB64DD
	for <webhook@archiver.kernel.org>; Thu, 17 Aug 2023 10:43:58 +0000 (UTC)
Subject: Re: GCC configuration issue: nanosleep does not seems to be available
To: poky@lists.yoctoproject.org
From: "Nicolas Wirth" <nicolas.wirth@speedgoat.ch>
X-Originating-Location: Baechli, Nidwalden, CH (146.4.107.86)
X-Originating-Platform: Windows Chrome 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 17 Aug 2023 03:43:53 -0700
References: <CAMKF1soF17RupXdOv8od_1pTrkR3xXx1jbge2RuXMBt0WRBJJg@mail.gmail.com>
In-Reply-To: <CAMKF1soF17RupXdOv8od_1pTrkR3xXx1jbge2RuXMBt0WRBJJg@mail.gmail.com>
Message-ID: <19617.1692269033615346504@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Vp3hjaj2sDMkovLa4jli"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 17 Aug 2023 10:43:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13131

--Vp3hjaj2sDMkovLa4jli
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Since the issue was with my code and not Yocto, I didn't thought it would b=
e relevant but since I've been ask to share my solution here it is.

According to this; Porting to GCC 11 - GNU Project ( https://gcc.gnu.org/gc=
c-11/porting_to.html ) when using=C2=A0members of namespace std::this_threa=
d, you have to include the libraire <thread>

--Vp3hjaj2sDMkovLa4jli
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Since the issue was with my code and not Yocto, I didn't thought it would b=
e relevant but since I've been ask to share my solution here it is.<br /><b=
r />According to this;&nbsp;<a href=3D"https://gcc.gnu.org/gcc-11/porting_t=
o.html">Porting to GCC 11 - GNU Project</a>&nbsp;when using&nbsp;members of=
 namespace std::this_thread, you have to include the libraire &lt;thread&gt=
;

--Vp3hjaj2sDMkovLa4jli--

