Return-Path: <mark.hatle@kernel.crashing.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B85FC54791
	for <webhook@archiver.kernel.org>; Thu, 22 Feb 2024 17:59:59 +0000 (UTC)
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
 by mx.groups.io with SMTP id smtpd.web10.19935.1708624792735353192
 for <poky@lists.yoctoproject.org>;
 Thu, 22 Feb 2024 09:59:53 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: kernel.crashing.org, ip: 63.228.1.57, mailfrom: mark.hatle@kernel.crashing.org)
Received: from [192.168.2.236] ([70.99.78.137])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 41MHwmS6012402;
	Thu, 22 Feb 2024 11:58:48 -0600
Message-ID: <778ff323-f8b3-4991-86ef-5e2b3050c8d3@kernel.crashing.org>
Date: Thu, 22 Feb 2024 11:58:44 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [poky] clarification on 'gitsm://' fetcher.
Content-Language: en-US
To: vishwanath Chandapur <vishwavtu@gmail.com>, poky@lists.yoctoproject.org
References: <ixbV.1708072376356310245.WNd3@lists.yoctoproject.org>
From: Mark Hatle <mark.hatle@kernel.crashing.org>
In-Reply-To: <ixbV.1708072376356310245.WNd3@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by gate.crashing.org id 41MHwmS6012402
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 22 Feb 2024 17:59:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13267



On 2/16/24 2:32 AM, vishwanath Chandapur wrote:
> Hi
>=20
> In recent grpc recipe has changed to gitsm:// from git:// because of wh=
ich now=20
> all submodules are downloaded even though all may not require.
>=20
> My question not to grpc recipes but in general when a recipe uses=C2=A0=
gitstm may=20
> have these two issues.
>=20
> 1. Unnecessarily some of the submodules/packages have to be maintained =
in=20
> localmirror even though it is not required.

In gitsm mode, where the .submodules file is used, how/who defines what i=
s and=20
isn't required?  As far as I know it's used or it's not.

To my knowledge, when you run git submodule, anything in .submodules is=20
processed.  Thus they are all 'required'.  Move from gitsm:// to git:// s=
ays=20
"I'm never going to use the .submodule file", and thus moves this ownersh=
ip from=20
the repository owner (.submodule file) to the recipe owner.

> 2. Most=C2=A0importantly, if a submodule/package is enabled by default =
internally,=20
> the package will not appear in the final manifest file and miss out in =
the final=20
> SBOM file.

If the submodules are not part of the SBOM, then it's a bug in the SBOM=20
creation.  This is a separate issue, one that should be identified and fi=
xed.

--Mark

>=20
> Regards
> Vishwa
>=20
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13254): https://lists.yoctoproject.org/g/poky/messa=
ge/13254
> Mute This Topic: https://lists.yoctoproject.org/mt/104389390/3616948
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [mark.hatle@ke=
rnel.crashing.org]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20

