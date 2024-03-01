Return-Path: <trini@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A31DC5475B
	for <webhook@archiver.kernel.org>; Fri,  1 Mar 2024 19:38:26 +0000 (UTC)
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
 by mx.groups.io with SMTP id smtpd.web11.33379.1709321896132827677
 for <poky@lists.yoctoproject.org>;
 Fri, 01 Mar 2024 11:38:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=a0xoK0KV;
 spf=pass (domain: konsulko.com, ip: 209.85.128.178, mailfrom: trini@konsulko.com)
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-60982a6d8a7so12303027b3.0
        for <poky@lists.yoctoproject.org>; Fri, 01 Mar 2024 11:38:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1709321895; x=1709926695; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3ICWfQB4AGIgUESCBBdoqp5Rx36KsEQmMoqzT81hx2U=;
        b=a0xoK0KV7MlqjhTCAvEWrg+qrqS4i73ZEoPNNVcLzWgFBUd4xGjEiPSXR5ov6F9KPz
         PpN2HBAcl8nuA5uM2fzCPn/f7UcHN/hygJsXKJFYElWYoEz99FEVBpH7JgXWGV0xV8Pk
         cmMqJtVxVJvFWqoccXZ5W8hWQ/NBId6yQJjqg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709321895; x=1709926695;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3ICWfQB4AGIgUESCBBdoqp5Rx36KsEQmMoqzT81hx2U=;
        b=q2jAMrv/OU/Dy6hLG6II3uXpDKm1soeOn+Yd/OLtIG5SI+Hz889c/UglIWiN4HI6/i
         UVjOxHEZBbtb9Aj6AzM2NKeU23fKr5/QWp/T0OMnmP/Oj+WeMr2FaiZGVLe0sx5sS26+
         wUv7REPZo0NRZdEHR5yPQgDLitD2l/PeYi51Rdpi6KRiAiKaVu/Ek38Yz+yCUQZSZtYj
         ns3klqJoMzbz/mdJwSRmeg3PwqJZpBBExTMiEsFQn8ifGxwpV585gqWv2GMqStmnoXAl
         5dSryj8asQmsjiac+JLAAo/5HLcZbpi8CZRKvPNtSiyhb4YMzVwPpACbqpBlOiyrM6fT
         lUyw==
X-Forwarded-Encrypted: i=1; AJvYcCUCG5JhwCnz8Ms+aHunW0fm9dwDinjSwK/WnTBHKZM72KbbEXu0VV5Sx8b7iq1MS6juTuOv8AuCvgD1P5EPr+XU3QnnropXn2ZBcp8=
X-Gm-Message-State: AOJu0YwZbvQMTQv8bdRk0Enf3d50VRexrC6xu41xG4FjDTthWmI4/8V4
	5lLVB01zdSG2AYuvT7VcYwbuvkn7xnssSVVVGOKZ9O+lxbXKMFpNNOodDKhucGXCKYgnWPEnGze
	Q
X-Google-Smtp-Source: AGHT+IE6ANzS76l9EaTBi9mwnm9IS4GJicyKqnpXxok/LldrOI34/S0esgnF3YzHjhDdZEca6zg0Zw==
X-Received: by 2002:a81:6d15:0:b0:609:879c:a72c with SMTP id i21-20020a816d15000000b00609879ca72cmr1923736ywc.42.1709321895272;
        Fri, 01 Mar 2024 11:38:15 -0800 (PST)
Received: from bill-the-cat (065-184-194-195.res.spectrum.com. [65.184.194.195])
        by smtp.gmail.com with ESMTPSA id k125-20020a0dc883000000b00604863dc35csm1108221ywd.111.2024.03.01.11.38.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Mar 2024 11:38:14 -0800 (PST)
Date: Fri, 1 Mar 2024 14:38:12 -0500
From: Tom Rini <trini@konsulko.com>
To: Mark Hatle <mark.hatle@kernel.crashing.org>
Cc: Ross Burton <ross.burton@arm.com>, poky@lists.yoctoproject.org
Subject: Re: [poky] [PATCH v4] Add genericarm64 MACHINE
Message-ID: <20240301193812.GG3040305@bill-the-cat>
References: <20240229162440.4039352-1-ross.burton@arm.com>
 <723718a0-d741-4791-8e62-4f82434b71f3@kernel.crashing.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <723718a0-d741-4791-8e62-4f82434b71f3@kernel.crashing.org>
X-Clacks-Overhead: GNU Terry Pratchett
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 01 Mar 2024 19:38:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13292

On Thu, Feb 29, 2024 at 01:43:10PM -0600, Mark Hatle wrote:
> On 2/29/24 10:24 AM, Ross Burton wrote:
> > From: Ross Burton <ross.burton@arm.com>
> > 
> > This is a new 64-bit "generic" Arm machine, that expects the hardware to
> > be SystemReady compatible.
> > 
> > Signed-off-by: Ross Burton <ross.burton@arm.com>
> > ---
> >   .../conf/templates/default/local.conf.sample  |  1 +
> >   meta-yocto-bsp/README.hardware.md             | 18 ++++++++++-
> >   meta-yocto-bsp/conf/machine/genericarm64.conf | 31 +++++++++++++++++++
> >   .../linux/linux-yocto_6.6.bbappend            |  5 +++
> >   meta-yocto-bsp/wic/genericarm64.wks.in        | 11 +++++++
> >   5 files changed, 65 insertions(+), 1 deletion(-)
> >   create mode 100644 meta-yocto-bsp/conf/machine/genericarm64.conf
> >   create mode 100644 meta-yocto-bsp/wic/genericarm64.wks.in
> 
> ...
> 
> > +SystemReady Arm Platforms
> > +=========================
> > +
> > +The genericarm64 MACHINE is designed to work on standard SystemReady IR/SR
> > +compliant boards with preinstalled firmware.
> > +
> > +The genericarm64 MACHINE is currently tested on the following platforms:
> > +
> > +  * Texas Instruments BeaglePlay (IR)
> > +
> > +The images built are EFI bootable disk images and can be written directly to a
> > +SD card for booting, for example.
> > +
> > +
> >   Texas Instruments Beaglebone (beaglebone-yocto)
> >   ===============================================
> > diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-bsp/conf/machine/genericarm64.conf
> > new file mode 100644
> > index 00000000000..33ffa3fc019
> > --- /dev/null
> > +++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
> > @@ -0,0 +1,31 @@
> > +#@TYPE: Machine
> > +#@NAME: genericarm64
> > +#@DESCRIPTION: Generic Arm64 machine for typical SystemReady IR/ES platforms, which
> > +#have working firmware and boot via EFI.
> > +
> > +require conf/machine/include/arm/arch-armv8a.inc
> > +
> > +# Arm Base System Architecture says v8.0+ is allowed, but FEAT_CRC32 is required
> > +DEFAULTTUNE = "armv8a-crc"
> > +
> > +MACHINE_FEATURES = "acpi alsa bluetooth efi keyboard pci qemu-usermode rtc screen usbhost vfat wifi"
> 
> SystemReady IR supports u-boot booting, as far as I'm aware, but this looks
> like it now requires (vs allows) EFI.  Is this the case, or am I reading it
> wrong?

IR supports U-Boot because U-Boot does (a subset of) UEFI.

As a tangent, ES is a harder ask for us but not out of the question.

-- 
Tom

