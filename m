Return-Path: <ruom9900@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D62CC4345F
	for <webhook@archiver.kernel.org>; Thu,  2 May 2024 12:39:06 +0000 (UTC)
Subject: Adding extra pam modules to the image
To: poky@lists.yoctoproject.org
From: ruom9900@gmail.com
X-Originating-Location: Doha, Baladiyat ad Dawhah, QA (89.211.185.109)
X-Originating-Platform: Mac Chrome 124
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 02 May 2024 05:39:05 -0700
Message-ID: <eWbR.1714653545631818818.tnUz@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Y3xrpyoW4r71tRzTBZHZ"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 02 May 2024 12:39:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13336

--Y3xrpyoW4r71tRzTBZHZ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm new to yocto, I'm trying to add the 'pwquality' pam module to my image =
but I'm struggling with it, initially I have added this line to the local.c=
onf file:

>=20
>=20
>=20
> DISTRO_FEATURES:append =3D " pam
>=20
>=20

which added pam and some modules but the module that i want which is 'pwqua=
lity' was not part of the installed modules, any idea how to add it?

--Y3xrpyoW4r71tRzTBZHZ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm new to yocto, I'm trying to add the 'pwquality' pam module to my image =
but I'm struggling with it, initially I have added this line to the local.c=
onf file:<br />
<blockquote>
<p class=3D"p1"><span class=3D"s1">DISTRO_FEATURES:append =3D " pam</span><=
/p>
</blockquote>
which added pam and some modules but the module that i want which is 'pwqua=
lity' was not part of the installed modules, any idea how to add it?<br />&=
nbsp;

--Y3xrpyoW4r71tRzTBZHZ--

