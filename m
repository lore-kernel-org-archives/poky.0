Return-Path: <vishwavtu@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF0D1C48260
	for <webhook@archiver.kernel.org>; Fri, 16 Feb 2024 08:32:58 +0000 (UTC)
Subject: clarification on 'gitsm://' fetcher. 
To: poky@lists.yoctoproject.org
From: "vishwanath Chandapur" <vishwavtu@gmail.com>
X-Originating-Location: Melbourne, Victoria, AU (155.190.53.7)
X-Originating-Platform: Windows Chrome 121
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 16 Feb 2024 00:32:56 -0800
Message-ID: <ixbV.1708072376356310245.WNd3@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Nyy4Q03PiKp7RfBAvnX0"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 16 Feb 2024 08:32:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13254

--Nyy4Q03PiKp7RfBAvnX0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi

In recent grpc recipe has changed to gitsm:// from git:// because of which =
now all submodules are downloaded even though all may not require.

My question not to grpc recipes but in general when a recipe uses=C2=A0gits=
tm may have these two issues.

1. Unnecessarily some of the submodules/packages have to be maintained in l=
ocalmirror even though it is not required.

2. Most=C2=A0importantly, if a submodule/package is enabled by default inte=
rnally, the package will not appear in the final manifest file and miss out=
 in the final SBOM file.

Regards
Vishwa

--Nyy4Q03PiKp7RfBAvnX0
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p style=3D"line-height: 1.42857;">Hi&nbsp;</p>
<p style=3D"line-height: 1.42857;">In recent grpc recipe has changed to git=
sm:// from git:// because of which now all submodules are downloaded even t=
hough all may not require.</p>
<p style=3D"line-height: 1.42857;">My question not to grpc recipes but in g=
eneral when a recipe uses&nbsp;gitstm may have these two issues.<br /><br /=
>1. Unnecessarily some of the submodules/packages have to be maintained in =
localmirror even though it is not required.</p>
<p style=3D"line-height: 1.42857;">&nbsp;</p>
<p style=3D"box-sizing: border-box; margin: 0px 0px 10px; overflow-wrap: br=
eak-word; line-height: 1.42857; color: #333333; font-family: 'Helvetica Neu=
e', Helvetica, Arial, sans-serif; font-size: 14px;">2. Most&nbsp;importantl=
y, if a submodule/package is enabled by default internally, the package wil=
l not appear in the final manifest file and miss out in the final SBOM file=
.</p>
<p><br />Regards<br />Vishwa</p>

--Nyy4Q03PiKp7RfBAvnX0--

