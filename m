Return-Path: <kgy@teledigit.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 054A3E00858; Thu, 25 Dec 2014 03:57:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 494 seconds by postgrey-1.32 at yocto-www;
	Thu, 25 Dec 2014 03:56:56 PST
Received: from teledigit.eu (teledigit.eu [195.56.148.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89459E00344
	for <poky@yoctoproject.org>; Thu, 25 Dec 2014 03:56:56 -0800 (PST)
X-AuthUser: kgy@teledigit.eu
Received: from [192.168.0.11] ([46.139.69.38]:53426)
	by teledigit.eu with [XMail 1.27 ESMTP Server]
	id <S58F60> for <poky@yoctoproject.org> from <kgy@teledigit.eu>;
	Thu, 25 Dec 2014 12:48:38 +0100
Message-ID: <549BF90A.40109@teledigit.eu>
Date: Thu, 25 Dec 2014 12:46:18 +0100
From: =?ISO-8859-2?Q?K=F6vesdi_Gy=F6rgy?= <kgy@teledigit.eu>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.2.0
MIME-Version: 1.0
To: beagleboard@googlegroups.com, poky@yoctoproject.org, 
	angstrom-distro-devel@linuxtogo.org
Subject: Building kernel for Beagleboard-C4
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
X-List-Received-Date: Thu, 25 Dec 2014 11:57:00 -0000
Content-Type: text/plain; charset=iso-8859-2; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I tried to build image for my Beagleboard-C4 using the recent version of 
Angstrom and Yoctoproject/Poky, but got the following problem:
I compiled all kernels I found compatible with my board: 3.2, 3.3, 3.4, 
3.7, 3.8, 3.14, including mainline and ti-staging, but none of them 
running on my board. The result is the same for all:

--------------- 8< -------------------
...
Loading file "/boot/uImage" from mmc device 0:2 (xxa2)
3394824 bytes read
Booting from mmc ...
## Booting kernel from Legacy Image at 80200000 ...
    Image Name:   Linux-3.3.7
    Image Type:   ARM Linux Kernel Image (uncompressed)
    Data Size:    3394760 Bytes = 3.2 MiB
    Load Address: 80008000
    Entry Point:  80008000
    Verifying Checksum ... OK
    Loading Kernel Image ... OK
OK

Starting kernel ...

Uncompressing Linux... done, booting the kernel.
--------------- 8< -------------------

No more output, heartbeat LED is not blinking.

Except the version 3.14.25: it runs perfectly, but I could not compile 
the package omap3-sgx-modules because it seems incompatible with this 
kernel (4.05, 4.09, 5.01 versions). I can compile it with older kernels 
(using the 4.09 version) but they do not run at all.

How can I build a working kernel+omap3-sgx-modules? Some years ago it 
worked for me.

Thanx in advance
Gyorgy Kovesdi


