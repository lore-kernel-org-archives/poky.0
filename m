Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72DA1E00D38; Wed, 28 Aug 2019 09:05:28 -0700 (PDT)
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
	*      [209.85.160.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
	[209.85.160.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE03DE00CD5
	for <poky@yoctoproject.org>; Wed, 28 Aug 2019 09:05:27 -0700 (PDT)
Received: by mail-qt1-f194.google.com with SMTP id q64so113045qtd.5
	for <poky@yoctoproject.org>; Wed, 28 Aug 2019 09:05:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=15qOwsuTdyBe1A+KAd1C3O7PnkJInt6VpSTyCseVfxw=;
	b=cF1ny/zijSdlw0WfaY/nsZjThq4FdbXVVjjjCpBQGBqFBFUhWK2QRBmnzCR+K2AEoH
	4rXUCefoyfeRBq5TnKqABbIYQJdzvBlsU6siA19QR6iG42tGY85+2sQygZQiLF5J2xIV
	j2oAnZaVXg88CMdZ7I85cfcH5g/0XNWIDWUvuKIo7JkUDUzFTyzszevw7BWKdAIQSALs
	NI790SjiKz3YAQx4JulgWRKlwoIj8zRYHvoezFKKEeapkBsF111+wLqRm0XSSkeA7AZ+
	flBeqXZAvt0oNzWiBPOKQqa19D6AA+qSYZa6toFSHzUFAaszci5JTIaDWmGdR3aU/7Ar
	OW2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=15qOwsuTdyBe1A+KAd1C3O7PnkJInt6VpSTyCseVfxw=;
	b=Jjy9QHEE5YYrUkIYo3W5RWFey10Fk7JZAFaHiuqNpPbmEbFkshT9+38PY46wob/d/K
	I6gIX/jlO6IeA6Dc4iDaVzQYNYVxf6K+vdT5Vhm+1Cb0nk+xUFR/Y8i70mufigmEb++N
	9wfnYGoaDDvgXaQXPtxLDmLyI9m7bL1fl1fhu9g+lFT1+i3GUhrueZ9J/QZ0HVNp41Cu
	YiUfXS7Gn8fW+tDnqrnUbvgApt0SZ0omUC66MvkYxq2R2u3G4fm9x7+OqOP5gF8FAYFt
	W7mumpHGwkfdV6sGgzZEntIhGOcLh91lZNOyWNd99/NlfXEERVWguSj1BNVE81iNAbc6
	jO9A==
X-Gm-Message-State: APjAAAVseIBwdSHxm2YYXqZ6bfK8afAuCKxna8zIjtfn0ioR/Uw1q1QS
	+v4u4RVKJuqM9XUtQ8PG7cS+PMz5LVa1neW1k79E6lfp
X-Google-Smtp-Source: APXvYqzezfueR+PVcXmnjc+OHhj3Pii8XwYnG1820WO1rFGlT0APbtk5sYs9OcpYqkAIV6NdhLW3sOfvZ2idfTXbjc0=
X-Received: by 2002:ac8:74d2:: with SMTP id j18mr5034296qtr.378.1567008326619; 
	Wed, 28 Aug 2019 09:05:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190828152633.70910-1-alex.kanavin@gmail.com>
	<CAMKF1sqZCCvpWN66++jZqD0znv+2m+4RbDiN7z5+3dJEB55NFw@mail.gmail.com>
	<adf200a45c75cc70ba7d9102023b5b1846dbe3a9.camel@rpsys.net>
	<CAMKF1sqwSXpyTzcSVfFBxz0sYyoMB--CL3Z5M9etOXcExoeDQg@mail.gmail.com>
	<f0c34ef041989c825814399911bc9340cd064b16.camel@rpsys.net>
In-Reply-To: <f0c34ef041989c825814399911bc9340cd064b16.camel@rpsys.net>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 28 Aug 2019 09:05:00 -0700
Message-ID: <CAMKF1sppxt8TaUjgxv=JDEgiMDEm_jZXcEjWa=t1hm8eXP5dBQ@mail.gmail.com>
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
X-List-Received-Date: Wed, 28 Aug 2019 16:05:28 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Aug 28, 2019 at 9:01 AM Richard Purdie <rpurdie@rpsys.net> wrote:
>
> On Wed, 2019-08-28 at 08:59 -0700, Khem Raj wrote:
> > On Wed, Aug 28, 2019 at 8:56 AM Richard Purdie <rpurdie@rpsys.net>
> > wrote:
> > > On Wed, 2019-08-28 at 08:54 -0700, Khem Raj wrote:
> > > > On Wed, Aug 28, 2019 at 8:27 AM Alexander Kanavin
> > > > <alex.kanavin@gmail.com> wrote:
> > > > > This is done for the sake of using the same default
> > > > > everywhere; see here for details:
> > > > > http://lists.openembedded.org/pipermail/openembedded-core/2019-August/285900.html
> > > > >
> > > > > Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> > > > > ---
> > > > >  meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 1 -
> > > > >  1 file changed, 1 deletion(-)
> > > > >
> > > > > diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> > > > > b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> > > > > index 7c7b3059a9f..57b799294d4 100644
> > > > > --- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> > > > > +++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> > > > > @@ -47,7 +47,6 @@ QB_DEFAULT_FSTYPE = "wic"
> > > > >  QB_FSINFO = "wic:no-kernel-in-fs"
> > > > >  QB_KERNEL_ROOT = "/dev/vda2"
> > > > >  QB_SYSTEM_NAME = "qemu-system-arm"
> > > > > -QB_MEM = "-m 512"
> > > > >  QB_MACHINE = "-machine virt"
> > > > >  QB_CPU = "-cpu cortex-a15"
> > > > >  QB_KERNEL_CMDLINE_APPEND = "console=ttyAMA0
> > > > > systemd.mask=systemd-
> > > > > networkd"
> > > >
> > > > I wonder if all these QB_* settings are relevant to non-qemu
> > > > machines
> > > > in first place
> > >
> > > qemu can now emulate the beaglebone, so yes.
> > >
> >
> > I see, but I thought beaglebone-yocto targetted a real board, and
> > shouldnt we have something like qemubbb or somesuch for this ?
>
> What purpose would that serve? I think its fine to have one machine if
> (and only if) qemu intends to emulate that specific hardware.
>

since these are reference machines, people will copy them to generate their
own machine configs, so they should specify whats needed, anyhow thats just me.

> Cheers,
>
> Richard
>

