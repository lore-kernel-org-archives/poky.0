Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 46D854C80050
	for <poky@yoctoproject.org>; Fri,  4 Mar 2011 05:45:00 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id EBCC71660209; Fri,  4 Mar 2011 04:44:59 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 06EE216601DC;
	Fri,  4 Mar 2011 04:44:58 -0700 (MST)
Message-ID: <4D70D0B9.3020902@mlbassoc.com>
Date: Fri, 04 Mar 2011 04:44:57 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <b9dded$i440ij@orsmga002.jf.intel.com>	<4D6FC6E0.3070303@mlbassoc.com>
	<4D6FC8E4.3020400@mlbassoc.com> <4D706D10.4050809@linux.intel.com>
In-Reply-To: <4D706D10.4050809@linux.intel.com>
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
X-List-Received-Date: Fri, 04 Mar 2011 11:45:00 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/03/2011 09:39 PM, Darren Hart wrote:
> On 03/03/2011 08:59 AM, Gary Thomas wrote:
>> On 03/03/2011 09:50 AM, Gary Thomas wrote:
>>> On 03/02/2011 11:00 AM, Darren Hart wrote:
>>>> From: Darren Hart<dvhart@linux.intel.com>
>>>>
>>>> This fixes [BUGID #241]
>>>>
>>>> The kernel hostprogs are built for the host architecture. They should
>>>> not
>>>> be deployed with to the target, and they should not be included in an
>>>> sstate
>>>> package which might get reused on a host of a different architecture.
>>>>
>>>> As we don't build many out-of-tree modules, this patch takes the
>>>> approach
>>>> of building the hostprogs as part of the module compile process with a
>>>> do_compile_prepend() routine in module.bbclass. To ensure the hostprogs
>>>> don't contaminate the build, they are removed in do_install_append().
>>>>
>>>> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
>>>> CC: Gary Thomas<gary@mlbassoc.com>
>>>
>>> Sadly, this doesn't seem to work for me. I don't see any indication in
>>> run.do_compile that the extra steps were added at all.
>>>
>>> Will it matter if my recipe overrides the do_compile() method?
>>>
>>
>> Also, when you tested this, what was your target MACHINE (in particular,
>> was the target a different architecture than the build host?) I ask because
>> I tried to just manually insert the compile_prepend() functions into my
>> recipe and it ended up trying to build host tools (that's what the fuss
>> is all about) using the target toolchain.
>
> I made some modifications to avoid a Race that RP pointed out (just removed the cleans from the module.bbclass since they weren't necessary anyway). With this, I set my MACHINE to
> beagleboard and built minimal. You can see from the following that hostprogs were build for the host and the module for the target:
>
> dvhart@rage:build-beagleboard$ file
> ./tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto-2.6.37+git1+e2737075b79e4fc682e41051cf1c0bc47a47d502_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux-beagleboard-standard-build/scripts/basic/fixdep
>
> ./tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto-2.6.37+git1+e2737075b79e4fc682e41051cf1c0bc47a47d502_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux-beagleboard-standard-build/scripts/basic/fixdep:
> ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked (uses shared libs), for GNU/Linux 2.6.15, not stripped

Why are you looking in ${KERNEL_SRC}?  It may not exist (think rm_work) when your module gets built.

The example recipe I have uses ${STAGING_KERNEL_DIR} something like this:
   make -C ${STAGING_KERNEL_DIR} M=src

Also, if you look at the run.do_compile script for your module recipe, is
there any indication that the compile_prepend() stuff was even added?  I
don't see it in mine (yes, it inherits module)

>
> dvhart@rage:build-beagleboard$ file ./tmp/work/beagleboard-poky-linux-gnueabi/hello-world-mod-1.0-r0/package/lib/modules/2.6.37.2-yocto-standard+/extra/hello_world.ko
> ./tmp/work/beagleboard-poky-linux-gnueabi/hello-world-mod-1.0-r0/package/lib/modules/2.6.37.2-yocto-standard+/extra/hello_world.ko: ELF 32-bit LSB relocatable, ARM, version 1
> (SYSV), not stripped
>
> I'm going to do a beagleboard boot test, but if that works I'll be resending these changes to close BUG 241 as they work on both qemux86 and beagleboard using hello-world-mod which
> uses a very typical out-of-tree kernel module Make setup.
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

