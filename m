Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2F8DE00D14; Mon, 28 Dec 2015 05:28:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,KHOP_DYNAMIC
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 KHOP_DYNAMIC Relay looks like a dynamic address
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA783E00A9C
	for <poky@yoctoproject.org>; Mon, 28 Dec 2015 05:28:45 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	tBSDShcE017723; Mon, 28 Dec 2015 13:28:43 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id KmK5dJe4qoaP; Mon, 28 Dec 2015 13:28:43 +0000 (GMT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	tBSDSeIQ017720
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Mon, 28 Dec 2015 13:28:41 GMT
Message-ID: <1451309320.4129.25.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Prasant J <pj0585@gmail.com>, Poky Project <poky@yoctoproject.org>
Date: Mon, 28 Dec 2015 13:28:40 +0000
In-Reply-To: <CAA2DH4uy0UjfP81=wJi-w-Dik7rtk+5Hhtes-Ao1TKavUmRP1g@mail.gmail.com>
References: <CAA2DH4uy0UjfP81=wJi-w-Dik7rtk+5Hhtes-Ao1TKavUmRP1g@mail.gmail.com>
X-Mailer: Evolution 3.16.5-1ubuntu3.1 
Mime-Version: 1.0
Subject: Re: bitbake variable override (virtual/kernel)
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
X-List-Received-Date: Mon, 28 Dec 2015 13:28:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2015-12-28 at 18:52 +0530, Prasant J wrote:
> Hi,
> 
> I'm putting together my custom layer with my machine configuration. I
> have set PREFERRED_PROVIDER_virtual/kernel to build my kernel but it
> is always overridden by distro configuration. Below is the output of
> bitbake environment:
> 
> 
> # $PREFERRED_PROVIDER_virtual/kernel [6 operations]
> #   set /home/user/fsl-L3.14.52_1.1.0_ga/fsl-release-bsp/sources/meta
> -fsl-arm/conf/machine/include/imx-base.inc:117
> #     [_defaultval] "linux-imx"
> #   finalize ast.py:325 [finalize]
> #     "was: linux-imx"
> #   override[mx6]:set /home/user/fsl-L3.14.52_1.1.0_ga/fsl-release
> -bsp/build-fb/conf/local.conf:26
> #     "linux-myboard-imx6"
> #   override[mx6]:set /home/user/fsl-L3.14.52_1.1.0_ga/fsl-release
> -bsp/sources/mylayer/meta-newlayer/conf/machine/mymachine.conf:17
> #     "linux-myboard-imx6"
> #   override[mx6]:set /home/user/fsl-L3.14.52_1.1.0_ga/fsl-release
> -bsp/sources/meta-fsl-bsp-release/imx/meta
> -sdk/conf/distro/include/fsl-imx-preferred-env.inc:7
> #     "linux-imx"
> #   finalize override[mx6]:
> #     "linux-imx"
> # pre-expansion value:
> #   "linux-imx"
> PREFERRED_PROVIDER_virtual/kernel="linux-imx"
> 
> From the above it seems that distro configuration overrides my custom
> machine + glocal conf/local.conf configuration.
> 
> 
> Is it expected? So should I also create a custom DISTRO?
> Is there a way to extend the DISTRO configuration and only override
> virtual/kernel value?
> 
> 
> Any input will be of help to me. Thanks!

Distro overrides are more powerful so yes, this isn't surprising. You
could disable the mx6 override (which is probably added to
MACHINEOVERRIDES or DISTROOVERRIDES)?

Something like:

MACHINEOVERRIDES_remove = ":mx6"

might even work.

Cheers,

Richard

