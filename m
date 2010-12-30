Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0B1304C810DA
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 16:31:58 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 30 Dec 2010 14:31:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,251,1291622400"; d="scan'208";a="873146707"
Received: from unknown (HELO [10.255.13.238]) ([10.255.13.238])
	by fmsmga001.fm.intel.com with ESMTP; 30 Dec 2010 14:31:51 -0800
Message-ID: <4D1D0857.5090006@linux.intel.com>
Date: Thu, 30 Dec 2010 14:31:51 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@gmail.com>
References: <4D1A8103.2030501@linux.intel.com>	<625BA99ED14B2D499DC4E29D8138F1504D64C30DB7@shsmsx502.ccr.corp.intel.com>	<4D1A86E3.1070007@linux.intel.com>	<AANLkTi=EfFUs-fi6veKCdvi0XeDT+veP7eNx6YVEKauF@mail.gmail.com>
	<AANLkTinJuvie9iAhSeB=O+PWmB2Yr0X1HYy4+EG8LVme@mail.gmail.com>
In-Reply-To: <AANLkTinJuvie9iAhSeB=O+PWmB2Yr0X1HYy4+EG8LVme@mail.gmail.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Library paths for Makefile based recipes
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
X-List-Received-Date: Thu, 30 Dec 2010 22:31:59 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/30/2010 01:10 PM, Bruce Ashfield wrote:
> On Thu, Dec 30, 2010 at 4:08 PM, Bruce Ashfield
> <bruce.ashfield@gmail.com>  wrote:
>> On Tue, Dec 28, 2010 at 7:54 PM, Darren Hart<dvhart@linux.intel.com>  wrote:
>>> On 12/28/2010 04:43 PM, Tian, Kevin wrote:
>>>>>
>>>>> From: Darren Hart
>>>>> Sent: Wednesday, December 29, 2010 8:30 AM
>>>>>
>>>>> I'm working on packaging kernelshark ("make gui" for the trace-cmd recipe
>>>>> basically). It fails trying to link to -lgtk-x11-2.0. I have added gtk+
>>>>> as a DEPENDS and the library does exist in the sysroots. I have also
>>>>> added
>>>>> "inherit pkgconfig" as the project Makefile uses it extensively.
>>>>>
>>>>> gcc trace-view-main.o trace-view.o trace-view-store.o trace-filter.o
>>>>> trace-compat.o
>>>>> trace-hash.o libtracecmd.a -rdynamic -o trace-view -pthread -lgtk-x11-2.0
>>>>> -lgdk-x11-2.0
>>>>> -latk-1.0 -lgio-2.0 -lpangoft2-1.0 -lgdk_pixbuf-2.0 -lpangocairo-1.0
>>>>> -lcairo -lpango-1.0
>>>>> -lfreetype -lfontconfig -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt
>>>>> -lglib-2.0   -L.
>>>>> -ltracecmd -ldl
>>>>> | /usr/bin/ld: cannot find -lgtk-x11-2.0
>>>>
>>>> it looks that native gcc/binutils are used here, instead of the cross one.
>>>> Or else gcc
>>>> should have a target prefix like i568-poky-linux-gcc, and ld should come
>>>> from your
>>>> native sysroot...
>>>
>>>
>>> Yes, I noticed this too. Turns out the Makefile was forcing CC=gcc.
>>>
>>>
>>>>
>>>>> | collect2: ld returned 1 exit status
>>>>> | make[1]: *** [trace-view] Error 1
>>>>> | make[1]: *** Waiting for unfinished jobs....
>>>>> | make: *** [gui] Error 2
>>>>> | FATAL: oe_runmake failed
>>>>> | ERROR: Task failed: ('function do_compile failed',
>>>>>
>>>>> '/vol/1/dvhart/poky.git/build/tmp/work/core2-poky-linux/kernelshark-1.0.4+git0+0d2522
>>>>> 24626bd6926324f023a65f20c165232891-r0/temp/log.do_compile.12830')
>>>>> NOTE: package
>>>>> kernelshark-1.0.4+git0+0d252224626bd6926324f023a65f20c165232891-r0: task
>>>>> do_compile: Failed
>>>>> ERROR: Task 8
>>>>>
>>>>> (/home/dvhart/data/poky.git/meta/recipes-kernel/trace-cmd/kernelshark_git.bb,
>>>>> do_compile) failed with 1
>>>>> ERROR:
>>>>> '/home/dvhart/data/poky.git/meta/recipes-kernel/trace-cmd/kernelshark_git.bb'
>>>>> failed
>>>>>
>>>>> Without the "gui" target, trace-cmd doesn't link against anything outside
>>>>> of
>>>>> libc and ld, so the original recipe doesn't run into this.
>>>>
>>>> given earlier confusion, I'm worried whether original trace-cmd does work
>>>> as expected,
>>>> e.g. whether it runs on a non-x86 target?
>>>
>>>
>>> I'm confident it does not. I'll be sending a fix for that along with my
>>> kernelshark recipe.
>>
>> Something smells wrong here, must have been an update to trace-cmd,
>> I ran trace-cmd on all architectures when doing the initial work. So I'm
>> quite confident that it did :)
>
> Hit send too soon. A quick check shows that we were carrying a patch
> that modified trace-cmd a bit, which might explain how it was working
> on all archs previously.

Where is this patch? Is it one we need to re-apply or send to Steven?

-- 
Darren Hart
Yocto Linux Kernel

