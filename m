Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 548594C800A6
	for <poky@yoctoproject.org>; Tue, 22 Feb 2011 05:13:20 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1MBDGp8028374;
	Tue, 22 Feb 2011 11:13:16 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 28104-04; Tue, 22 Feb 2011 11:13:12 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1MBDCjW028367
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 22 Feb 2011 11:13:12 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gerard van den Bosch <gerard@de-haardt.com>
In-Reply-To: <4D6397F6.4050103@de-haardt.com>
References: <4D6397F6.4050103@de-haardt.com>
Date: Tue, 22 Feb 2011 11:08:00 +0000
Message-ID: <1298372880.11289.3263.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: poky custom kernel misconfiguration
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 22 Feb 2011 11:13:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2011-02-22 at 12:03 +0100, Gerard van den Bosch wrote:
> Hello,
> 
> I am trying to build Poky for my hardware platform with a custom kernel.
> But when I build Poky it crashes by not finding a defconfig for kernel 
> 2.6.33.2-r2 which isn't the kernel I preferred to build.
> 
> This is what I have done:
> 
> Copied local.conf.sample to local.conf and changed the following:
> BB_NUMBER_THREADS = "2"
> PARALLEL_MAKE = "-j 2"
> MACHINE ?= "tao3530"
> 
> Because this is a new machine I have generated a tao3530.conf by copying 
> the beagleboard.conf because this is a similar device.
> I have changed the kernel recipe to:
> PREFERRED_PROVIDER_virtual/kernel = "TAO-PSP"
> 
> The kernel I used is normally used in Ångström for this board, but 
> because Ångström is also OpenEmbedded based I assumed I could use the 
> kernel in Poky also.
> 
> In the meta/package/linux directory I made the TAO-PSP-2.6.32 directory.
> In this directory I placed the tar.bz2 of my kernel and the defconfig 
> for my hardware platform.
> 
> I have generated a bb file containing the following:
> 
> SECTION = "kernel"
> DESCRIPTION = "TAO3530 Linux kernel"
> LICENSE = "GPL"
> 
> KERNEL_OUTPUT = "arch/${ARCH}/boot/${KERNEL_IMAGETYPE}"
> 
> inherit kernel
> 
> COMPATIBLE_MACHINE = "tao3530"
> 
> PR = "r1"
> 
> SRC_URI = "file://TAO-PSP-03000106.tar.bz2 \
>                          file://defconfig"
> 
> S = "${WORKDIR}/linux-2.6.32"
> 
> Can someone point me out what I did wrong or what I have forgot to 
> configure or where to look to find out what I did wrong.

What did you call the .bb file?

Cheers,

Richard


