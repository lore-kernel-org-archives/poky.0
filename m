Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1618B4C805A8
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 14:12:17 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 Mar 2011 12:12:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,195,1299484800"; d="scan'208";a="897981264"
Received: from unknown (HELO [10.255.12.146]) ([10.255.12.146])
	by fmsmga001.fm.intel.com with ESMTP; 16 Mar 2011 12:12:01 -0700
Message-ID: <4D810B69.4000409@linux.intel.com>
Date: Wed, 16 Mar 2011 12:11:37 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4D7E88AC.5060809@linux.intel.com>	
	<4D7E8D6B.1020209@linux.intel.com>
	<1300182015.2537.6.camel@scimitar>	
	<4D80DEC6.7000601@linux.intel.com>
	<1300291497.30423.1887.camel@rex>
In-Reply-To: <1300291497.30423.1887.camel@rex>
Cc: poky@yoctoproject.org
Subject: Re: DISTRO 'poky' not found
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
X-List-Received-Date: Wed, 16 Mar 2011 19:12:17 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 03/16/2011 09:04 AM, Richard Purdie wrote:
> On Wed, 2011-03-16 at 09:01 -0700, Darren Hart wrote:
>>
>> On 03/15/2011 02:40 AM, Joshua Lock wrote:
>>> On Mon, 2011-03-14 at 14:49 -0700, Darren Hart wrote:
>>>>
>>>> On 03/14/2011 02:29 PM, Darren Hart wrote:
>>>>> I've run into this error several times during development of various things. It will be in a build tree that I have been working with for a while, then when I come back to it, I get the following. Any idea what triggers this? I suspect something in my workflow, but I can't imagine what it would be. I'd really like to not have to delete my build tree.
>>>>>
>>>>> $ cd poky.git
>>>>> $ source poky-init-build-env build-qemux86/
>>>>>
>>>>> ### Shell environment set up for Poky builds. ###
>>>>>
>>>>> You can now run 'bitbake<target>'
>>>>>
>>>>> Common targets are:
>>>>>        poky-image-minimal
>>>>>        poky-image-sato
>>>>>        meta-toolchain
>>>>>        meta-toolchain-sdk
>>>>>
>>>>> You can also run generated qemu images with a command like 'poky-qemu qemux86'
>>>>>
>>>>> $ bitbake linux-yocto
>>>>> ERROR:  Poky's config sanity checker detected a potential misconfiguration.
>>>>>        Either fix the cause of this error or at your own risk disable the checker (see sanity.conf).
>>>>>        Following is the list of potential problems / advisories:
>>>>>
>>>>>        Please set TARGET_OS directly, or choose a MACHINE or DISTRO that does so.
>>>>> DISTRO 'poky' not found. Please set a valid DISTRO in your local.conf
>>>>
>>>>
>>>> Thanks to Beth and Mark who pointed me in the right direction. This
>>>> appears to be a problem with master, if I cherry-pick my changes on top
>>>> of the bernard branch, the build continues as expected.
>>>>
>>>
>>> Ah, our layers.conf.sample doesn't include the new meta-yocto layer. So
>>> I'm guessing this is a clean build dir?
>>
>> I believe I've seen it on both - but probably only when switching
>> branches back and forth between master and bernard.
>
> There should be a fix in master for this now though?

I believe so yes, the meta-yocto thing from Josh. I'll holler if I hit 
it again with that in place.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

