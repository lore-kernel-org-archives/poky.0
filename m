Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
 by mx.groups.io with SMTP id smtpd.web10.27156.1661219799468602300
 for <poky@lists.yoctoproject.org>;
 Mon, 22 Aug 2022 18:56:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=OseWQ4xE;
 spf=pass (domain: gmail.com, ip: 209.85.210.48, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ot1-f48.google.com with SMTP id 53-20020a9d0838000000b006371d896343so8917744oty.10
        for <poky@lists.yoctoproject.org>; Mon, 22 Aug 2022 18:56:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=tJU5lkwxhg2qKUXsfseTWd1V7uT5xOiMj0qSKE3JAUk=;
        b=OseWQ4xEHGcUrTSrUmRj6ptrwIXRsxRCOLGCNaPm84Uy/UI0FISvoAgPXWYm3jvjOi
         x11yG5AVTZECZZYiyF/80zudaDGmD6xBI4KmcdUyZ1L5VPfa5aEVAsFPtMDUmiJNoTfn
         nUq0Q6oD2ki/7dWKTmxMac+YC46jIrLiuP9WZWwzNE07hErgNTDr9FTbvjED6dYY/4ZN
         eqkCHOkiwFMzcHb2eY3PZinB5uxWcfH5w0SQQkaRljF0MValtpLXxi3dfUeE/hG8ItmB
         +r4hA21qvztgUswl0BHkzn4zQ6cAzwC3xm+DZtAr7WtSCxEtcSdSHiE/xvFC8/2/seb3
         dSCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=tJU5lkwxhg2qKUXsfseTWd1V7uT5xOiMj0qSKE3JAUk=;
        b=k5lZmI6cra5uqvLrh8QgZWG6SXD+7R3f5cv9Zj0A9yc8nhpSLrPI4KQbAdm0Z+xgcm
         B01b2EL5fJj8L3MUpoYpQLishs9jWRRMxPnyGpPnPkimrcYhxrnxednqhE02wLtUlPKb
         CSUmsVEGn601qL8FEpuRNWHh4wOqBS2XT7MhBsW2T+w/F8u5k1LEAjvEVW5KKsGRtgCW
         BncLI38QFIqnjvMBe+0m+Ah2bAHuLbIcC96RLN9s7/FX4jeHgPAEB3ZF9xJBmkTC4le0
         7QjLxsSq/uTmFXpkxIasnjpGAB3AabcCOnzEqIPxcH0ix7RoFQsNcUgT3DVW8SpohFQk
         FU3Q==
X-Gm-Message-State: ACgBeo0yypmre367dD5SE8SAU/fEr/f/ICYl2wJR6/OaJk+eG/E8YJpa
	5tN/6Yefg3pvMCFsSQpcGIJUzCIDd3P1FrHbj58=
X-Google-Smtp-Source: AA6agR4gcjKYgTAUCF0hQaFGRFPZs61SodJI17HfE1vG7B7vJ8uAUlX9SAyTIOzlObMeZWHwUPKP8WVC700c/DtxYAs=
X-Received: by 2002:a9d:3e47:0:b0:638:e49d:4c9f with SMTP id
 h7-20020a9d3e47000000b00638e49d4c9fmr8638296otg.190.1661219798734; Mon, 22
 Aug 2022 18:56:38 -0700 (PDT)
MIME-Version: 1.0
References: <20220821091446.2932085-1-kexin.hao@windriver.com>
 <20220822174513.1b8bf5c3@booty> <YwQkpsKT8plbHG1x@pek-khao-d2>
In-Reply-To: <YwQkpsKT8plbHG1x@pek-khao-d2>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Mon, 22 Aug 2022 22:56:15 -0300
Message-ID: <CADkTA4OacJmHc-D2k_dKzMp4=f=wOYAGt7K2hZ=czMBA4cww1A@mail.gmail.com>
Subject: Re: [poky] [PATCH 1/2] meta-yocto-bsp: Bump the kernel to v5.15.60
To: Kevin Hao <kexin.hao@windriver.com>
Cc: Luca Ceresoli <luca.ceresoli@bootlin.com>, poky@lists.yoctoproject.org, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, Aug 22, 2022 at 9:52 PM Kevin Hao <kexin.hao@windriver.com> wrote:
>
> On Mon, Aug 22, 2022 at 05:45:13PM +0200, Luca Ceresoli wrote:
> > [Please note: This e-mail is from an EXTERNAL e-mail address]
> >
> > Hello Kevin,
> >
> > On Sun, 21 Aug 2022 17:14:45 +0800
> > "Kevin Hao" <kexin.hao@windriver.com> wrote:
> >
> > > Update the v5.15 kernel to the latest stable version for all machines.
> > >
> > > Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
> >
> > Testing with this patch applied triggers this warning when building for
> > beaglebone:
> >
> >   WARNING: linux-yocto-5.19.1+gitAUTOINC+89fdc2046b_06993dc6c9-r0 do_kernel_configcheck: [kernel config]: specified values did not make it into the kernel's final configuration:
> >
> >     [NOTE]: 'CONFIG_OMAP_32K_TIMER' last val (y) and .config val (n) do not match
>
> The fix for this has already been merged into yocto-kernel-cache [1], and this warning
> would disappear once Bruce bump the SRCREV_meta.

I'm doing some final testing with 5.19.2, and expect to do those bumps
on Tuesday.

Bruce

>
> [1] https://git.yoctoproject.org/yocto-kernel-cache/commit/?h=yocto-5.19&id=3abac8166b2d0e273c226e1d71f678ae4da6fe37
>
> Thanks,
> Kevin
>
> >
> > Log:
> > https://autobuilder.yoctoproject.org/typhoon/#/builders/65/builds/5781/steps/11/logs/stdio
> >
> > --
> > Luca Ceresoli, Bootlin
> > Embedded Linux and Kernel engineering
> > https://bootlin.com
>
> 
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
