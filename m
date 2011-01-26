Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9B2F44C81146
	for <poky@lists.pokylinux.org>; Wed, 26 Jan 2011 13:31:17 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 26 Jan 2011 11:31:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,381,1291622400"; d="scan'208";a="380317470"
Received: from unknown (HELO [10.255.14.182]) ([10.255.14.182])
	by azsmga001.ch.intel.com with ESMTP; 26 Jan 2011 11:31:16 -0800
Message-ID: <4D407679.4040403@linux.intel.com>
Date: Wed, 26 Jan 2011 11:31:05 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4D3D6AFC.8060300@mlbassoc.com>	
	<1295872759.14388.44775.camel@rex>	<4D3E0323.2080905@linux.intel.com>
	<1295995942.27814.248.camel@rex> <4D3F6B17.60501@linux.intel.com>
	<4D3F7AC8.4030102@mlbassoc.com>
In-Reply-To: <4D3F7AC8.4030102@mlbassoc.com>
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
X-List-Received-Date: Wed, 26 Jan 2011 19:31:17 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/25/2011 05:37 PM, Gary Thomas wrote:
> On 01/25/2011 05:30 PM, Darren Hart wrote:
>> On 01/25/2011 02:52 PM, Richard Purdie wrote:
>>> On Mon, 2011-01-24 at 14:54 -0800, Darren Hart wrote:
>>>> On 01/24/2011 04:39 AM, Richard Purdie wrote:
>>>>> On Mon, 2011-01-24 at 05:05 -0700, Gary Thomas wrote:
>>>>>> I wanted to try Poky on a spare laptop, so I went looking
>>>>>> for an appropriate configuration to build.
>>>>>>
>>>>>> From 'README.hardware' (last updated 2010-12-16), I read:
>>>>>> Poky Boot CD (bootcdx86)
>>>>>> ========================
>>>>>>
>>>>>> The Poky boot CD iso images are designed as a demonstration of the
>>>>>> Poky
>>>>>> environment and to show the versatile image formats Poky can
>>>>>> generate. It will
>>>>>> run on Pentium2 or greater PC style computers. The iso image can be
>>>>>> burnt to CD and then booted from.
>>>>>>
>>>>>> When I tried it (it's also listed in the default local.conf),
>>>>>> I got this error:
>>>>>> Please set TARGET_ARCH directly, or choose a MACHINE or DISTRO
>>>>>> that does so.
>>>>>> Please set a valid MACHINE in your local.conf
>>>>>>
>>>>>> There seems to be no machine named 'bootcd*' anywhere :-(
>>>>>>
>>>>>> What should I be using?
>>>>>
>>>>> bootcdx86 was superceeded by the -live images. I'd suggest using the
>>>>> qemux86 or atom-pc machines and building a -live image, dd that to
>>>>> a usb
>>>>> stick and boot that on the laptop. An iso format image is also
>>>>> generated
>>>>> that can be placed onto a CD.
>>>>
>>>> It will have to be atom-pc as qemu doesn't provide live images (last I
>>>> checked, a few weeks back).
>>>
>>> I don't see why the qemu machine wouldn't work for the live image
>>> variants, even if we don't build them by default on the autobuilder?
>>
>> When I run:
>>
>> $ MACHINE="qemux86" bitbake poky-image-minimal-live
>>
>> it results it:
>>
>> ERROR:
>> '/home/dvhart/data/poky.git/meta/recipes-core/images/poky-image-minimal-live.bb'
>> failed
>> ERROR: Function 'build_boot_bin' failed (see
>> /vol/1/dvhart/poky.git/build/tmp/work/i586-poky-linux/poky-image-minimal-live-1.0-r0/temp/log.do_bootimg.18423
>> for further information)
>> ERROR: Logfile of failure stored in:
>> /vol/1/dvhart/poky.git/build/tmp/work/i586-poky-linux/poky-image-minimal-live-1.0-r0/temp/log.do_bootimg.18423
>>
>> Log data follows:
>> | install: cannot stat
>> `/vol/1/dvhart/poky.git/build/tmp/sysroots/qemux86-poky-linux/kernel/bzImage':
>> No such file or directory
>> | Function 'build_boot_bin' failed (see
>> /vol/1/dvhart/poky.git/build/tmp/work/i586-poky-linux/poky-image-minimal-live-1.0-r0/temp/log.do_bootimg.18423
>> for further information)
>> | ERROR: Function 'build_boot_bin' failed (see
>> /vol/1/dvhart/poky.git/build/tmp/work/i586-poky-linux/poky-image-minimal-live-1.0-r0/temp/log.do_bootimg.18423
>> for further information)
>> NOTE: package poky-image-minimal-live-1.0-r0: task build_boot_bin: Failed
>> ERROR: Task 9
>> (/home/dvhart/data/poky.git/meta/recipes-core/images/poky-image-minimal-live.bb,
>> do_bootimg) failed with exit code '1'
>
> This worked for me. Are you sure your repo is up to date?
> I think the fix was in
> commit bc9d2fbfd4eaad0df5647dd5d07dfb9fcff80ff3
> Author: Dongxiao Xu <dongxiao.xu@intel.com>
> Date: Tue Jan 18 16:17:58 2011 +0800

I did have the above patch, but refreshing again to master's HEAD and 
rebuilding seems to have worked. I also purged tmp and sstate, perhaps I 
had something stuck in there.


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

