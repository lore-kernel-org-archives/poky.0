Return-Path: <jayson.k.mendoza@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 012C2D374A9
	for <webhook@archiver.kernel.org>; Thu, 17 Oct 2024 15:22:32 +0000 (UTC)
Subject: Multiconfig Build using local.conf and multiconfig by design or bug?
To: poky@lists.yoctoproject.org
From: jayson.k.mendoza@gmail.com
X-Originating-Location: Kitchener, Ontario, CA (208.65.73.201)
X-Originating-Platform: Windows Chrome 129
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 17 Oct 2024 08:22:25 -0700
Message-ID: <QRup.1729178545953250610.As7C@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="GJqdQtdDhvZsWkCG45G4"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 17 Oct 2024 15:22:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13454

--GJqdQtdDhvZsWkCG45G4
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Good Morning,

In my current project I was debugging why some DISTRO_FEATURE was missing f=
rom my environment when I used an multiconfig target in my build. When I ch=
ecked the record in bitbake -e mc:mymulticonfig:core-image-weston I noticed=
 that a DISTRO_FEATURE removed in the default local.conf build was applied =
to mymulticonfig's configuration.

The lines in question that someone had in the local.conf were.
```
DISTRO_FEATURES:remove =3D " pulseaudio"
MACHINE_FATURES:remove =3D " pulseaudio"
```

Now I am aware this is flawed in the current version since pulseaudio and i=
f I wanted to do that it should be added to DISTRO_FEATURES_BACKFILLED_CONS=
IDERED. However, I am interested to know why it even impacted my build at a=
ll. From documentation it's my understanding that local.conf is not used as=
ide from the BBMULTICONFIG settings. It shouldn't have affected the global =
configuration which should be sourced from mymulticonfig.conf at=C2=A0 buil=
d/conf/multiconfig/mymulticonfig.conf.

Is the local.conf supposed to be used by all multiconfigs?

--GJqdQtdDhvZsWkCG45G4
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Good Morning,</div>
<div>&nbsp;</div>
<div>In my current project I was debugging why some DISTRO_FEATURE was miss=
ing from my environment when I used an multiconfig target in my build. When=
 I checked the record in bitbake -e mc:mymulticonfig:core-image-weston I no=
ticed that a DISTRO_FEATURE removed in the default local.conf build was app=
lied to mymulticonfig's configuration.&nbsp;</div>
<div>&nbsp;</div>
<div>The lines in question that someone had in the local.conf were.</div>
<div>```</div>
<div>DISTRO_FEATURES:remove =3D " pulseaudio"</div>
<div>MACHINE_FATURES:remove =3D " pulseaudio"</div>
<div>```</div>
<div>&nbsp;</div>
<div>Now I am aware this is flawed in the current version since pulseaudio =
and if I wanted to do that it should be added to DISTRO_FEATURES_BACKFILLED=
_CONSIDERED. However, I am interested to know why it even impacted my build=
 at all. From documentation it's my understanding that local.conf is not us=
ed aside from the BBMULTICONFIG settings. It shouldn't have affected the gl=
obal configuration which should be sourced from mymulticonfig.conf at&nbsp;=
 build/conf/multiconfig/mymulticonfig.conf.&nbsp;</div>
<div>&nbsp;</div>
<div>Is the local.conf supposed to be used by all multiconfigs?</div>
<div>&nbsp;</div>
<div>&nbsp;</div>

--GJqdQtdDhvZsWkCG45G4--

