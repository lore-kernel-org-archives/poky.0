Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 38B2E4C81146
	for <poky@lists.pokylinux.org>; Wed, 26 Jan 2011 18:02:16 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 26 Jan 2011 16:02:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,382,1291622400"; d="scan'208";a="651543167"
Received: from unknown (HELO [10.255.14.182]) ([10.255.14.182])
	by fmsmga002.fm.intel.com with ESMTP; 26 Jan 2011 16:02:15 -0800
Message-ID: <4D40B5FA.5000005@linux.intel.com>
Date: Wed, 26 Jan 2011 16:02:02 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4D40251F.5070906@mlbassoc.com> <4D40919E.6010802@linux.intel.com>
	<4D409B30.9070000@mlbassoc.com>
In-Reply-To: <4D409B30.9070000@mlbassoc.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: No joy on "standard" PC
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
X-List-Received-Date: Thu, 27 Jan 2011 00:02:16 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/26/2011 02:07 PM, Gary Thomas wrote:
> On 01/26/2011 02:26 PM, Darren Hart wrote:
>> On 01/26/2011 05:43 AM, Gary Thomas wrote:
>>> I finally got Poky to build for a standard PC (actually atom-pc
>>> so I could build a live/bootable image). Sadly, that's all I
>>> have is an image as I can't get it to run anywhere :-(
>>>
>>> * On my laptop (the point of this exercise) which is an older
>>> Pentium-III machine, the kernel crashes almost immediately.
>>
>> Can you capture the output and provide some details on the hardware?
>
> Hard to do - I took pictures of the screen with my camera, the results
> may help, but won't win me a Pulitzer :-)
>
> On the AMD/2800+
> http://www.mlbassoc.com/poky/BootFailures/P1000630.JPG
> On the old Pentium-III laptop
> http://www.mlbassoc.com/poky/BootFailures/P1000631.JPG

Failing to mount the root partition either due to missing drivers for 
the block device or the filesystem. You said this was MACHINE=atom-pc 
and poky-image-sato-live? And you're booting using the .iso image burned 
to a CD?

> http://www.mlbassoc.com/poky/BootFailures/P1000632.JPG

Too late, missed the good bits. I suspect the two above are adequate.

>>
>>>
>>> * On my brand new laptop (Core-i3), I couldn't get it to even
>>> try...
>>
>> What happened? Some bios are very particular about usb layout, see
>> README.hardware under atom-pc. Some (including my netbook) require
>> that it be in USB-ZIP format, so you can't just dd the image to
>> the stick in some cases (unfortunately).
>
> My boot medium is a CD-RW with the ISO image.
> Not sure why it didn't want to boot before, but when I just retried
> it, it hung in yet a different way.
> http://www.mlbassoc.com/poky/BootFailures/P1000629.JPG

If I'm reading this one correctly, it's failing to boot from the USB 
device and later detects another drive (My Passport) which has something 
other than a standard ext[23] filesystem on the first partition.

>
>>
>>>
>>> * On a VirtualBox machine, it boots but then sits forever
>>> "waiting for removable media"...
>>
>> Can you share the messages leading up to this? Is it trying to mount
>> ram0?
>>
> http://www.mlbassoc.com/poky/BootFailures/poky-hangs.png
>

This I haven't tried... hrm...

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

