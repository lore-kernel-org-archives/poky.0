Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2E2C34C80050
	for <poky@lists.pokylinux.org>; Mon, 21 Mar 2011 15:47:50 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 21 Mar 2011 13:47:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,221,1299484800"; d="scan'208";a="615836019"
Received: from doubt.jf.intel.com (HELO [10.7.199.86]) ([10.7.199.86])
	by orsmga002.jf.intel.com with ESMTP; 21 Mar 2011 13:47:49 -0700
Message-ID: <4D87B974.1040704@linux.intel.com>
Date: Mon, 21 Mar 2011 13:47:48 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4D876DD3.5070106@mlbassoc.com>	
	<1300722848.30423.3751.camel@rex>	<4D877E6B.9000007@mlbassoc.com>
	<1300730269.30423.3975.camel@rex> <4D879643.7000908@mlbassoc.com>
In-Reply-To: <4D879643.7000908@mlbassoc.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Using RPM with Poky
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
X-List-Received-Date: Mon, 21 Mar 2011 20:47:50 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



On 03/21/2011 11:17 AM, Gary Thomas wrote:
> On 03/21/2011 11:57 AM, Richard Purdie wrote:
>> On Mon, 2011-03-21 at 10:35 -0600, Gary Thomas wrote:
>>> On 03/21/2011 09:54 AM, Richard Purdie wrote:
>>>> On Mon, 2011-03-21 at 09:25 -0600, Gary Thomas wrote:
>>>>> I'm trying to do some testing with Poky on an atom-PC. I thought
>>>>> I'd try with a minimal system and then add pieces I need. Sadly,
>>>>> I've run aground doing this. I've built a couple of images with
>>>>> varying results:
>>>>> poky-image-minimal-live - boots on my box
>>>>> poky-image-sato-live - boots, but fails to find X display, then
>>>>> hangs (*)
>>>>>
>>>>> There seem to be no RPM tools on the minimal image. Did I miss
>>>>> something?
>>>>> On my old, ipk based system, I'd build up a minimal image then use
>>>>> opkg
>>>>> to install additional packages.
>>>>
>>>> Minimal images were never meant to ship with the package manager and
>>>> now
>>>> don't. You can obviously change the image definitions easily enough as
>>>> needed.
>>>>
>>>>> How do I do that with the RPM based images?
>>>>
>>>> The same switch turns on/off the package manager data for rpm and opkg.
>>>
>>> I tried adding this to local.conf, but nothing changed when I build
>>> minimal image:
>>> IMAGE_FEATURES += " package-management ssh-server-dropbear "
>>
>> There is also this:
>>
>> # remove not needed ipkg informations
>> ROOTFS_POSTPROCESS_COMMAND += "remove_packaging_data_files ; "
>>
>> in poky-image-minimal.bbclass which has been there for a long time and
>> removes the package manager data files.
>
> I guess I'm just used to my own minimal image which does have all these
> present.
>
>>
>>> BTW, where is this documented? Not in the Poky handbook from what I
>>> can tell.
>>>
>>> Also, is there documentation on how to use zypper, how to set up
>>> repositories, etc?
>>
>> I think others have helped here. Please do send patches for the manual
>> when people go to the trouble of finding information to help though!
>
> I'll see what I can do to help with this.
>
>>>>> I've checked the documentation and there's basically nothing
>>>>> about this, unless I looked in the wrong place.
>>>>>
>>>>> Any ideas or pointers gladly accepted. Thanks
>>>>>
>>>>> (*) I had success with this in the past when I booted with
>>>>> MACHINE=emenlow
>>>>> but that hardware isn't in the primary list.
>>>>
>>>> I'm not sure why this isn't working or what the problem might be...
>>>
>>> It complains it can't find /dev/fb0. See the boot log at
>>> http://www.mlbassoc.com/poky/boot_2011-03-21.log
>>
>> Does your board have Intel graphics or PVR/SGX? emenlow has PVR/SGX
>> which might explain this...
>
> I'm not familiar with the details - it's an older Atom with the Poulsbo
> chipset.
> The details (cpuinfo, lspci) are at
> http://www.mlbassoc.com/poky/cpu_2011-03-21.info
> The kernel is also not finding my SATA controller - should I expect that
> to work?

I'd suggest trying the meta-emenlow BSP from the meta-intel layer and 
see if you make it further as it also uses the Poulsbo chipset. Tom Z. 
on CC as he has the most experience with that BSP.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

