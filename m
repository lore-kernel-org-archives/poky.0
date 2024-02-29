Return-Path: <trini@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EDFE7C54E41
	for <webhook@archiver.kernel.org>; Thu, 29 Feb 2024 15:31:03 +0000 (UTC)
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
 by mx.groups.io with SMTP id smtpd.web10.28054.1709220663474660322
 for <poky@lists.yoctoproject.org>;
 Thu, 29 Feb 2024 07:31:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=r5aWXU8X;
 spf=pass (domain: konsulko.com, ip: 209.85.219.182, mailfrom: trini@konsulko.com)
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-dc236729a2bso1003716276.0
        for <poky@lists.yoctoproject.org>; Thu, 29 Feb 2024 07:31:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1709220662; x=1709825462; darn=lists.yoctoproject.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=t9Vii0BCK2Xbh6MMMN62NF0NsF93HwzbQao4stYgqV4=;
        b=r5aWXU8XuPSj1YonbHdWzUlWk38c5WQE4/4Y14GBN5wumFR7k3GuAH5ATLtZeI89xw
         7T9ys9KjxpIeaLjthXjh6LxqVtwACq8Wn1ne1s438oFb9ZCAFN4kXkmihEyU8YzgCgP3
         sFEl6V9FS+hut3ZE9XGAnT1WC60LFf4jX+ZHg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709220662; x=1709825462;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t9Vii0BCK2Xbh6MMMN62NF0NsF93HwzbQao4stYgqV4=;
        b=Cj3oEJxqcMnV4B7WOyw+PV0c0tSnGzTcG+u7/I3RTptbR7ExO14G3GLmXfYcRcJplz
         IqA5PeQ2nbIUwCeBwH5gDNgD+MHp3SolEjANM5+6XwdSs8Tzhd1SpAlAxJboQVT00Tse
         WVHlE0vrKez1xl9f1mPhtTUlsvYFnWHlXUBsbVdWHyDds1VizteEuNrMxc3x4vo0fwRN
         SUnfXAUS4sTdguQrjVD0w1sSB4jCx3pXes5ImDTjBnosKM9J4Jclgrh1Zt/Gz546piyA
         NltrgmWnbR0xJq+syHL8yyN5OW6n5pXarpu8fEm2S2w/P22+oJC0L3XhVWY1dz0wmUTV
         EgJA==
X-Gm-Message-State: AOJu0YzyPPMpPSQ2wjNEuVdiuUKTOYipeeFQq6YJ1J3hS1VanigWLuMy
	lw0exojzmM4omtL5nyF/bxCqg1pk8D1qy2zMh5MoXZwVW7uKwjp2Cl0DYgcSW6E=
X-Google-Smtp-Source: AGHT+IG42ahdEAUWGp3tY4siCIosFSb2J2v6R7pmlEUVF19Fh7/d4lyeqo0HyQKx8YEnUTgqYdK19Q==
X-Received: by 2002:a25:f306:0:b0:dcb:deba:5ef9 with SMTP id c6-20020a25f306000000b00dcbdeba5ef9mr2903836ybs.21.1709220662559;
        Thu, 29 Feb 2024 07:31:02 -0800 (PST)
Received: from bill-the-cat (065-184-194-195.res.spectrum.com. [65.184.194.195])
        by smtp.gmail.com with ESMTPSA id t14-20020a25838e000000b00dc6f4c19d93sm374228ybk.7.2024.02.29.07.31.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Feb 2024 07:31:02 -0800 (PST)
Date: Thu, 29 Feb 2024 10:31:00 -0500
From: Tom Rini <trini@konsulko.com>
To: Ross Burton <Ross.Burton@arm.com>
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [PATCH v3] Add genericarm64 MACHINE
Message-ID: <20240229153100.GV3040305@bill-the-cat>
References: <20240228114415.345202-1-ross.burton@arm.com>
 <20240229145517.GT3040305@bill-the-cat>
 <9A45C507-855E-44E0-B8B4-FCA65F266FFF@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9A45C507-855E-44E0-B8B4-FCA65F266FFF@arm.com>
X-Clacks-Overhead: GNU Terry Pratchett
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 29 Feb 2024 15:31:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13286

On Thu, Feb 29, 2024 at 03:29:15PM +0000, Ross Burton wrote:
> On 29 Feb 2024, at 14:55, Tom Rini <trini@konsulko.com> wrote:
> > 
> > On Wed, Feb 28, 2024 at 11:44:15AM +0000, ross.burton@arm.com wrote:
> > 
> >> From: Ross Burton <ross.burton@arm.com>
> >> 
> >> This is a new 64-bit "generic" Arm machine, that expects the hardware to
> >> be SystemReady IR compatible.
> > 
> > A general comment is that some parts of the documentation / comments say
> > "SystemReady" and others "SystemReady IR". Since there's differences
> > between IR/ES/SR and that includes userspace, we should be clear I think
> > that this is just IR. For example...
> > 
> > [snip]
> >> +MACHINE_FEATURES = "acpi alsa bluetooth efi keyboard pci qemu-usermode rtc screen usbhost vfat wifi"
> > 
> > acpi isn't required for IR, just ES and SR.
> 
> This was _sort of_ intentional: whilst the expectation is that most boards will be IR, I didn’t want to do anything that would stop the same image working on an SR system.  Utterly untested right now, but in theory we’re just some more kernel configuration changes away from the machine working on an Ampere Altra.
> 
> I’ll reword and try and make this clearer.

OK, thanks. I'm a little surprised the kernel defconfig doesn't Just
Work.

-- 
Tom

