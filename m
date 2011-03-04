Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 61D854C80772
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 22:40:18 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 03 Mar 2011 20:40:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,262,1297065600"; d="scan'208";a="893667476"
Received: from unknown (HELO [10.255.12.133]) ([10.255.12.133])
	by fmsmga001.fm.intel.com with ESMTP; 03 Mar 2011 20:39:44 -0800
Message-ID: <4D706D10.4050809@linux.intel.com>
Date: Thu, 03 Mar 2011 20:39:44 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <b9dded$i440ij@orsmga002.jf.intel.com>	<4D6FC6E0.3070303@mlbassoc.com>
	<4D6FC8E4.3020400@mlbassoc.com>
In-Reply-To: <4D6FC8E4.3020400@mlbassoc.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/2] module: build and clean hostprogs for each module
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
X-List-Received-Date: Fri, 04 Mar 2011 04:40:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/03/2011 08:59 AM, Gary Thomas wrote:
> On 03/03/2011 09:50 AM, Gary Thomas wrote:
>> On 03/02/2011 11:00 AM, Darren Hart wrote:
>>> From: Darren Hart<dvhart@linux.intel.com>
>>>
>>> This fixes [BUGID #241]
>>>
>>> The kernel hostprogs are built for the host architecture. They should
>>> not
>>> be deployed with to the target, and they should not be included in an
>>> sstate
>>> package which might get reused on a host of a different architecture.
>>>
>>> As we don't build many out-of-tree modules, this patch takes the
>>> approach
>>> of building the hostprogs as part of the module compile process with a
>>> do_compile_prepend() routine in module.bbclass. To ensure the hostprogs
>>> don't contaminate the build, they are removed in do_install_append().
>>>
>>> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
>>> CC: Gary Thomas<gary@mlbassoc.com>
>>
>> Sadly, this doesn't seem to work for me. I don't see any indication in
>> run.do_compile that the extra steps were added at all.
>>
>> Will it matter if my recipe overrides the do_compile() method?
>>
>
> Also, when you tested this, what was your target MACHINE (in particular,
> was the target a different architecture than the build host?) I ask because
> I tried to just manually insert the compile_prepend() functions into my
> recipe and it ended up trying to build host tools (that's what the fuss
> is all about) using the target toolchain.

I made some modifications to avoid a Race that RP pointed out (just 
removed the cleans from the module.bbclass since they weren't necessary 
anyway). With this, I set my MACHINE to beagleboard and built minimal. 
You can see from the following that hostprogs were build for the host 
and the module for the target:

dvhart@rage:build-beagleboard$ file 
./tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto-2.6.37+git1+e2737075b79e4fc682e41051cf1c0bc47a47d502_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux-beagleboard-standard-build/scripts/basic/fixdep
./tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto-2.6.37+git1+e2737075b79e4fc682e41051cf1c0bc47a47d502_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux-beagleboard-standard-build/scripts/basic/fixdep: 
ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked 
(uses shared libs), for GNU/Linux 2.6.15, not stripped

dvhart@rage:build-beagleboard$ file 
./tmp/work/beagleboard-poky-linux-gnueabi/hello-world-mod-1.0-r0/package/lib/modules/2.6.37.2-yocto-standard+/extra/hello_world.ko
./tmp/work/beagleboard-poky-linux-gnueabi/hello-world-mod-1.0-r0/package/lib/modules/2.6.37.2-yocto-standard+/extra/hello_world.ko: 
ELF 32-bit LSB relocatable, ARM, version 1 (SYSV), not stripped

I'm going to do a beagleboard boot test, but if that works I'll be 
resending these changes to close BUG 241 as they work on both qemux86 
and beagleboard using hello-world-mod which uses a very typical 
out-of-tree kernel module Make setup.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

