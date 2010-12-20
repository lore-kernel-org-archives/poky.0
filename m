Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1959C4C80B70
	for <poky@yoctoproject.org>; Sun, 19 Dec 2010 23:08:25 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so2307596iyb.35
	for <poky@yoctoproject.org>; Sun, 19 Dec 2010 21:08:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type;
	bh=G/X4mzYLADhoDmRTLJ1f+hWSZxvq+4fmU+RtsDW26BQ=;
	b=myiABfkwMwC6OmHnq+uDCV/yilvv4y0HED6YyboZilsgFPu0sYa3zwaKsBg++mnYHc
	rmdhkQnlBRps5l+wMyuy+ROapRk8l2bVbgseL8LgttBlEOjIswTjERTN8pEbVIJfEfm+
	Yot9owfVuxIJrjVDDiDlN1cvTZthoDGXcIB1s=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=QZmTYHhmKwFOQUEhsEJZUrmpUsi514y2gSkvv7ob0ccdmM7P+Wd8SOQVaEIpJoCrio
	fYaqdBGlCqx1jdpV3+zZ/09yA1QR5vQklxL7XngwayIi5V3FkxmZXacUUme6MKwlRZJf
	Jo381tzyPKUKXa6361ZDJK1P8x+kT9AehUjeI=
MIME-Version: 1.0
Received: by 10.231.12.10 with SMTP id v10mr3478792ibv.171.1292821704569; Sun,
	19 Dec 2010 21:08:24 -0800 (PST)
Received: by 10.231.180.224 with HTTP; Sun, 19 Dec 2010 21:08:24 -0800 (PST)
In-Reply-To: <4D07DAB8.3030504@linux.intel.com>
References: <4D07DAB8.3030504@linux.intel.com>
Date: Mon, 20 Dec 2010 00:08:24 -0500
Message-ID: <AANLkTikHHcSXRBu-z3dZHEHiQOnTZkJH9KtRHWpjsTiS@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: kernel type selection
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 20 Dec 2010 05:08:25 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Dec 14, 2010 at 3:59 PM, Darren Hart <dvhart@linux.intel.com> wrote:
> In developing new kernel recipes, I've run across some difficulty in
> determining the ideal way to select one kernel recipe over another. The
> machine configs specify the preferred provider. For the Linaro layer, I
> setup new machine configs which specified the linux-linaro as the preferred
> kernel.

kicking some life into this thread, I scanned it earlier, but was preoccupied
with getting .37 out and the SRCREV issues until now.

I've had similar issues to this when working on the -stable versus -dev
yocto trees. Since the preferred kernel is in the machine files, switching
between -stable and -dev requires an update to the conf files, and if a
machine prefers one kernel type, manually building one forces a wait
through the preferred kernel first (not always what I wanted).

>
> As I'm working with preempt_rt, I'm running into this again. I could create
> more machine configs, but this approach won't scale well (having to create a
> copy of all the supported machine configs just to change the preferred
> kernel). I could set LINUX_KERNEL_TYPE="preempt_rt" in my local.conf, but
> that would reuse all the settings in the existing recipes (like
> COMPATIBLE_MACHINES), all of which don't necessary apply to the new kernel
> type.

LINUX_KERNEL_TYPE_<machine>="preempt_rt"

Would be the way to put in your local conf and have it only impact
a single machine. But now that I think of it, I haven't tried that in
the local.conf, so someone can correct me if variable overrides don't
work there.

>
> I've considered looking for a way to specify the kernel type in the new
> image definitions (ie poky-image-rt) and creating new recipes for each
> kernel type. I like the idea of one recipe per kernel type as this makes
> things more explicit and avoids contamination between the various kernel
> types. This approach however seems to be at odds with the Poky way of doing
> this which, as I understand it, would be to specify the provider in the
> machine config and any modifiers (like type) in the local.conf.

I'd agree that cloning and adding more machine configs just to
change kernel types will rapidly increase the count, and if we don't
setup includes appropriately, could lead to errors.

>
> Can we get a discussion started here to determine some best practices?

I'm not sure about best practices, but I had planned to tackle
this in similar ways to what we've been using layers at Wind River to solve this
for the past several years.

a) have a single recipe that switches the kernel type based on a
    variable being set. That's pretty much what you have above, but
    as we've discussed in the past, mux'ing through a single recipe
    that behaves differently based on configuration isn't always in line
    with other recipes I've seen.
b) make a -rt layer, that when included overrides the preferred kernel to
    preempt_rt. This is consistent with other layering schemes that trigger
    behaviour when you include a particular layer. The addition of the layer
    is the indication that you want a specific configuration to happen.
c) put the preferred kernel in an include file, and make that include
    conditional on something that is set in the local environment. This is
    pretty much what we'd do with the kernel type being set, so there's
    really not much different here.

Cheers,

Bruce

>
> Thanks,
>
> --
> Darren Hart
> Yocto Linux Kernel
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

