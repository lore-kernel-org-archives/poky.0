Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E0E0E00B66; Mon, 28 Dec 2015 07:29:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,KHOP_DYNAMIC
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 KHOP_DYNAMIC Relay looks like a dynamic address
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE69AE008C8
	for <poky@yoctoproject.org>; Mon, 28 Dec 2015 07:29:14 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	tBSFTCMP020772; Mon, 28 Dec 2015 15:29:12 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id PSjGD6U7is_N; Mon, 28 Dec 2015 15:29:12 +0000 (GMT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	tBSFT6lK020769
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Mon, 28 Dec 2015 15:29:07 GMT
Message-ID: <1451316546.4129.29.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Prasant J <pj0585@gmail.com>
Date: Mon, 28 Dec 2015 15:29:06 +0000
In-Reply-To: <CAA2DH4vhzir6+cuqzPLE3S-DW4aAYdShRxG9oAGYJz+04JrX-w@mail.gmail.com>
References: <CAA2DH4uy0UjfP81=wJi-w-Dik7rtk+5Hhtes-Ao1TKavUmRP1g@mail.gmail.com>
	<1451309320.4129.25.camel@linuxfoundation.org>
	<CAA2DH4vhzir6+cuqzPLE3S-DW4aAYdShRxG9oAGYJz+04JrX-w@mail.gmail.com>
X-Mailer: Evolution 3.16.5-1ubuntu3.1 
Mime-Version: 1.0
Cc: Poky Project <poky@yoctoproject.org>
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
X-List-Received-Date: Mon, 28 Dec 2015 15:29:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2015-12-28 at 20:54 +0530, Prasant J wrote:
> On Mon, Dec 28, 2015 at 6:58 PM, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:

> Thanks for inputs!
> 
> I'm also building for imx6. Removing override may remove many other
> settings that I do not want to change.
> 
> Is it possible to extend DISTRO configuration and change
> PREFERRED_PROVIDER_virtual/kernel in the  extended configuration?

Its possible but I don't think it will do what you need. You really
need an override stronger than imx6. To be honest, I'm not sure this
"distro" include should be defining these as such strong overrides, its
really a machine setting, not a distro setting.

Anyhow, you could define your own override in MACHINEOVERRIDES or
DISTROOVERIDES which would be defined at a higher priority that the
imx6 one, then set

PREFERRED_PROVIDER_virtual/kernel_<OVERRIDE> = "x"

MACHINE is an override, so you could try that in there too:

PREFERRED_PROVIDER_virtual/kernel_<MACHINE> = "x"

Cheers,

Richard

