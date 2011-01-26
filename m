Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 300DC4C806DA
	for <poky@lists.pokylinux.org>; Tue, 25 Jan 2011 18:30:26 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 25 Jan 2011 16:30:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,377,1291622400"; d="scan'208";a="596465609"
Received: from unknown (HELO [10.255.14.185]) ([10.255.14.185])
	by orsmga002.jf.intel.com with ESMTP; 25 Jan 2011 16:30:16 -0800
Message-ID: <4D3F6B17.60501@linux.intel.com>
Date: Tue, 25 Jan 2011 16:30:15 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4D3D6AFC.8060300@mlbassoc.com>	 <1295872759.14388.44775.camel@rex>
	<4D3E0323.2080905@linux.intel.com> <1295995942.27814.248.camel@rex>
In-Reply-To: <1295995942.27814.248.camel@rex>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Poky on "standard" PC
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
X-List-Received-Date: Wed, 26 Jan 2011 00:30:29 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/25/2011 02:52 PM, Richard Purdie wrote:
> On Mon, 2011-01-24 at 14:54 -0800, Darren Hart wrote:
>> On 01/24/2011 04:39 AM, Richard Purdie wrote:
>>> On Mon, 2011-01-24 at 05:05 -0700, Gary Thomas wrote:
>>>> I wanted to try Poky on a spare laptop, so I went looking
>>>> for an appropriate configuration to build.
>>>>
>>>>    From 'README.hardware' (last updated 2010-12-16), I read:
>>>>      Poky Boot CD (bootcdx86)
>>>>      ========================
>>>>
>>>>      The Poky boot CD iso images are designed as a demonstration of the Poky
>>>>      environment and to show the versatile image formats Poky can generate. It will
>>>>      run on Pentium2 or greater PC style computers. The iso image can be
>>>>      burnt to CD and then booted from.
>>>>
>>>> When I tried it (it's also listed in the default local.conf),
>>>> I got this error:
>>>>      Please set TARGET_ARCH directly, or choose a MACHINE or DISTRO that does so.
>>>>      Please set a valid MACHINE in your local.conf
>>>>
>>>> There seems to be no machine named 'bootcd*' anywhere :-(
>>>>
>>>> What should I be using?
>>>
>>> bootcdx86 was superceeded by the -live images. I'd suggest using the
>>> qemux86 or atom-pc machines and building a -live image, dd that to a usb
>>> stick and boot that on the laptop. An iso format image is also generated
>>> that can be placed onto a CD.
>>
>> It will have to be atom-pc as qemu doesn't provide live images (last I
>> checked, a few weeks back).
>
> I don't see why the qemu machine wouldn't work for the live image
> variants, even if we don't build them by default on the autobuilder?

When I run:

$ MACHINE="qemux86" bitbake poky-image-minimal-live

it results it:

ERROR: 
'/home/dvhart/data/poky.git/meta/recipes-core/images/poky-image-minimal-live.bb' 
failed
ERROR: Function 'build_boot_bin' failed (see 
/vol/1/dvhart/poky.git/build/tmp/work/i586-poky-linux/poky-image-minimal-live-1.0-r0/temp/log.do_bootimg.18423 
for further information)
ERROR: Logfile of failure stored in: 
/vol/1/dvhart/poky.git/build/tmp/work/i586-poky-linux/poky-image-minimal-live-1.0-r0/temp/log.do_bootimg.18423
Log data follows:
| install: cannot stat 
`/vol/1/dvhart/poky.git/build/tmp/sysroots/qemux86-poky-linux/kernel/bzImage': 
No such file or directory
| Function 'build_boot_bin' failed (see 
/vol/1/dvhart/poky.git/build/tmp/work/i586-poky-linux/poky-image-minimal-live-1.0-r0/temp/log.do_bootimg.18423 
for further information)
| ERROR: Function 'build_boot_bin' failed (see 
/vol/1/dvhart/poky.git/build/tmp/work/i586-poky-linux/poky-image-minimal-live-1.0-r0/temp/log.do_bootimg.18423 
for further information)
NOTE: package poky-image-minimal-live-1.0-r0: task build_boot_bin: Failed
ERROR: Task 9 
(/home/dvhart/data/poky.git/meta/recipes-core/images/poky-image-minimal-live.bb, 
do_bootimg) failed with exit code '1'


--
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

