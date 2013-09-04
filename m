Return-Path: <net147@gmail.com>
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2323FE01206
	for <poky@yoctoproject.org>; Wed,  4 Sep 2013 00:46:20 -0700 (PDT)
Received: by mail-pa0-f51.google.com with SMTP id lf1so82999pab.24
	for <poky@yoctoproject.org>; Wed, 04 Sep 2013 00:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=xROHARw6KyEemNd/R3lI6RSj8wqtwACiJYopSbLV2d8=;
	b=goeAZsTtvnsOqUOO7qY6BFPomsu8F4fpjxES2B5U2mD1y5vXqNV8Q0rwokiA1M9j3i
	jPONQssYfVN89FW07U4NiuI0QDykCP7sbVLVcc1V3ZmHcisrzIIFvI19jDb7rq42TM9O
	xdYm82dBqMHbC/Xhn56QedcsJ3sMaLuXZQBaZQWoXMASVNxMEaFwxCEl8MI5mYrDmTkT
	Z4Gyli+P3GXNRRMFg/PUmeyGJvT8wC/hJtlNr6fwS8d52W9BbpqGf6SSpe4WaC0zyvyK
	rVHtb+m1725zRLTJMt3cPV8H9hF5kzhurLHksnPOccdgc8Y8V7c8xVVJVSpzEU2Wj28R
	Jq9A==
MIME-Version: 1.0
X-Received: by 10.68.98.101 with SMTP id eh5mr1799917pbb.65.1378280779843;
	Wed, 04 Sep 2013 00:46:19 -0700 (PDT)
Received: by 10.70.35.235 with HTTP; Wed, 4 Sep 2013 00:46:19 -0700 (PDT)
In-Reply-To: <CANwerB3wV4R_1pR-hhQeZK-FabdF2oCzozgqoSjNKX_ZOoZ_WA@mail.gmail.com>
References: <1378259015-25126-1-git-send-email-net147@gmail.com>
	<CADkTA4NS36hZBgpZ-CQmxgJ63D_jyo5nEV8osa2u1eP+tutq9g@mail.gmail.com>
	<CANwerB2PtV9Sk=qMPKJ6EBu88DWSJ6rxLH9OYui=29f5wqT2dA@mail.gmail.com>
	<CADkTA4OiNjkfiE4oa-AMb_NFX1P9JNoG4SkwP3xmFpoqyTubEA@mail.gmail.com>
	<CANwerB0PQgJQSqR4S_b0N77w2vejVZsO967AgzJgyDveu8aUcA@mail.gmail.com>
	<CANwerB3wV4R_1pR-hhQeZK-FabdF2oCzozgqoSjNKX_ZOoZ_WA@mail.gmail.com>
Date: Wed, 4 Sep 2013 17:46:19 +1000
Message-ID: <CANwerB3KCBuaq87oSWaze1B+_+DYmzokKoV1dk=S7Gj8EnLS4g@mail.gmail.com>
From: Jonathan Liu <net147@gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] genericx86: tune for i586 instead of atom
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 04 Sep 2013 07:46:21 -0000
Content-Type: text/plain; charset=UTF-8

On 4 September 2013 14:12, Jonathan Liu <net147@gmail.com> wrote:
> On 4 September 2013 13:56, Jonathan Liu <net147@gmail.com> wrote:
>> On 4 September 2013 13:44, Bruce Ashfield <bruce.ashfield@gmail.com> wrote:
>>> On Tue, Sep 3, 2013 at 11:30 PM, Jonathan Liu <net147@gmail.com> wrote:
>>>> Hi Bruce,
>>>>
>>>> The kernel output is the following:
>>>> Loading /vmlinuz.........ready.
>>>> This kernel requires the following features not present on the CPU:
>>>> movbe
>>>> Unable to boot - please use a kernel appropriate for your CPU.
>>>>
>>>> It stops at that stage and the kernel doesn't boot at all. I started
>>>> having this issue after switching my BSP to Linux 3.10.
>>>
>>> I take it your BSP is based on the genericx86 BSP/configuration ? The entire
>>> kernel build is done with:
>>>
>>> oe_runmake ${KERNEL_IMAGETYPE_FOR_MAKE} ${KERNEL_ALT_IMAGETYPE}
>>> CC="${KERNEL_CC}" LD="${KERNEL_LD}" ${KERNEL_EXTRA_ARGS}
>>>
>>> And unless you've put something in KERNEL_EXTRA_ARGS, that means
>>> the kernel configuration and its own Makefiles determine all compile flags and
>>> optimizations.
>>>
>>> So switching that config file should have no impact on the build.
>>>
>>> To confirm .. you are saying after that change you can boot again ? Best to
>>> hear from Darren/Tom or Ross on this one.
>>>
>>> Bruce
>>
>> You're right. It doesn't seem to have any impact.
>> Please disregard this patch.
>>
>> I will try to look into this further to work out what is enabling the
>> use of movbe in the kernel.
>
> I suspect it is CONFIG_MATOM=y in the kernel config (see
> http://git.kernel.org/cgit/linux/kernel/git/tip/tip.git/commit/?id=2b9b6d8c715b23fa119261c32ad360681f4464a9).
> I am rebuilding my image to test.

I have confirmed it is CONFIG_MATOM=y that was causing the boot issue.

Regards,
Jonathan

>
> Regards,
> Jonathan
>
>>
>> Regards,
>> Jonathan
>>
>>>
>>>>
>>>> Regards,
>>>> Jonathan
>>>>
>>>> On 4 September 2013 13:23, Bruce Ashfield <bruce.ashfield@gmail.com> wrote:
>>>>> On Tue, Sep 3, 2013 at 9:43 PM, Jonathan Liu <net147@gmail.com> wrote:
>>>>>> Tuning for Intel Atom CPU can in result instructions being used that are
>>>>>> not compatible with older x86 CPUs such as Intel Pentium Dual-Core
>>>>>> E2200. This can result in Linux 3.10 failing to boot with:
>>>>>> "This kernel requires the following features not present on the CPU:
>>>>>> movbe
>>>>>> Unable to boot - please use a kernel appropriate for your CPU.".
>>>>>
>>>>> That's a bit surprising, do you have a bootlog to share ? This tune
>>>>> file shouldn't
>>>>> impact the kernel build options, and if it is, that's a bug.
>>>>>
>>>>> If the error shows up on the switch to userspace, then that's a different story.
>>>>>
>>>>> Bruce
>>>>>
>>>>>>
>>>>>> Signed-off-by: Jonathan Liu <net147@gmail.com>
>>>>>> ---
>>>>>>  meta-yocto-bsp/conf/machine/genericx86.conf | 2 +-
>>>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>>>
>>>>>> diff --git a/meta-yocto-bsp/conf/machine/genericx86.conf b/meta-yocto-bsp/conf/machine/genericx86.conf
>>>>>> index ff5cbc9..f5d9cd5 100644
>>>>>> --- a/meta-yocto-bsp/conf/machine/genericx86.conf
>>>>>> +++ b/meta-yocto-bsp/conf/machine/genericx86.conf
>>>>>> @@ -3,7 +3,7 @@
>>>>>>
>>>>>>  #@DESCRIPTION: Machine configuration for generic X86 (32-bit) PCs. Supports a moderately wide range of drivers that should boot and be usable on "typical" hardware.
>>>>>>
>>>>>> -include conf/machine/include/tune-atom.inc
>>>>>> +include conf/machine/include/tune-i586.inc
>>>>>>
>>>>>>  MACHINE_FEATURES = "screen keyboard pci usbhost ext2 ext3 x86 wifi acpi alsa"
>>>>>>
>>>>>> --
>>>>>> 1.8.4
>>>>>>
>>>>>> _______________________________________________
>>>>>> poky mailing list
>>>>>> poky@yoctoproject.org
>>>>>> https://lists.yoctoproject.org/listinfo/poky
>>>>>
>>>>>
>>>>>
>>>>> --
>>>>> "Thou shalt not follow the NULL pointer, for chaos and madness await
>>>>> thee at its end"
>>>
>>>
>>>
>>> --
>>> "Thou shalt not follow the NULL pointer, for chaos and madness await
>>> thee at its end"

