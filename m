Return-Path: <trini@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7B70C54E41
	for <webhook@archiver.kernel.org>; Thu, 29 Feb 2024 14:55:23 +0000 (UTC)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
 by mx.groups.io with SMTP id smtpd.web10.27034.1709218520552509445
 for <poky@lists.yoctoproject.org>;
 Thu, 29 Feb 2024 06:55:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=Qey1o7yT;
 spf=pass (domain: konsulko.com, ip: 209.85.128.177, mailfrom: trini@konsulko.com)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-60915328139so11868797b3.0
        for <poky@lists.yoctoproject.org>; Thu, 29 Feb 2024 06:55:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1709218519; x=1709823319; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UeMtbFkCx8uwBLS1M22OPq85GZrSC8v8Tx0h4bokkNw=;
        b=Qey1o7yTembUuYTOUj60puFxTdMtRwRfyJYui0a0Y44UxEriasoMQ6FoaGxnvcg5fm
         j0bRlM178ZI/dhIEhsX5R47Pq8SSiqnbnTe3ZVxcirlj7bc5v637E30RHHNZpSoPX99c
         5+72ThtQdL00FJnZZMb/Jj4OEAYY+Dl7757Is=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709218519; x=1709823319;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UeMtbFkCx8uwBLS1M22OPq85GZrSC8v8Tx0h4bokkNw=;
        b=ahMqFkdlidzrkj5hTRhUDhnBsaIXjefIX0TU08N6nyuPOzH+SDKHLPJ8EC3I+3QgLK
         Ida4nxcVr+Y2LEuzMdqnXHfxNTRS7K36VRrJuD51UC2yngPHBWgN3sUHiFJZiy7h2YRv
         FGdmkOetBE+L2dvwCqIAHDK71ALrUqRrv+Ya/D96DhPhwB6MSzSNuGw9khOtA7yJ9Jjj
         +Dzkf0HksO4gHueRRv+yP6T0kw3VCECt/KXHt54ZJB36AAF37tsTg1arc8/zZKTlwGj9
         W/uTqR+Mt+Eb4eGDdbFa+sgZZB1vLrqDGtVPiXbcoHg6eQTIBO3EhJeiXWPm+vWuOCxg
         mnaQ==
X-Gm-Message-State: AOJu0Ywh2rP4BZixLmCAYTU2Hfecm4LVkaWIJ5F+0f76jlaOqiijqn86
	Sk8xbhJv+ZzRP9I6/BWJCoWkOkbqtISUFMBKGANxoFwEforzK8KVWz+RThAfQbY=
X-Google-Smtp-Source: AGHT+IGXIUA/sniabV9+6KV8DLQ9sOKophxhDCqeWV5F8MmWYfhvVeQUGv0OECeFcm3nD9NXPY+gaA==
X-Received: by 2002:a0d:ccc5:0:b0:608:bf09:a16f with SMTP id o188-20020a0dccc5000000b00608bf09a16fmr2364316ywd.14.1709218519723;
        Thu, 29 Feb 2024 06:55:19 -0800 (PST)
Received: from bill-the-cat (065-184-194-195.res.spectrum.com. [65.184.194.195])
        by smtp.gmail.com with ESMTPSA id v7-20020a81b707000000b005ffa352a84fsm424276ywh.21.2024.02.29.06.55.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Feb 2024 06:55:19 -0800 (PST)
Date: Thu, 29 Feb 2024 09:55:17 -0500
From: Tom Rini <trini@konsulko.com>
To: ross.burton@arm.com
Cc: poky@lists.yoctoproject.org
Subject: Re: [PATCH v3] Add genericarm64 MACHINE
Message-ID: <20240229145517.GT3040305@bill-the-cat>
References: <20240228114415.345202-1-ross.burton@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240228114415.345202-1-ross.burton@arm.com>
X-Clacks-Overhead: GNU Terry Pratchett
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 29 Feb 2024 14:55:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13284

On Wed, Feb 28, 2024 at 11:44:15AM +0000, ross.burton@arm.com wrote:

> From: Ross Burton <ross.burton@arm.com>
> 
> This is a new 64-bit "generic" Arm machine, that expects the hardware to
> be SystemReady IR compatible.

A general comment is that some parts of the documentation / comments say
"SystemReady" and others "SystemReady IR". Since there's differences
between IR/ES/SR and that includes userspace, we should be clear I think
that this is just IR. For example...

[snip]
> diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-bsp/conf/machine/genericarm64.conf
> new file mode 100644
> index 00000000000..83f1aca137a
> --- /dev/null
> +++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
> @@ -0,0 +1,29 @@
> +#@TYPE: Machine
> +#@NAME: genericarm64
> +#@DESCRIPTION: Generic Arm64 machine for typical SystemReady platforms, which
> +#have working firmware and boot via EFI.
> +
> +require conf/machine/include/arm/arch-armv8a.inc
> +
> +# Arm Base System Architecture says v8.0+ is allowed, but FEAT_CRC32 is required
> +DEFAULTTUNE = "armv8a-crc"
> +
> +MACHINE_FEATURES = "acpi alsa bluetooth efi keyboard pci qemu-usermode rtc screen usbhost vfat wifi"

acpi isn't required for IR, just ES and SR.

-- 
Tom

