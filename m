Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-lb0-f174.google.com (mail-lb0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B86BEE013AB
	for <poky@yoctoproject.org>; Tue,  3 Sep 2013 20:44:11 -0700 (PDT)
Received: by mail-lb0-f174.google.com with SMTP id w6so5716967lbh.33
	for <poky@yoctoproject.org>; Tue, 03 Sep 2013 20:44:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=LvUg/Q3E3he1Isnyk3EkLPfpsI0WXl+XtWoezRbt7cE=;
	b=mFHmixg2uZkmo7IGoKp4UM18h6X69QKWqg2uomQrdl+jjbvHX6dMayJmkp2aQBtPby
	2Ubh+Aamsu50DadrbVQIeWY27US6TOsorr5tfwVWS1QJiz9b0mkH15zl4AjZbfTcfT9s
	S3qt2ILBZXAfQ8z/3o5+wN6nhLO1GWbZ4jpwTpJhEvRHpt+62/lmFxRFmynxNs5HchYn
	XhCXQEOOlRHrSIwCl4E1xiseFD1yd6Dcf+c2rWwwZsfzycEEXR8vfXz5DNP+X5z+eaz0
	talFzqPXMIqmr3kG0OccdvksRgwg+LVuwxp2h69wGxFPGhWHJeVr57Yru03miVjOUnHp
	fIpQ==
MIME-Version: 1.0
X-Received: by 10.112.51.166 with SMTP id l6mr613162lbo.5.1378266251041; Tue,
	03 Sep 2013 20:44:11 -0700 (PDT)
Received: by 10.112.12.103 with HTTP; Tue, 3 Sep 2013 20:44:10 -0700 (PDT)
In-Reply-To: <CANwerB2PtV9Sk=qMPKJ6EBu88DWSJ6rxLH9OYui=29f5wqT2dA@mail.gmail.com>
References: <1378259015-25126-1-git-send-email-net147@gmail.com>
	<CADkTA4NS36hZBgpZ-CQmxgJ63D_jyo5nEV8osa2u1eP+tutq9g@mail.gmail.com>
	<CANwerB2PtV9Sk=qMPKJ6EBu88DWSJ6rxLH9OYui=29f5wqT2dA@mail.gmail.com>
Date: Tue, 3 Sep 2013 23:44:10 -0400
Message-ID: <CADkTA4OiNjkfiE4oa-AMb_NFX1P9JNoG4SkwP3xmFpoqyTubEA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Jonathan Liu <net147@gmail.com>
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
X-List-Received-Date: Wed, 04 Sep 2013 03:44:13 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Sep 3, 2013 at 11:30 PM, Jonathan Liu <net147@gmail.com> wrote:
> Hi Bruce,
>
> The kernel output is the following:
> Loading /vmlinuz.........ready.
> This kernel requires the following features not present on the CPU:
> movbe
> Unable to boot - please use a kernel appropriate for your CPU.
>
> It stops at that stage and the kernel doesn't boot at all. I started
> having this issue after switching my BSP to Linux 3.10.

I take it your BSP is based on the genericx86 BSP/configuration ? The entire
kernel build is done with:

oe_runmake ${KERNEL_IMAGETYPE_FOR_MAKE} ${KERNEL_ALT_IMAGETYPE}
CC="${KERNEL_CC}" LD="${KERNEL_LD}" ${KERNEL_EXTRA_ARGS}

And unless you've put something in KERNEL_EXTRA_ARGS, that means
the kernel configuration and its own Makefiles determine all compile flags and
optimizations.

So switching that config file should have no impact on the build.

To confirm .. you are saying after that change you can boot again ? Best to
hear from Darren/Tom or Ross on this one.

Bruce

>
> Regards,
> Jonathan
>
> On 4 September 2013 13:23, Bruce Ashfield <bruce.ashfield@gmail.com> wrote:
>> On Tue, Sep 3, 2013 at 9:43 PM, Jonathan Liu <net147@gmail.com> wrote:
>>> Tuning for Intel Atom CPU can in result instructions being used that are
>>> not compatible with older x86 CPUs such as Intel Pentium Dual-Core
>>> E2200. This can result in Linux 3.10 failing to boot with:
>>> "This kernel requires the following features not present on the CPU:
>>> movbe
>>> Unable to boot - please use a kernel appropriate for your CPU.".
>>
>> That's a bit surprising, do you have a bootlog to share ? This tune
>> file shouldn't
>> impact the kernel build options, and if it is, that's a bug.
>>
>> If the error shows up on the switch to userspace, then that's a different story.
>>
>> Bruce
>>
>>>
>>> Signed-off-by: Jonathan Liu <net147@gmail.com>
>>> ---
>>>  meta-yocto-bsp/conf/machine/genericx86.conf | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/meta-yocto-bsp/conf/machine/genericx86.conf b/meta-yocto-bsp/conf/machine/genericx86.conf
>>> index ff5cbc9..f5d9cd5 100644
>>> --- a/meta-yocto-bsp/conf/machine/genericx86.conf
>>> +++ b/meta-yocto-bsp/conf/machine/genericx86.conf
>>> @@ -3,7 +3,7 @@
>>>
>>>  #@DESCRIPTION: Machine configuration for generic X86 (32-bit) PCs. Supports a moderately wide range of drivers that should boot and be usable on "typical" hardware.
>>>
>>> -include conf/machine/include/tune-atom.inc
>>> +include conf/machine/include/tune-i586.inc
>>>
>>>  MACHINE_FEATURES = "screen keyboard pci usbhost ext2 ext3 x86 wifi acpi alsa"
>>>
>>> --
>>> 1.8.4
>>>
>>> _______________________________________________
>>> poky mailing list
>>> poky@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/poky
>>
>>
>>
>> --
>> "Thou shalt not follow the NULL pointer, for chaos and madness await
>> thee at its end"



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

