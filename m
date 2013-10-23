Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-la0-f52.google.com (mail-la0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADCA5E0175B
	for <poky@yoctoproject.org>; Wed, 23 Oct 2013 16:06:23 -0700 (PDT)
Received: by mail-la0-f52.google.com with SMTP id eh20so1263743lab.11
	for <poky@yoctoproject.org>; Wed, 23 Oct 2013 16:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=JzzdWPgjmd0U2mVsyP8IRLrLn9tGP5rZ2RscD+32f1I=;
	b=dK7ocvx60hbh8QI9Gq/VClEMhRHfSdqs4vKLAYuLt5/Z2vhFBgU2SDw2D8uoQIdOuv
	N355gatpkt8uGPPnLoXSpQiY/212DV+8eL4fYMqAvn6kz9Qw4jwQhNsGyvjAPlh10Brv
	/A2iJeXfTagZVodN8sUZo1WU9FmoS3RHRjAKR5UaZDWygGN4B/6qpteYYqbkJIRuB3FU
	+h1xGq2EOBzRXkHjRba+Asp0mpbB+f9IBXw8q4qFBInmgpZC+duPXteoC+WjLfNCacNA
	B/68aBHJobB/zLPS+Ez0HbHUiEk6NADS0jhCRCGKhj5EPY9qLnTxUJT4mv9K1lgbTC45
	XSFw==
MIME-Version: 1.0
X-Received: by 10.152.36.41 with SMTP id n9mr2911696laj.21.1382569581902; Wed,
	23 Oct 2013 16:06:21 -0700 (PDT)
Received: by 10.112.14.200 with HTTP; Wed, 23 Oct 2013 16:06:21 -0700 (PDT)
In-Reply-To: <1382568000.6691.84.camel@localhost>
References: <1382568000.6691.84.camel@localhost>
Date: Wed, 23 Oct 2013 19:06:21 -0400
Message-ID: <CADkTA4NEoi90rFy7mDTdzaJx2twGVD5=Q=o8mc=tSH4nmATNtA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Colin Walters <walters@verbum.org>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Using linux-yocto_3.10 with dylan
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
X-List-Received-Date: Wed, 23 Oct 2013 23:06:24 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Oct 23, 2013 at 6:40 PM, Colin Walters <walters@verbum.org> wrote:
> Hi, I have a system derived from Poky Dylan, it is currently using
> linux-yocto-dev.bb.  Things were working fine up until recently when
> that branch was rebased to 3.12, and the new linux-yocto-3.10 git repo
> was made.  I had actually been unaware up until then that I was tracking
> a git branch instead of a fixed revision.
>
> Anyways, I'm trying now to continue using 3.10 with Dylan, but I'll be
> honest - the way the linux-yocto kernel has the configuation built and
> patches are applied is convoluted enough I'm having a lot of trouble
> figuring out what's going wrong.  The error looks like this in do_patch:
>
> DEBUG: Executing shell function do_patch
> Deleted branch meta-temp (was f58e62b).
> [INFO] validating against known patches  (qemux86-64-standard-meta)
>
> ... snip progress bar ...
>
> error: patch failed: arch/arm/mm/fault.c:448
> error: arch/arm/mm/fault.c: patch does not apply
> To force apply this patch, use 'guilt push -f'
> [ERROR] unable to complete push
> pending patches are:
> links/kernel-cache/arch/arm/v7-A15/ARM-LPAE-Invalidate-the-TLB-for-module-addresses-dur.patch
> links/kernel-cache/arch/arm/arm-ARM-EABI-socketcall.patch
> links/kernel-cache/arch/mips/malta-uhci-quirks-make-allowance-for-slow-4k-e-c.patch
> links/kernel-cache/arch/mips/4kc-cache-tlb-hazard-tlbp-cache-coherency.patch
> ... continued
>
> I've verified I can take current oe-core git master, change the kernel
> to 3.10, and it builds OK.   The main variation is I have a small set of
> config additions, but I don't know why this would result in the set of
> patches changing.  Is there an way I can see which patches are being
> applied and why?
>
> At the moment I'm trying to isolate what configuration change is causing
> this, but hopefully someone here will have a useful hint.  Thanks!

It's the kernel tools. You need to bring back the matched tools -> the new 3.10
kernel tree, since they no longer use guilt to manage patches on branches, but
instead use pure git. The guilt tools can't detect that the patches are in fact
already applied to the tree, and try to push changes again, which lead to your
error.

Bruce

>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

