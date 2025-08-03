Return-Path: <trent.piepho@igorinstitute.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A624C87FCB
	for <webhook@archiver.kernel.org>; Sun,  3 Aug 2025 06:28:25 +0000 (UTC)
Subject: How to override mesa VULKAN_DRIVERS and GALLIUMDRIVERS variables?
To: poky@lists.yoctoproject.org
From: trent.piepho@igorinstitute.com
X-Originating-Location: Seattle, Washington, US (97.113.138.19)
X-Originating-Platform: Linux Chrome 137
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 02 Aug 2025 23:28:17 -0700
Message-ID: <2n8W.1754202497905279149.soMo@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="RpU4vvRXY5GkdwhT1xry"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sun, 03 Aug 2025 06:28:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13704

--RpU4vvRXY5GkdwhT1xry
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'd like to change the value of these.

However, they are set like this:
VULKAN_DRIVERS =3D ""
VULKAN_DRIVERS:append:x86 =3D ",intel,amd"
VULKAN_DRIVERS:append:x86-64 =3D ",intel,amd"

...
VULKAN_DRIVERS:append =3D"${@bb.utils.contains('PACKAGECONFIG', 'freedreno'=
, ',freedreno', '', d)}"

Setting VULKAN_DRIVERS in an bbappend or machine conf file to something lik=
e "intel" doesn't work, because the append actions still append to that val=
ue all additional drivers.
Trying to remove other drivers with something like VULKAN_DRIVERS:remove =
=3D ",amd" doesn't work either, as remove only matches on word boundaries a=
nd the list is command delimited, not space delimited.

--RpU4vvRXY5GkdwhT1xry
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I'd like to change the value of these.&nbsp;&nbsp;</div>
<div>&nbsp;</div>
<div>However, they are set like this:</div>
<div><span style=3D"font-family: monospace;"><span style=3D"color: #000000;=
 background-color: #ffffff;">VULKAN_DRIVERS =3D "" </span><br />VULKAN_DRIV=
ERS:append:x86 =3D ",intel,amd" <br />VULKAN_DRIVERS:append:x86-64 =3D ",in=
tel,amd"<br /></span></div>
<div><span style=3D"font-family: monospace;">...</span></div>
<div><span style=3D"font-family: monospace;"><span style=3D"font-family: mo=
nospace;"><span style=3D"color: #000000; background-color: #ffffff;">VULKAN=
_DRIVERS:append =3D"${@bb.utils.contains('PACKAGECONFIG', 'freedreno', ',fr=
eedreno', '', d)}"</span><br /></span></span></div>
<div>&nbsp;</div>
<div><span style=3D"font-family: monospace;">Setting VULKAN_DRIVERS in an b=
bappend or machine conf file to something like "intel" doesn't work, becaus=
e the append actions still append to that value all additional drivers.</sp=
an></div>
<div>Trying to remove other drivers with something like VULKAN_DRIVERS:remo=
ve =3D ",amd" doesn't work either, as remove only matches on word boundarie=
s and the list is command delimited, not space delimited.</div>

--RpU4vvRXY5GkdwhT1xry--

