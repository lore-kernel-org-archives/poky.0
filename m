Return-Path: <pj0585@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 184E0E00D0F; Mon, 28 Dec 2015 05:22:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pj0585[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3299BE00A9C
	for <poky@yoctoproject.org>; Mon, 28 Dec 2015 05:22:05 -0800 (PST)
Received: by mail-wm0-f50.google.com with SMTP id l126so263810846wml.0
	for <poky@yoctoproject.org>; Mon, 28 Dec 2015 05:22:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=YRLkTWiKfbsMy+yEjexk4CDwswLELQgikJ7AuTbCMrs=;
	b=Iq+C84nJPFRF9xqvUXzU1L5je0U5BNGbmPOjkM1n1piA9Y+7EUgmUw4tkEqgubSYX5
	eh7RfejRL5cr0pk8Pef6rGcF1HNH701PVvQtC4L3z7e9BzwoiKQ7R7LJDTX/sBGi4CjR
	mrmqQhYpAdTtztBMOURZ05oE0goGodyFnC71bbszGjExaKXegBjf6KlZtAxruT/HtoDA
	e6jl9N+TMTONg3Cu71MTHlsMUeoePzEU70qWtZ/WBzbwA0+vO8Y7NIquppVRRFjYzNeO
	81ireFKjgEbTHYE97jRqL+089O4XXEUi8BvzAsj3PuFteUUuOZViYB1ilcO0tHsiHbor
	KkIg==
MIME-Version: 1.0
X-Received: by 10.194.87.39 with SMTP id u7mr58118607wjz.11.1451308924676;
	Mon, 28 Dec 2015 05:22:04 -0800 (PST)
Received: by 10.28.215.132 with HTTP; Mon, 28 Dec 2015 05:22:04 -0800 (PST)
Date: Mon, 28 Dec 2015 18:52:04 +0530
Message-ID: <CAA2DH4uy0UjfP81=wJi-w-Dik7rtk+5Hhtes-Ao1TKavUmRP1g@mail.gmail.com>
From: Prasant J <pj0585@gmail.com>
To: Poky Project <poky@yoctoproject.org>
Subject: bitbake variable override (virtual/kernel)
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 28 Dec 2015 13:22:07 -0000
Content-Type: multipart/alternative; boundary=089e0102def4ea34190527f530ee

--089e0102def4ea34190527f530ee
Content-Type: text/plain; charset=UTF-8

Hi,

I'm putting together my custom layer with my machine configuration. I have
set PREFERRED_PROVIDER_virtual/kernel to build my kernel but it is always
overridden by distro configuration. Below is the output of bitbake
environment:


# $PREFERRED_PROVIDER_virtual/kernel [6 operations]
#   set
/home/user/fsl-L3.14.52_1.1.0_ga/fsl-release-bsp/sources/meta-fsl-arm/conf/machine/include/imx-base.inc:117
#     [_defaultval] "linux-imx"
#   finalize ast.py:325 [finalize]
#     "was: linux-imx"
#   override[mx6]:set
/home/user/fsl-L3.14.52_1.1.0_ga/fsl-release-bsp/build-fb/conf/local.conf:26
#     "linux-myboard-imx6"
#   override[mx6]:set
/home/user/fsl-L3.14.52_1.1.0_ga/fsl-release-bsp/sources/mylayer/meta-newlayer/conf/machine/mymachine.conf:17
#     "linux-myboard-imx6"
#   override[mx6]:set
/home/user/fsl-L3.14.52_1.1.0_ga/fsl-release-bsp/sources/meta-fsl-bsp-release/imx/meta-sdk/conf/distro/include/fsl-imx-preferred-env.inc:7
#     "linux-imx"
#   finalize override[mx6]:
#     "linux-imx"
# pre-expansion value:
#   "linux-imx"
PREFERRED_PROVIDER_virtual/kernel="linux-imx"



From the above it seems that distro configuration overrides my custom
machine + glocal conf/local.conf configuration.


Is it expected? So should I also create a custom DISTRO?
Is there a way to extend the DISTRO configuration and only override
virtual/kernel value?


Any input will be of help to me. Thanks!


Regards

--089e0102def4ea34190527f530ee
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m putting together my custom =
layer with my machine configuration. I have set PREFERRED_PROVIDER_virtual/=
kernel to build my kernel but it is always overridden by distro configurati=
on. Below is the output of bitbake environment:</div><div><br></div><div><b=
r></div><div><div># $PREFERRED_PROVIDER_virtual/kernel [6 operations]</div>=
<div># =C2=A0 set /home/user/fsl-L3.14.52_1.1.0_ga/fsl-release-bsp/sources/=
meta-fsl-arm/conf/machine/include/imx-base.inc:117</div><div># =C2=A0 =C2=
=A0 [_defaultval] &quot;linux-imx&quot;</div><div># =C2=A0 finalize ast.py:=
325 [finalize]</div><div># =C2=A0 =C2=A0 &quot;was: linux-imx&quot;</div><d=
iv># =C2=A0 override[mx6]:set /home/user/fsl-L3.14.52_1.1.0_ga/fsl-release-=
bsp/build-fb/conf/local.conf:26</div><div># =C2=A0 =C2=A0 &quot;linux-myboa=
rd-imx6&quot;</div><div># =C2=A0 override[mx6]:set /home/user/fsl-L3.14.52_=
1.1.0_ga/fsl-release-bsp/sources/mylayer/meta-newlayer/conf/machine/mymachi=
ne.conf:17</div><div># =C2=A0 =C2=A0 &quot;linux-myboard-imx6&quot;</div><d=
iv># =C2=A0 override[mx6]:set /home/user/fsl-L3.14.52_1.1.0_ga/fsl-release-=
bsp/sources/meta-fsl-bsp-release/imx/meta-sdk/conf/distro/include/fsl-imx-p=
referred-env.inc:7</div><div># =C2=A0 =C2=A0 &quot;linux-imx&quot;</div><di=
v># =C2=A0 finalize override[mx6]:</div><div># =C2=A0 =C2=A0 &quot;linux-im=
x&quot;</div><div># pre-expansion value:</div><div># =C2=A0 &quot;linux-imx=
&quot;</div><div>PREFERRED_PROVIDER_virtual/kernel=3D&quot;linux-imx&quot;<=
/div></div><div><br></div><div><br></div><div><br></div><div>From the above=
 it seems that distro configuration overrides my custom machine + glocal co=
nf/local.conf configuration.</div><div><br></div><div><br></div><div>Is it =
expected? So should I also create a custom DISTRO?</div><div>Is there a way=
 to extend the DISTRO configuration and only override virtual/kernel value?=
</div><div><br></div><div><br></div><div>Any input will be of help to me. T=
hanks!</div><div><br></div><div><br></div><div>Regards</div></div>

--089e0102def4ea34190527f530ee--
