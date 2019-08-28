Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60123E00D38; Wed, 28 Aug 2019 09:00:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
	[209.85.222.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B7F7E00D11
	for <poky@yoctoproject.org>; Wed, 28 Aug 2019 09:00:14 -0700 (PDT)
Received: by mail-qk1-f194.google.com with SMTP id r21so219704qke.2
	for <poky@yoctoproject.org>; Wed, 28 Aug 2019 09:00:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=4aQ54MGsPifmo/q7RhryQLl/hlELFH3lgEEIYPvhLVM=;
	b=B+DP08R0ALdS/5BfzfnEV0dkBh89FFS55gm1PmpApeHYmKLRRzq48lxvzA/i1jJ1bR
	6EKPjmLvuiNZORTgNwtTIKfir+QK5KJ69qzuvSNSxu8+MKTRxHJl+Qq53vDQlo/bT0xW
	s4S3FNZb6tNH/Q43Nnlmbox1dtUmLRbKJh8/srAldsqXW+arwuYTKIgvsqq3tp2gPB5S
	JsCB4gRBCehzIGjmMnS4VBwApXFMVwGX3ojg9GNlVAOyoNfRkI2AyDuHn3TMPGYTSp3w
	Lc+HHLQ6ihMwWGhLVYBUm3RcBEcO+DTsy3C+DBHBV9Rf6Xa30EP2kbavD7KhPpvuiCEy
	OOLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=4aQ54MGsPifmo/q7RhryQLl/hlELFH3lgEEIYPvhLVM=;
	b=kQ8B8BL/3hK9/YzyfJHsdDWdaZb3D+PMxodUD8VLwrvsaowokPhqye4cxahcTRUMWf
	A9DGkGnppBK4zyiUNRC2pIH8LkTZRP6gu0TrZyhn47Zm7tQW0rwwISXOhfXGPLoQUeMO
	ocrbRCH26MwlpHpoxuE8OgUnSdiLDRlOcWWD3EilKpGtCz89YBXLlpAABL5/z2mZUj7I
	7SrCD1eI1cfm39GU/aWTOz5VhsjHjT7/UF/k3Sf7tQ1NEaIddRxiWmTChqeN+0Dv/n+U
	5iKRqc8AAMUhwueb0ryugGGWr05Po16ttLBANSF63Z1nj76DRQB5DqxpUuUXMdT/a3GU
	yIcw==
X-Gm-Message-State: APjAAAU6YXskuf+m03TBdeaEfzvrl2e5oN7b32Y2tk64SCTLgoqv7DTl
	YPOvSJm5nox2Xv3x0ibaqvPxUcLpUpvH/a7pdfs=
X-Google-Smtp-Source: APXvYqzwA4kFrKlTAQeZf0AL+1Sl9UHkf2malABcWTWXuur81r9CdnRUnLvWYZQcVaKRWuvOzDtr9gnKuHwNw5NtoKU=
X-Received: by 2002:a37:b481:: with SMTP id d123mr4484309qkf.71.1567008013677; 
	Wed, 28 Aug 2019 09:00:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190828152633.70910-1-alex.kanavin@gmail.com>
	<CAMKF1sqZCCvpWN66++jZqD0znv+2m+4RbDiN7z5+3dJEB55NFw@mail.gmail.com>
	<adf200a45c75cc70ba7d9102023b5b1846dbe3a9.camel@rpsys.net>
In-Reply-To: <adf200a45c75cc70ba7d9102023b5b1846dbe3a9.camel@rpsys.net>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 28 Aug 2019 08:59:47 -0700
Message-ID: <CAMKF1sqwSXpyTzcSVfFBxz0sYyoMB--CL3Z5M9etOXcExoeDQg@mail.gmail.com>
To: Richard Purdie <rpurdie@rpsys.net>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] beaglebone: use the default of 256M rather than 512M
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
X-List-Received-Date: Wed, 28 Aug 2019 16:00:15 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Aug 28, 2019 at 8:56 AM Richard Purdie <rpurdie@rpsys.net> wrote:
>
> On Wed, 2019-08-28 at 08:54 -0700, Khem Raj wrote:
> > On Wed, Aug 28, 2019 at 8:27 AM Alexander Kanavin
> > <alex.kanavin@gmail.com> wrote:
> > > This is done for the sake of using the same default
> > > everywhere; see here for details:
> > > http://lists.openembedded.org/pipermail/openembedded-core/2019-August/285900.html
> > >
> > > Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> > > ---
> > >  meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 1 -
> > >  1 file changed, 1 deletion(-)
> > >
> > > diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> > > b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> > > index 7c7b3059a9f..57b799294d4 100644
> > > --- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> > > +++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> > > @@ -47,7 +47,6 @@ QB_DEFAULT_FSTYPE = "wic"
> > >  QB_FSINFO = "wic:no-kernel-in-fs"
> > >  QB_KERNEL_ROOT = "/dev/vda2"
> > >  QB_SYSTEM_NAME = "qemu-system-arm"
> > > -QB_MEM = "-m 512"
> > >  QB_MACHINE = "-machine virt"
> > >  QB_CPU = "-cpu cortex-a15"
> > >  QB_KERNEL_CMDLINE_APPEND = "console=ttyAMA0 systemd.mask=systemd-
> > > networkd"
> >
> > I wonder if all these QB_* settings are relevant to non-qemu machines
> > in first place
>
> qemu can now emulate the beaglebone, so yes.
>

I see, but I thought beaglebone-yocto targetted a real board, and
shouldnt we have something like qemubbb or somesuch for this ?

> Cheers,
>
> Richard
>

