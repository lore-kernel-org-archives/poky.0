Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id D74ED4C80FBE
	for <poky@yoctoproject.org>; Fri, 31 Dec 2010 00:11:42 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so12212707iyb.35
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 22:11:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=lOiIj8shIB3tl4JDUvU5D0jSFca414Jw8Kp0rYz3eS0=;
	b=xfpdWucUDmg/13LkSLzAJk0+T5I0o/KI3vdyzV11ElkyzQkHQeppVqvwNTg4Hr+M0/
	Old750uZRzUnIZhXGL4jT0rHVvm2H+Bc8pRpWlWrwGGvXHDHn1w2Ung3YmcyyW4v1Vay
	VFftkuFrD5zpm31bQu+WHkgVaysPhIwh7MPp4=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=Cff7DVNOIgyLzZ9cK9bBIbuTzXEgBEYcxQBzUXFCQ6ts1DdIy7dyfkOpsfQns+p21k
	jCKvhq/e3noIwFj1DdZK9p8fdnu54QAKcsgIuVf5MsXogs9w08VnmWV+Da5WqgbMQx4b
	YuGN03APvLohnXQIQKi4CkyAGKAbBrFjaUB6E=
MIME-Version: 1.0
Received: by 10.231.199.10 with SMTP id eq10mr16897229ibb.112.1293775902594;
	Thu, 30 Dec 2010 22:11:42 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Thu, 30 Dec 2010 22:11:42 -0800 (PST)
In-Reply-To: <4D1D0857.5090006@linux.intel.com>
References: <4D1A8103.2030501@linux.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D64C30DB7@shsmsx502.ccr.corp.intel.com>
	<4D1A86E3.1070007@linux.intel.com>
	<AANLkTi=EfFUs-fi6veKCdvi0XeDT+veP7eNx6YVEKauF@mail.gmail.com>
	<AANLkTinJuvie9iAhSeB=O+PWmB2Yr0X1HYy4+EG8LVme@mail.gmail.com>
	<4D1D0857.5090006@linux.intel.com>
Date: Fri, 31 Dec 2010 01:11:42 -0500
Message-ID: <AANLkTikckBMvtvG6shrO-RNcnaVXsfuu48QjrP4Osbzs@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
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
X-List-Received-Date: Fri, 31 Dec 2010 06:11:43 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 30, 2010 at 5:31 PM, Darren Hart <dvhart@linux.intel.com> wrote=
:
> On 12/30/2010 01:10 PM, Bruce Ashfield wrote:
>>
>> On Thu, Dec 30, 2010 at 4:08 PM, Bruce Ashfield
>> <bruce.ashfield@gmail.com> =A0wrote:
>>>
>>> On Tue, Dec 28, 2010 at 7:54 PM, Darren Hart<dvhart@linux.intel.com>
>>> =A0wrote:
>>>>
>>>> On 12/28/2010 04:43 PM, Tian, Kevin wrote:
>>>>>>
>>>>>> From: Darren Hart
>>>>>> Sent: Wednesday, December 29, 2010 8:30 AM
>>>>>>
>>>>>> I'm working on packaging kernelshark ("make gui" for the trace-cmd
>>>>>> recipe
>>>>>> basically). It fails trying to link to -lgtk-x11-2.0. I have added
>>>>>> gtk+
>>>>>> as a DEPENDS and the library does exist in the sysroots. I have also
>>>>>> added
>>>>>> "inherit pkgconfig" as the project Makefile uses it extensively.
>>>>>>
>>>>>> gcc trace-view-main.o trace-view.o trace-view-store.o trace-filter.o
>>>>>> trace-compat.o
>>>>>> trace-hash.o libtracecmd.a -rdynamic -o trace-view -pthread
>>>>>> -lgtk-x11-2.0
>>>>>> -lgdk-x11-2.0
>>>>>> -latk-1.0 -lgio-2.0 -lpangoft2-1.0 -lgdk_pixbuf-2.0 -lpangocairo-1.0
>>>>>> -lcairo -lpango-1.0
>>>>>> -lfreetype -lfontconfig -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -l=
rt
>>>>>> -lglib-2.0 =A0 -L.
>>>>>> -ltracecmd -ldl
>>>>>> | /usr/bin/ld: cannot find -lgtk-x11-2.0
>>>>>
>>>>> it looks that native gcc/binutils are used here, instead of the cross
>>>>> one.
>>>>> Or else gcc
>>>>> should have a target prefix like i568-poky-linux-gcc, and ld should
>>>>> come
>>>>> from your
>>>>> native sysroot...
>>>>
>>>>
>>>> Yes, I noticed this too. Turns out the Makefile was forcing CC=3Dgcc.
>>>>
>>>>
>>>>>
>>>>>> | collect2: ld returned 1 exit status
>>>>>> | make[1]: *** [trace-view] Error 1
>>>>>> | make[1]: *** Waiting for unfinished jobs....
>>>>>> | make: *** [gui] Error 2
>>>>>> | FATAL: oe_runmake failed
>>>>>> | ERROR: Task failed: ('function do_compile failed',
>>>>>>
>>>>>>
>>>>>> '/vol/1/dvhart/poky.git/build/tmp/work/core2-poky-linux/kernelshark-=
1.0.4+git0+0d2522
>>>>>> 24626bd6926324f023a65f20c165232891-r0/temp/log.do_compile.12830')
>>>>>> NOTE: package
>>>>>> kernelshark-1.0.4+git0+0d252224626bd6926324f023a65f20c165232891-r0:
>>>>>> task
>>>>>> do_compile: Failed
>>>>>> ERROR: Task 8
>>>>>>
>>>>>>
>>>>>> (/home/dvhart/data/poky.git/meta/recipes-kernel/trace-cmd/kernelshar=
k_git.bb,
>>>>>> do_compile) failed with 1
>>>>>> ERROR:
>>>>>>
>>>>>> '/home/dvhart/data/poky.git/meta/recipes-kernel/trace-cmd/kernelshar=
k_git.bb'
>>>>>> failed
>>>>>>
>>>>>> Without the "gui" target, trace-cmd doesn't link against anything
>>>>>> outside
>>>>>> of
>>>>>> libc and ld, so the original recipe doesn't run into this.
>>>>>
>>>>> given earlier confusion, I'm worried whether original trace-cmd does
>>>>> work
>>>>> as expected,
>>>>> e.g. whether it runs on a non-x86 target?
>>>>
>>>>
>>>> I'm confident it does not. I'll be sending a fix for that along with m=
y
>>>> kernelshark recipe.
>>>
>>> Something smells wrong here, must have been an update to trace-cmd,
>>> I ran trace-cmd on all architectures when doing the initial work. So I'=
m
>>> quite confident that it did :)
>>
>> Hit send too soon. A quick check shows that we were carrying a patch
>> that modified trace-cmd a bit, which might explain how it was working
>> on all archs previously.
>
> Where is this patch? Is it one we need to re-apply or send to Steven?

It was just one that made CROSS_COMPILE work for all major architectures,
but it looks to be somewhat tied to the toolchain (and some toolchain
wrappers).

If you already had plans to address this with the more bare-bones yocto/pok=
y
gcc toolchain, it is probably best to pursue that. If you run into
trouble, I can
track them down. But I did double check, and I've got logs of trace-cmd, be=
ing
run on several non-x86 architectures (which is what caught my eye initially=
, we
can come up with something different here).

Cheers,

Bruce

>
> --
> Darren Hart
> Yocto Linux Kernel
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

