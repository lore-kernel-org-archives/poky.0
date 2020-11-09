Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
 by mx.groups.io with SMTP id smtpd.web09.5566.1604885849160671211
 for <poky@lists.yoctoproject.org>;
 Sun, 08 Nov 2020 17:37:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Uuz6BszA;
 spf=pass (domain: gmail.com, ip: 209.85.219.45, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f45.google.com with SMTP id y11so2940539qvu.10
        for <poky@lists.yoctoproject.org>; Sun, 08 Nov 2020 17:37:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=q/ml35391khVfhnPuURLGDm49ZvP2OLRdlS/5/DLb7E=;
        b=Uuz6BszAWHwch3EYrFpKWx+Co+XK/2HnMyYrVbbrIpNXqlDQCeFAPbQXEp/a37Aigs
         XoPz5ZjzbT1IV3CwWfCU3226FOLfhZGGgf8wUDGKdAyp1ac14HeikIGQA7BYBQmq2D+5
         9NKwCTWC0ttP3vzoUp9T8nRng6WSHuFvM0w2Uj/f3gG6f7KqW+Ct1OvR345GhQS226HW
         x+/hUhazaDMFmJOFUNc3w95FPWuWrhDNKK8ShB0xiVCc+oPcqqkAhrBizveRXFnnODBI
         SHi7SasRGohKf1/Iz2aao+mF/fs/Y9BrbA3/fOHXIVXjxl32mdVoE6PUiVaXZ9t/gyNT
         PfZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=q/ml35391khVfhnPuURLGDm49ZvP2OLRdlS/5/DLb7E=;
        b=IGaHZGwoYZekCkscs9iBq5HRz1T6TZTYNqQTPVXytr89NIQwu1AhNiFWd3/F6NJiSK
         Zz2k8uhqS4fWBHMej8V2GoAYrF90Dk9zuq+PXgpD+3GbH88Ru+5n8+IHDUUrevo+25lu
         HNoeWjmvHP/XUsDfLPJ1DnAbJUdTEMtQ4PRZXk8MKlb5WIwMU0DpmdWVi/KVusl6JQ/0
         0NDGkUrckW+FWOs3jDKKAwObJ/ojuTiG0NGpLrSeYu0SRMSZr38CXUtxcng8cOxPcTcG
         iz9kUDShigvqA69Oc48ySmhqAiFR7a9TPtvsbjQXzV/CueX3rzoa+XPY8yB3xaAH69YV
         4bAw==
X-Gm-Message-State: AOAM530FVlKGkv6LVbYLMrHo33X0rO7zyMarQgzdNVZyj//8Ua7fbKK/
	FFBOZHN7P1fobmZk2OdskHeR8etnrUaMvFAiQZ8=
X-Google-Smtp-Source: ABdhPJx8GszvfM+h8UmdrbbLv22tjmwYgCfrvdY2sKRl27itWrGZyexJcPONx9ugY9VT6ZA/rhjaSr+veShlRQPxaX4=
X-Received: by 2002:ad4:5763:: with SMTP id r3mr664532qvx.38.1604885848208;
 Sun, 08 Nov 2020 17:37:28 -0800 (PST)
MIME-Version: 1.0
References: <20201106170336.5216-1-okaya@kernel.org> <559e9e34-6e21-a66e-ce69-a72cc2f64935@gmail.com>
 <c9590d13-7be3-ea6b-1766-f322f0e35982@kernel.org>
In-Reply-To: <c9590d13-7be3-ea6b-1766-f322f0e35982@kernel.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Sun, 8 Nov 2020 17:37:00 -0800
Message-ID: <CAMKF1sojdk5oAvP-RLbMR01PoQhd1x430f4yQjPTgJX5ZOgUcg@mail.gmail.com>
Subject: Re: [poky] [PATCH] poky-tiny: use size optimization, section removal and lto
To: Sinan Kaya <okaya@kernel.org>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Sun, Nov 8, 2020 at 4:01 PM Sinan Kaya <okaya@kernel.org> wrote:
>
> On 11/6/2020 1:13 PM, Khem Raj wrote:
> >>
> >> diff --git a/meta-poky/conf/distro/poky-tiny.conf
> >> b/meta-poky/conf/distro/poky-tiny.conf
> >> index c6d4b88f83d..eb463403fd1 100644
> >> --- a/meta-poky/conf/distro/poky-tiny.conf
> >> +++ b/meta-poky/conf/distro/poky-tiny.conf
> >> @@ -122,3 +122,35 @@ PNBLACKLIST[core-image-weston] = "not buildable
> >> with poky-tiny"
> >>     # Disable python usage in opkg-utils since it won't build with
> >> tiny config
> >>   PACKAGECONFIG_remove_pn-opkg-utils = "python"
> >> +
> >> +# set default for all targets
> >> +CFLAGS_append_class-target += "-ffunction-sections -fdata-sections"
> >> +LDFLAGS_append_class-target += "-Wl,--gc-sections -flto"
> >
> > This should perhaps be added to FULL_OPTIMIZATION, although for lto I
> > was thinking that we should have a seprate include file like lto.inc
> > and call out the exceptions there. So it can be used in non poky-tiny
> > builds too. something like
> >
> > https://git.openembedded.org/openembedded-core-contrib/commit/?h=yoe/mut&id=b96dea04d451312e9e14d839215e3fef784c2c5d
> >
>
> I see that you are taking care of LTO already. There is also another
> patch for -Os.
>
> Would you be willing to follow up for "-ffunction-sections
> -fdata-sections" too?

that perhaps is fine and we should add that as in this patch. Except
that they should be part of GLOBAL_OPTIMIZATIONS
so please send a v2

>
> I just wanted to upstream what we are using internally.
>
> 
>
