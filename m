Return-Path: <danismostlikely@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27BAFC54798
	for <webhook@archiver.kernel.org>; Fri, 23 Feb 2024 16:15:49 +0000 (UTC)
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
 by mx.groups.io with SMTP id smtpd.web10.16628.1708704948319235665
 for <poky@lists.yoctoproject.org>;
 Fri, 23 Feb 2024 08:15:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Wmr/tbS3;
 spf=pass (domain: gmail.com, ip: 209.85.219.176, mailfrom: danismostlikely@gmail.com)
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-dc74e33fe1bso517379276.0
        for <poky@lists.yoctoproject.org>; Fri, 23 Feb 2024 08:15:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708704947; x=1709309747; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0X9GQLMnoPD9OLGQBG1pRIq676GL3LNspQKrJBnbTcI=;
        b=Wmr/tbS3Qzh/OCXx5LSEtoYAV3P1TyEqEJTJgTkq+ee/H2Mzwml1+TFm+16vtnj15J
         yc7qkFbZWhixk/Z6hubdawJLHCVr/Im9y+RD5XkjGm6RWPSSOK69hx5ef3c+Mbuinik0
         /vjUAgqEYCvhf2WlBHAXcRsomeJjb7r/tIdMrqgecRp/irqnFSWLPq8H8RiV7L3Xrp1T
         mIg3BG/iL6zo/JrmVg8kBv4Inga86VxDLqYp22GSD/PbPFdi9klrIxQYMS3bDrUajqLx
         NI7FWw/WAFclLhKF2RVw3JLpVm/ups3C/tQuqLTHvTGXilGS2feh4wg0HCGgZkFb90TG
         Fvfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708704947; x=1709309747;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0X9GQLMnoPD9OLGQBG1pRIq676GL3LNspQKrJBnbTcI=;
        b=UEgq/SsGdPkEWsCiXWqPS+dspBRlwuZEwq+AgwkjKFYeuxjXCwBdNdUn5PwfF6JKu1
         mE/bwSif7HlWdmxMGjcaSr+kF6W0JeZX6DxE/RAmNWVgau0v3i2SiPbHQdm0XQU2uzb6
         KiuatSbBnaHpOxLQadM1E7EKdEE+yF3PaH5TRmzuz/tDfvhCOZ0SjvFOUUqVYtNbqnWi
         b/5Y+4oppeS7JGU2gh6Som+in38kAdWx4ITKIiIpBLQF39yMmz7/f8Eh1eUmbasxTN2G
         SVryE37kgjr+OPHipMT/bGgs1XQZNL6Tow4NPEqmiK/2oNNeKimATmAUu9AE5PrhWcV1
         Bbtg==
X-Gm-Message-State: AOJu0YxhS1vS1U7IzUoWwt1fH/uE9IEDmV7TFZhMjBuPFUADmmR9JH3f
	gLR6gOenb3QJJ64Idlk5UkYKOVZq6XkYboDRYZ48a7m2e79O6qxlP549CoETLTpGHXHqFh9WQyW
	AyZAlykI8SIqJyAuJV60FtjdnIDg=
X-Google-Smtp-Source: AGHT+IHqnI0bQjpkf5nTUWiCGiI9nbQVy1iWO7ZSL5N5fqpyAyOoVt4ht9kw21qlV8PFV3FK0zbEI4I2bB8EX+3Xavw=
X-Received: by 2002:a25:ade0:0:b0:dcd:38f9:f78 with SMTP id
 d32-20020a25ade0000000b00dcd38f90f78mr241220ybe.29.1708704947432; Fri, 23 Feb
 2024 08:15:47 -0800 (PST)
MIME-Version: 1.0
References: <20240207164849.4039004-1-ross.burton@arm.com>
In-Reply-To: <20240207164849.4039004-1-ross.burton@arm.com>
From: Dan McGregor <danismostlikely@gmail.com>
Date: Fri, 23 Feb 2024 10:15:36 -0600
Message-ID: <CACS+7ZSrh51t47vDT2XMiCLXV0Cg++BDMH5+JV0Hr4qE8pbFjw@mail.gmail.com>
Subject: Re: [poky] [PATCH v2] base-files: add usage warning to motd
To: Ross Burton <ross.burton@arm.com>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 23 Feb 2024 16:15:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13272

On Wed, 7 Feb 2024 at 10:48, Ross Burton <ross.burton@arm.com> wrote:
<SNIP>
>
> diff --git a/meta-poky/recipes-core/base-files/base-files_%.bbappend b/meta-poky/recipes-core/base-files/base-files_%.bbappend
> new file mode 100644
> index 00000000000..8802adbb46b
> --- /dev/null
> +++ b/meta-poky/recipes-core/base-files/base-files_%.bbappend
> @@ -0,0 +1 @@
> +FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

Should this be FILESEXTRAPATHS:prepend:poky :=.....? That way
meta-poky can be included (as it is with a default configuration) even
with a custom distribution layer? This is what the psplash bbappend in
meta-poky does.

I need to start monitoring this mailing list more; I didn't see it
until it was merged :/

