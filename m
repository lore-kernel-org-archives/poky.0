Return-Path: <nicolas.wirth@speedgoat.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87A0CC30659
	for <webhook@archiver.kernel.org>; Wed, 26 Jun 2024 11:39:19 +0000 (UTC)
Subject: Re: Issue with Dynamic Linker and Python Dependency in Yocto SDK Setup
To: poky@lists.yoctoproject.org
From: "Nicolas Wirth" <nicolas.wirth@speedgoat.ch>
X-Originating-Location: Baechli, Nidwalden, CH (146.4.107.86)
X-Originating-Platform: Windows Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 26 Jun 2024 04:39:17 -0700
References: <05e7aa305fe8079714a10d46de3c0be5bc73ca11.camel@linuxfoundation.org>
In-Reply-To: <05e7aa305fe8079714a10d46de3c0be5bc73ca11.camel@linuxfoundation.org>
Message-ID: <22089.1719401957838896417@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="k50SJMR0KYVVfoDKHB4s"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 26 Jun 2024 11:39:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13398

--k50SJMR0KYVVfoDKHB4s
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

An other idea would be to create a static toolchain, with a static cross-co=
mpiler. Is this a possibility ? I had a look at those options but none of t=
hem seems to be working:

EXTRA_OECONF : remove =3D "--disable-static"
EXTRA_OECONF : append =3D " --enable-static"

EXTRA_OECONF : remove =3D "--enable-shared"
EXTRA_OECONF : append =3D " --disable-static"

DISABLE_STATIC =3D ""

BUILDSDK_CFLAGS : append =3D " -static"
BUILDSDK_CXXFLAGS : append =3D " -static"
BUILDSDK_LDFLAGS : append =3D " -static"

--k50SJMR0KYVVfoDKHB4s
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>An other idea would be to create a static toolchain, with a static cross=
-compiler. Is this a possibility ? I had a look at those options but none o=
f them seems to be working:</p>
<div style=3D"color: #333333; background-color: #f5f5f5; font-family: 'JetB=
rains Mono', Consolas, 'Courier New', monospace; font-weight: normal; font-=
size: 14px; line-height: 19px; white-space: pre;">
<div><span style=3D"color: #7a3e9d;">EXTRA_OECONF</span><span style=3D"colo=
r: #333333;">:</span><span style=3D"color: #4b69c6;">remove</span><span sty=
le=3D"color: #333333;"> </span><span style=3D"color: #777777;">=3D</span><s=
pan style=3D"color: #333333;"> </span><span style=3D"color: #448c27;">"--di=
sable-static"</span></div>
<div><span style=3D"color: #7a3e9d;">EXTRA_OECONF</span><span style=3D"colo=
r: #333333;">:</span><span style=3D"color: #4b69c6;">append</span><span sty=
le=3D"color: #333333;"> </span><span style=3D"color: #777777;">=3D</span><s=
pan style=3D"color: #333333;"> </span><span style=3D"color: #448c27;">" --e=
nable-static"</span></div>
<br />
<div><span style=3D"color: #7a3e9d;">EXTRA_OECONF</span><span style=3D"colo=
r: #333333;">:</span><span style=3D"color: #4b69c6;">remove</span><span sty=
le=3D"color: #333333;"> </span><span style=3D"color: #777777;">=3D</span><s=
pan style=3D"color: #333333;"> </span><span style=3D"color: #448c27;">"--en=
able-shared"</span></div>
<div><span style=3D"color: #7a3e9d;">EXTRA_OECONF</span><span style=3D"colo=
r: #333333;">:</span><span style=3D"color: #4b69c6;">append</span><span sty=
le=3D"color: #333333;"> </span><span style=3D"color: #777777;">=3D</span><s=
pan style=3D"color: #333333;"> </span><span style=3D"color: #448c27;">" --d=
isable-static"</span></div>
<br />
<div><span style=3D"color: #7a3e9d;">DISABLE_STATIC</span><span style=3D"co=
lor: #333333;"> </span><span style=3D"color: #777777;">=3D</span><span styl=
e=3D"color: #333333;"> </span><span style=3D"color: #448c27;">""</span></di=
v>
<br />
<div><span style=3D"color: #7a3e9d;">BUILDSDK_CFLAGS</span><span style=3D"c=
olor: #333333;">:</span><span style=3D"color: #4b69c6;">append</span><span =
style=3D"color: #333333;"> </span><span style=3D"color: #777777;">=3D</span=
><span style=3D"color: #333333;"> </span><span style=3D"color: #448c27;">" =
-static"</span></div>
<div><span style=3D"color: #7a3e9d;">BUILDSDK_CXXFLAGS</span><span style=3D=
"color: #333333;">:</span><span style=3D"color: #4b69c6;">append</span><spa=
n style=3D"color: #333333;"> </span><span style=3D"color: #777777;">=3D</sp=
an><span style=3D"color: #333333;"> </span><span style=3D"color: #448c27;">=
" -static"</span></div>
<div><span style=3D"color: #7a3e9d;">BUILDSDK_LDFLAGS</span><span style=3D"=
color: #333333;">:</span><span style=3D"color: #4b69c6;">append</span><span=
 style=3D"color: #333333;"> </span><span style=3D"color: #777777;">=3D</spa=
n><span style=3D"color: #333333;"> </span><span style=3D"color: #448c27;">"=
 -static"</span></div>
</div>

--k50SJMR0KYVVfoDKHB4s--

