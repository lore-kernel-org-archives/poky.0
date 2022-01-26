Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
 by mx.groups.io with SMTP id smtpd.web11.9645.1643179496641215324
 for <poky@lists.yoctoproject.org>;
 Tue, 25 Jan 2022 22:44:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=kEEJwP8N;
 spf=pass (domain: gmail.com, ip: 209.85.222.179, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f179.google.com with SMTP id s12so27409434qkg.6
        for <poky@lists.yoctoproject.org>; Tue, 25 Jan 2022 22:44:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nx6kHu8Oj5cD2jBgmwbf4jSheWp8At4eForip4a5RA0=;
        b=kEEJwP8NDRCMDLBoUA7SxFwKzLJGA7g8o6xQF6jqd4/2iQKFK0qAEQpbrqQ3g9fDMz
         MncMGfwnuBqUiSD9w1Xw+16A0oOySU1fCg3/6kH4TVqlZ2bns4AlyA6V/S3rVxqgKE3l
         PfSuApZb2FVuj1jlXe5dvWpmocbTm3YYMkLPesOdFNSuS9vUdZAWutcPNYfdyqw5DbMZ
         ZM4PWktEYIqglKdj/e0cZ11M3BYJ/XxMmNxhZrlaI1a2LdNhXfRvv9+15xF5L6mv+yJr
         7O7QaQSsPO9GxAuhMJOJKMEJ5ziG+7vtmieLutmve3MKKAFrYwpC4VlvA6P5QrnA291J
         798w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nx6kHu8Oj5cD2jBgmwbf4jSheWp8At4eForip4a5RA0=;
        b=b/wqsnTFnEMCU4Wz+gPxkSnfsCSbD+EdB2y5DKZsPi+yOkTfCqSVg0QZekzsxo1EHq
         5grWdkLUdYeNWr2fey/immP39VZEym6nYJ3w88JmRDnhAmFJh2htSMKuTDQB2W+ErJzm
         l67vNxTc0y0nEpSermVeit982PXe/ITKsq8EMuyGifItuoXHFXw4StBhK+n9CdtqLZn2
         6BAY2V55y0WsqJmAU0gCjdWbRw7l2W/SHwey/iPgrz0GWHBl9SnvJIyAav6MUAKB7Hdq
         HS/8g/ymJjQdwexfj4jtFyGR72owmbNeLZ/x6+3rUsSQSv3a/W4aNOoVoo6xWhlWZf+H
         4B7Q==
X-Gm-Message-State: AOAM531ItgNpI1r6u3pTtlRotlmG6CY3udWKPPBzZCDwLQ44QbSRDv55
	yqBJKgnfxmdBGAzTFLw7rsJ3w3Pm/tLl8fbM9nM=
X-Google-Smtp-Source: ABdhPJx1EJ2959dQOr+Q0R+Vgbnm1+QuBMu9rIo/czVWDsaCrHKtvhvAK226dQrT7LJwHViqA4w3xhmLpgzzMAwh7H4=
X-Received: by 2002:a37:5541:: with SMTP id j62mr16803634qkb.180.1643179495610;
 Tue, 25 Jan 2022 22:44:55 -0800 (PST)
MIME-Version: 1.0
References: <20220122223317.1626304-1-alhe@linux.microsoft.com>
 <3b9952fe-1469-08de-a279-c57fdea2ec45@gmail.com> <CAHMutraAeKXoYvLvemeoO4g0hr6-fz_Lb1ymhxQ0VQQJk5-D1w@mail.gmail.com>
In-Reply-To: <CAHMutraAeKXoYvLvemeoO4g0hr6-fz_Lb1ymhxQ0VQQJk5-D1w@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 25 Jan 2022 22:44:29 -0800
Message-ID: <CAMKF1spriyDmDNuEOtkyu2gmTa9+QJjMFx1CyXL7Ey_-i_29uQ@mail.gmail.com>
Subject: Re: [poky] [PATCH 1/1] busybox: Add shell arithmetic to work with poky-tiny
To: Alejandro Hernandez <aehs29@gmail.com>
Cc: Alejandro Hernandez Samaniego <alhe@linux.microsoft.com>, poky <poky@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, Jan 25, 2022 at 10:39 PM Alejandro Hernandez <aehs29@gmail.com> wrote:
>
>
> On Mon, 24 Jan 2022 at 17:38, Khem Raj <raj.khem@gmail.com> wrote:
>>
>>
>>
>> On 1/22/22 2:33 PM, Alejandro Hernandez Samaniego wrote:
>> > Fix error when trying to boot core-image-tiny-initramfs:
>> >
>> > /init: line 144: syntax error: support for $((arith)) is disabled
>> > Kernel panic - not syncing: Attempted to kill init!
>> >
>> > [YOCTO #14702]
>> >
>> > Signed-off-by: Alejandro Enedino Hernandez Samaniego <alhe@linux.microsoft.com>
>> > ---
>> >   meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig | 2 +-
>> >   1 file changed, 1 insertion(+), 1 deletion(-)
>> >
>> > diff --git a/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig b/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig
>> > index b0fb88a0c1..6e9faa4119 100644
>> > --- a/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig
>> > +++ b/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig
>> > @@ -1160,7 +1160,7 @@ CONFIG_CTTYHACK=y
>> >   #
>> >   # Options common to all shells
>> >   #
>> > -# CONFIG_FEATURE_SH_MATH is not set
>> > +CONFIG_FEATURE_SH_MATH=y
>>
>>
> Hey Khem,
> This adds 12KB to the compiled binary (less than 1%) and does not reflect on the installed binary size, its required both by the tiny-init and the initramfs-framework which throws the same error.

yeah perhaps using $((arith)) could be avoided in these shell scripts
but I guess it should be ok if thats too hard.

>
> Alejandro
>
>
>>
>> how much does it add to binary size ?
>>
>> >   # CONFIG_FEATURE_SH_MATH_64 is not set
>> >   # CONFIG_FEATURE_SH_MATH_BASE is not set
>> >   CONFIG_FEATURE_SH_EXTRA_QUIET=y
>> >
>> >
>> >
>> >
>> >
>>
>> 
>>
