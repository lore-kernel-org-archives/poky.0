Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D6DBE8FDB1
	for <webhook@archiver.kernel.org>; Mon, 29 Dec 2025 07:46:30 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.39406.1766994387245352813
 for <poky@lists.yoctoproject.org>;
 Sun, 28 Dec 2025 23:46:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=uiVh+txZ;
 spf=pass (domain: linaro.org, ip: 209.85.167.48, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-59b30275e69so3728635e87.1
        for <poky@lists.yoctoproject.org>; Sun, 28 Dec 2025 23:46:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766994385; x=1767599185; darn=lists.yoctoproject.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QXOCym0U0uI49Oipq7913+dcHVoup0/1Tc8WFj+pExI=;
        b=uiVh+txZgdVqg8vnBkU2ULQzOxFDHa8g1cls77V1r09b1wcVrgZh/7az4wX9hX4Ztq
         9SyM/rgS8HRFd422iI4KckIBA46bo2aG02Hktm4lw69MwpyACfyqwQpc3/39Fzfmn9te
         D1lIA71Br5dd93WkGbK+4yRR5pTMAy7t5kRySe03uv/BAwUKZ4XiA3O6XXCZtgpht4mW
         GVLEu1VtaM9i9cdIwIKJxzZf/hrf8J2+ds6+kZjx7J8DR45eBkKx5yKds3kbBopmX1V5
         V7GA3beyBMxTSRynUGkqi/sLsJIxPPhFgflPbOs8si7ELnZeHJ47sUiX47oENJ1Jc66Y
         tIdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766994385; x=1767599185;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QXOCym0U0uI49Oipq7913+dcHVoup0/1Tc8WFj+pExI=;
        b=IwDxURNQnxuMcHjZGM4IWSYhgmXFeMa8hcTkhc34hFo6j/FiA5o/XByQoaxoGm1SI1
         FFR8ogwmJVKcRDp8E01dEjB/UyWsmx0cjDTPAEtMl0WbHDJzxA+CsooeAqQvMQB7lkN1
         mZIsHZlxVfJOZ8srWI/ylHTvmv/FYZmtvOjkUJbZ38YzypPS8CHHsanDNvtAdz3RzVMN
         BYUBMchvgzM23rejK7lgLJ4TCXCSQ0XBOHE8+p6TM6CoehnMedsZ50/xsCC4jfgwTq1p
         l8EfA2EY4zroK7BJ1HREMZVQdkikQAh5Ek3G8iEiVdeoIfTYZgatJXCHKaB6Gd8vhdcQ
         ucoA==
X-Gm-Message-State: AOJu0YwNalvnRNaRktdpfd4VLNeWvjCvY6yCn7i+l/VXG0m1iPntUeCB
	nSpf6CPwFeOPaS5ZnTUBJd11L7+Wqi+Bl6hXgs0MiP3uRt7iRObR96380NrcDw9NjKA=
X-Gm-Gg: AY/fxX4bhqQW9QnzsEJ/sJlWmqjzwKGq2KWfyToy0zFT+MtiL65GhlUsSXZCN9MyxsW
	hTbtn8Y8HEnOgXEZzM/ot2SGO7YyIKP8whrbAQvZ0Vxx2WxIiHwmTbCvvqS65K1h6Gzpx5qjL90
	jJJqL8/nyOpAnWrRItj64sWc314HJKoLc3iGGLgVkGcl9F2kLSCdNX6ABpqxQSf44WquAzBM+eZ
	D4yY2p/O4T9T9Is3LIdtdqxs2r1ZZlFjYebS+a2JeclSBM1/jBBo+XNUMkUCEjA6H6BK/9Tso7D
	qfkJXjVimapZKB+4gsllyqHiezSkvZ7pqGQviZagejSKc51CPqBjimmETUGiezRBoiGBANlJRfB
	0LkCVIZfni+O5Wrn2BU5vGRGj8RQQ9+lRgO2wVw76bQMospMxMiVoCQ33MOJ19gAD/DnxijoQNk
	3pql2NRaA+V6134xkWwKBngwRTLozBqUlwfURcs9HW1FCE
X-Google-Smtp-Source: AGHT+IGuH3GWZN0yeOji5X6ugWkbABnOFH4vvPfuoHEwUHFld/yHSnTYsPg6b6QyS+2iqhODuMKXXw==
X-Received: by 2002:a05:6512:3e06:b0:595:9dbc:2ed7 with SMTP id 2adb3069b0e04-59a17ded9b9mr9874981e87.43.1766994385123;
        Sun, 28 Dec 2025 23:46:25 -0800 (PST)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a18620337sm8803592e87.86.2025.12.28.23.46.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Dec 2025 23:46:24 -0800 (PST)
Date: Mon, 29 Dec 2025 09:46:23 +0200
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Khem Raj <raj.khem@gmail.com>
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] [PATCH] genericarm64.conf: set runqemu memory config to
 512 Mb
Message-ID: <aVIxz5NbLStKeYpD@nuoska>
References: <20251223082457.3465827-1-mikko.rapeli@linaro.org>
 <CAMKF1srLACe_KRciXeWxZ+PMgVmWdrH-Mp6sgcS8VtJtvgqA7w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMKF1srLACe_KRciXeWxZ+PMgVmWdrH-Mp6sgcS8VtJtvgqA7w@mail.gmail.com>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 29 Dec 2025 07:46:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13813

Hi,

On Tue, Dec 23, 2025 at 12:28:00PM -0800, Khem Raj wrote:
> On Tue, Dec 23, 2025 at 12:25 AM Mikko Rapeli via lists.yoctoproject.org
> <mikko.rapeli=linaro.org@lists.yoctoproject.org> wrote:
> 
> > The genericarm64 initramfs is larger than 256 Mb which is
> > the default runqemu memory config and thus boot fails when
> > extracted initramfs does not fit.
> >
> > Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> > ---
> >  meta-yocto-bsp/conf/machine/genericarm64.conf | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf
> > b/meta-yocto-bsp/conf/machine/genericarm64.conf
> > index 5d1010e..ce22b17 100644
> > --- a/meta-yocto-bsp/conf/machine/genericarm64.conf
> > +++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
> > @@ -57,6 +57,7 @@ QB_MACHINE ?= "-machine virt"
> >  QB_CPU ?= "-cpu cortex-a76"
> >  QB_CPU_KVM ?= "-cpu host -machine gic-version=3"
> >  QB_SMP ?= "-smp 4"
> > +QB_MEM ?= "-m 512"
> >
> 
> Some image recipes e.g. core-image-sato sets it conditionally like
> QB_MEM = '${@bb.utils.contains("DISTRO_FEATURES", "opengl", "-m 512", "-m
> 256", d)}'

You are right, this overrides the value:

# $QB_MEM [5 operations]
#   set? /home/builder/src/gpit/build/../meta-yocto/meta-yocto-bsp/conf/machine/genericarm64.conf:60
#     "-m 512"
#   set /home/builder/src/gpit/build/../core/meta/recipes-sato/images/core-image-sato.bb:18
#     "${@bb.utils.contains("DISTRO_FEATURES", "opengl", "-m 512", "-m 256", d)}"
#   set? /home/builder/src/gpit/build/../core/meta/classes-recipe/qemuboot.bbclass:96
#     "-m 256"
#   override[qemuarmv5]:set /home/builder/src/gpit/build/../core/meta/recipes-sato/images/core-image-sato.bb:19
#     "-m 256"
#   override[qemumips]:set /home/builder/src/gpit/build/../core/meta/recipes-sato/images/core-image-sato.bb:20
#     "-m 256"
# pre-expansion value:
#   "${@bb.utils.contains("DISTRO_FEATURES", "opengl", "-m 512", "-m 256", d)}"
QB_MEM="-m 256"

So 256 Mb without opengl in DISTRO_FEATURES.

But the problem solved by this patch is core-image-minimal or other images
which do not set QB_MEM at all and thus rely on defaults from qemuboot.bbclass or
runqemu and they don't work on genericarm64 with a large initramfs. With this
patch they work:

# $QB_MEM [2 operations]
#   set? /home/builder/src/gpit/build/../meta-yocto/meta-yocto-bsp/conf/machine/genericarm64.conf:60
#     "-m 512"
#   set? /home/builder/src/gpit/build/../core/meta/classes-recipe/qemuboot.bbclass:96
#     "-m 256"
# pre-expansion value:
#   "-m 512"
QB_MEM="-m 512"

> I wonder what happens with this change, will it get reset to 256 for
> qemuarm64 when not using opengl ?

I guess you meant genericarm64 since qemuarm64 is not affected by this.
So without "opengl" in DISTRO_FEATURES the 256 Mb is set which is not
ok but I don't know how to fix that atm. genericarm64 enables "opengl"
and I don't see a need to test genericarm64 without "opengl" support.

Cheers,

-Mikko

