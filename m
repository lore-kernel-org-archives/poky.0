Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 228C94C800C0
	for <poky@pokylinux.org>; Wed, 15 Jun 2011 11:38:57 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 15 Jun 2011 09:38:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,370,1304319600"; d="scan'208";a="16603722"
Received: from unknown (HELO [10.255.13.47]) ([10.255.13.47])
	by fmsmga002.fm.intel.com with ESMTP; 15 Jun 2011 09:38:56 -0700
Message-ID: <4DF8E01F.8040209@linux.intel.com>
Date: Wed, 15 Jun 2011 09:38:55 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: gmane@reliableembeddedsystems.com
References: <it8ite$i96$1@dough.gmane.org> <4DF80B84.9000304@linux.intel.com>
	<4DF890F0.1020307@reliableembeddedsystems.com>
In-Reply-To: <4DF890F0.1020307@reliableembeddedsystems.com>
Cc: poky@pokylinux.org
Subject: Re: bernard 5.0.1 and beagle-xm rev c
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
X-List-Received-Date: Wed, 15 Jun 2011 16:38:57 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 06/15/2011 04:01 AM, Robert Berger wrote:
> Hi,
> 
> On 06/15/2011 04:31 AM, Darren Hart wrote:
>>
>> Does USB work in general on Rev C?
>>
>> --
>> Darren
>>
> 
> I built a minimal-image + usbutils
> 
> REV A3 with poky:
> 
> root@beagleboard:~# lsusb
> Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
> Bus 001 Device 002: ID 0424:9514 Standard Microsystems Corp.
> Bus 001 Device 003: ID 0424:ec00 Standard Microsystems Corp.
> 
> REV C with Angstrom:
> 
> root@beagleboard:~# lsusb
> Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
> Bus 002 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
> Bus 002 Device 002: ID 0424:9514 Standard Microsystems Corp.
> Bus 002 Device 003: ID 0424:ec00 Standard Microsystems Corp.
> 
> REV C with poky:
> 
> root@beagleboard:~# lsusb
> Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
> 
> This looks like the USB hub on Bus 002 is not found and hence there is
> also no Ethernet, which fits somehow into what I've found on
> http://beagleboard.org/support/faq
> 
> # What do I need to do to get my software running on a BeagleBoard-xM rev C?

At the Bernard release I don't believe we had support for the xM rev C
(it supported at least up to xM rev A). I am currently working on a
refresh of the Beagleboard BSP in meta-yocto which does support rev C.
For details on that effort and it's status, please see:

https://lists.yoctoproject.org/pipermail/yocto/2011-June/001599.html


> Judging from the u-boot output I think it needs to be patched:
> Beagle unknown 0x02

Indeed.

> 
> u-boot which comes with Angstrom:
> Beagle xM Rev C
> 
> I'm sure Koen can tell us more about this and also what patches should
> be applied where;)

Both Koen and Jason K. have been helping to get the right bits merged
for the kernel. I had hoped to use mainline u-boot, but it appears we
may need at least a set of patches in support of Rev C.

The updated BSP will be released with 1.1. My patches and commits will
of course hit the list before then and you can build from master once
they arrive there. Within a week I suspect.

--
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

