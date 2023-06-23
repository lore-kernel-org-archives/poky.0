Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3B1DEB64D7
	for <webhook@archiver.kernel.org>; Fri, 23 Jun 2023 08:38:23 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web10.37737.1687509497218602602
 for <poky@lists.yoctoproject.org>;
 Fri, 23 Jun 2023 01:38:17 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=sLdC2XQQ;
 spf=pass (domain: gmail.com, ip: 209.85.167.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-4f955def3a5so389958e87.0
        for <poky@lists.yoctoproject.org>; Fri, 23 Jun 2023 01:38:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687509495; x=1690101495;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZxXpvl3AXzSk0KJzpCn96M82xtlej20b91cPzeOWhvc=;
        b=sLdC2XQQy1GNA3H398XCdzfK9+yEM4Zi5GhzP+gTzJm2x9rZlRBTjTrk9V97cSM9ff
         y9UTsUm2785LECQCcNjpxa+Bzt3pYFktoBNKKN8ZJaVAmb9eoxdssmc4J0UeF799po1a
         NaP0Lx9MooQ1Gl0wWoaGVozUJZNs9fj06Iq3xxnJ57gJxyeAMkgG/ekCWz19uzhQJ1gA
         BJOsjvYxu0+0943F7qelwJmMwsZfCI1wqJal64XeHPogAikFa3FQxhAfTHVFJV5upjXD
         ZWINwiJ+7G9epn8YSyAIdXX1Kb0bWhA3qSa0gk8LQvi5BL3XI7lgHyt3XWACYBhGkwD9
         1eoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687509495; x=1690101495;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZxXpvl3AXzSk0KJzpCn96M82xtlej20b91cPzeOWhvc=;
        b=Md0287QwhL9MgqzKdv3vhM78aUs/zckn8Aigi0+/AyEUQTon8q9mg1KbvvKosBON98
         Q2s8qAQSvneaom8YbTFg3ZpGB6SLzKY2irmrJ1AqJD5pEt76HUjEFQcSMuyxEsRF9NZP
         SeacTYToOyIHP8uPYqEVfSiUX1qPgm5uMkz8sYOaiWMpL71r/8V4I0ZYUEWGY0JHNoDJ
         J5EWY+Qd8YTa3lweZ8chnfDjhP76B1E5Rig7nwiR0RFdaLTdiWmA0uJ+gxdS+UyQCGSQ
         WJV0egJmL6nofb2Ban73kC9YQixGN0KYAkBrM1HB+yylFDJ/JiOOr0fnwey76bsG4hAy
         TEzA==
X-Gm-Message-State: AC+VfDxIqh/n8tk807pfrcFXocc40jUZGtrybDrdDyC/b1QjayS++Lid
	V7/9UlF2Wt7AN6VZKDixAyRw50QlkNKH5bF1sQo=
X-Google-Smtp-Source: ACHHUZ5PJpRFFPfnt1+VQsMsEewIZVflu95XGiP9Ur22BRGHEB/AKMykb68jBWNDkcjxVBgiJMceITDhgQJ9AKe90Gg=
X-Received: by 2002:a05:6512:310b:b0:4f8:66da:228a with SMTP id
 n11-20020a056512310b00b004f866da228amr9010166lfb.4.1687509495184; Fri, 23 Jun
 2023 01:38:15 -0700 (PDT)
MIME-Version: 1.0
References: <7613284c-e7b0-61c4-d93f-41a5f904d9d0@gmx.li>
In-Reply-To: <7613284c-e7b0-61c4-d93f-41a5f904d9d0@gmx.li>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 23 Jun 2023 10:38:03 +0200
Message-ID: <CANNYZj8sk4R-CzPZe1thmdp0K9PhbZ_Oi5U0yRHwOwGWFfZd2w@mail.gmail.com>
Subject: Re: [poky] Yocto and kernel - dependencies
To: Steve <star@gmx.li>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 23 Jun 2023 08:38:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13090

The recommended thing is to build the kernel directly in yocto with a
recipe. Or, even better, take one of the standard kernel recipes and
use that.

Alex

On Fri, 23 Jun 2023 at 10:28, Steve <star@gmx.li> wrote:
>
> I am a bit clueless about the relation between yocto build of rootfs and
> kernel.
> Usually I build my kernel completely outside of Yocto, just using the
> SDK created by Yocto.
> But now I am afraid I doing something wrong regarding kernel headers
> need in rootfs - or at least in SDK.
>
> My machine-config seems not to have any link to kernel or
> kernel-version. I found that linux-libc-headers (is this what I need ?)
> is of 5.16, while I am actually compile a 5.15 (again completely out of
> Yocto).
>
> So what is recommended? What change is needed to use headers out of my
> linux git repo?
>
> Best regards, Arno
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13089): https://lists.yoctoproject.org/g/poky/message/13089
> Mute This Topic: https://lists.yoctoproject.org/mt/99714609/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

