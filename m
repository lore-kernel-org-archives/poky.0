Return-Path: <net147@gmail.com>
Received: from mail-pd0-f177.google.com (mail-pd0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB680E013AB
	for <poky@yoctoproject.org>; Tue,  3 Sep 2013 20:30:10 -0700 (PDT)
Received: by mail-pd0-f177.google.com with SMTP id y10so6815069pdj.8
	for <poky@yoctoproject.org>; Tue, 03 Sep 2013 20:30:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=G/1FtdPB0eq0HOt3Gbul7C1ybfIeEYgIAIIqLM3jjcE=;
	b=y2bbkxqBaGXng7G7VfuVqn83/3Zsqj7o6EuzKko6ODQAMDLB/MEWI/0+i9E+2xHJa8
	EFOY5JWMrVSJMCz8u6aIIkkBKY6BcKCL+T1GkZBdGcBPqp7NbiMeqkn18qgXjfqf0ngL
	OZmrsWgBkFERzWA/fWr5CJcntZEx7/ASkTPf1V2wsiot0jN+pPqoojm0ktpnAlWVhO+E
	oJqdvFQsdQ2c2qCiZBrj4fXrBddgUzokNIKyKMyhP4Ok7YfyoInnzQGWYddx4G+zfb0/
	zSOXphb4Ez8LPXwZbYsccAOzaoPqg9rlS+t7WMTsNYN88+RE4qwUN+/szebMmOuhEgZa
	oDsw==
MIME-Version: 1.0
X-Received: by 10.68.96.130 with SMTP id ds2mr833554pbb.99.1378265410079; Tue,
	03 Sep 2013 20:30:10 -0700 (PDT)
Received: by 10.70.35.235 with HTTP; Tue, 3 Sep 2013 20:30:10 -0700 (PDT)
In-Reply-To: <CADkTA4NS36hZBgpZ-CQmxgJ63D_jyo5nEV8osa2u1eP+tutq9g@mail.gmail.com>
References: <1378259015-25126-1-git-send-email-net147@gmail.com>
	<CADkTA4NS36hZBgpZ-CQmxgJ63D_jyo5nEV8osa2u1eP+tutq9g@mail.gmail.com>
Date: Wed, 4 Sep 2013 13:30:10 +1000
Message-ID: <CANwerB2PtV9Sk=qMPKJ6EBu88DWSJ6rxLH9OYui=29f5wqT2dA@mail.gmail.com>
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
X-List-Received-Date: Wed, 04 Sep 2013 03:30:14 -0000
Content-Type: text/plain; charset=UTF-8

Hi Bruce,

The kernel output is the following:
Loading /vmlinuz.........ready.
This kernel requires the following features not present on the CPU:
movbe
Unable to boot - please use a kernel appropriate for your CPU.

It stops at that stage and the kernel doesn't boot at all. I started
having this issue after switching my BSP to Linux 3.10.

Regards,
Jonathan

On 4 September 2013 13:23, Bruce Ashfield <bruce.ashfield@gmail.com> wrote:
> On Tue, Sep 3, 2013 at 9:43 PM, Jonathan Liu <net147@gmail.com> wrote:
>> Tuning for Intel Atom CPU can in result instructions being used that are
>> not compatible with older x86 CPUs such as Intel Pentium Dual-Core
>> E2200. This can result in Linux 3.10 failing to boot with:
>> "This kernel requires the following features not present on the CPU:
>> movbe
>> Unable to boot - please use a kernel appropriate for your CPU.".
>
> That's a bit surprising, do you have a bootlog to share ? This tune
> file shouldn't
> impact the kernel build options, and if it is, that's a bug.
>
> If the error shows up on the switch to userspace, then that's a different story.
>
> Bruce
>
>>
>> Signed-off-by: Jonathan Liu <net147@gmail.com>
>> ---
>>  meta-yocto-bsp/conf/machine/genericx86.conf | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/meta-yocto-bsp/conf/machine/genericx86.conf b/meta-yocto-bsp/conf/machine/genericx86.conf
>> index ff5cbc9..f5d9cd5 100644
>> --- a/meta-yocto-bsp/conf/machine/genericx86.conf
>> +++ b/meta-yocto-bsp/conf/machine/genericx86.conf
>> @@ -3,7 +3,7 @@
>>
>>  #@DESCRIPTION: Machine configuration for generic X86 (32-bit) PCs. Supports a moderately wide range of drivers that should boot and be usable on "typical" hardware.
>>
>> -include conf/machine/include/tune-atom.inc
>> +include conf/machine/include/tune-i586.inc
>>
>>  MACHINE_FEATURES = "screen keyboard pci usbhost ext2 ext3 x86 wifi acpi alsa"
>>
>> --
>> 1.8.4
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>
>
>
> --
> "Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end"

