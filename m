Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3D60E0034A; Thu, 19 Feb 2015 01:22:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4073FE0033D;
	Thu, 19 Feb 2015 01:22:13 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t1J9MAwY015473; Thu, 19 Feb 2015 09:22:10 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 5oFzCk9t7sk1; Thu, 19 Feb 2015 09:22:10 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t1J9LsXa015469
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 19 Feb 2015 09:22:05 GMT
Message-ID: <1424337714.11836.26.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: suneet saini <suneet.saini@gmail.com>
Date: Thu, 19 Feb 2015 09:21:54 +0000
In-Reply-To: <CAAxKdCh6p+9nxGmayUjcLLsDF-Ka98AMZZtXEUMusSCaXvM=Cw@mail.gmail.com>
References: <CAAxKdCh6p+9nxGmayUjcLLsDF-Ka98AMZZtXEUMusSCaXvM=Cw@mail.gmail.com>
X-Mailer: Evolution 3.12.7-0ubuntu1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org, linux-yocto@yoctoproject.org
Subject: Re: Kernel Panic : Not Syncing : Exit code 0x00000004
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
X-List-Received-Date: Thu, 19 Feb 2015 09:22:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2015-02-19 at 11:43 +0530, suneet saini wrote:
>           I am using the 'hob' from poky and building the image by
> selecting the machine as "qemuarm". Initially this file having
> architecture as followed 
> qemuarm.conf
> +++++++++++++++++++++++++++++++++++++++
> #@TYPE: Machine
> #@NAME: arm_versatile_926ejs
> #@DESCRIPTION: arm_versatile_926ejs
> 
> require conf/machine/include/qemu.inc
> require conf/machine/include/tune-arm926ejs.inc
> #require conf/machine/include/tune-arm1136jf-s.inc
> 
> KERNEL_IMAGETYPE = "zImage"
> 
> SERIAL_CONSOLE = "115200 ttyAMA0"
> +++++++++++++++++++++++++++++++++++++++
> 
> 
> After building the image with "core-image-minimal" or
> "core-image-full-cmdline" while running the image with qemu it works
> fine.  I want to change qemu working for "arm v7a" means support
> "Cortex A8". That's why for this I make the changes in qemuarm.conf as
> in the "~/poky/meta/conf/machine.conf"
> 
> qemuarm.conf
> +++++++++++++++++++++++++++++++++++++++
> 
> require conf/machine/include/qemu.inc
> require conf/machine/include/tune-cortexa8.inc
> 
> KERNEL_IMAGETYPE = "zImage"
> 
> SERIAL_CONSOLE = "115200 ttyAMA0"
> +++++++++++++++++++++++++++++++++++++++
> 
> 
> After that I am building the image and running it with qemu; I am
> getting the kernel panic.
> 
> 
> Kernel Panic - not syncing : Attempting to kill Init!
> exitcode=0x00000004  
> 
Its very likely that the system sees an "invalid" instruction and is
panicking as a result.

For armv7a you'll need to ensure you pass the correct -cpu option to
qemu to make this work. By default it will only use am armv5 capable CPU
(since this is what qemuarm builds).

Cheers,

Richard





