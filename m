Return-Path: <raj.khem@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5DBA64C8106A
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 15:18:50 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yxm8 with SMTP id 8so1774878yxm.35
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 13:18:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:received:date:from:to:cc:subject
	:message-id:references:mime-version:content-type:content-disposition
	:in-reply-to:user-agent;
	bh=QZqjeJvuMZDwYec06F73G/5ECuuTojeHZAtd6J1ViMU=;
	b=xT5YqOtsNG3/rSu3ba3Fai68zvHzalYmohQ3XFcwDbNO/dC6WWkirubKiS1Bk+M2eS
	VXUuCk5O8OnTeGQF4Re9VH/RX/KjuB6ivQd2XkDfAaocn2J8j1d4fL360s0CQXizZo7+
	0yAmC9+ZJUWTymGquA7KgM3KL7U+ZJhd9GtNA=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	b=E1jgwUebG4CBpkf6rfuVytYtFZDmv19xpj2EJ85guySMJ4m+PEsGMzhGbKVMvn+x3v
	XbJDDfIbEeGeR40Q0PYzVXVPvFsyIKK3n4Fgpx0bPX8VMY4RdAdAjvOyr/Jtwv7Y6gzp
	ANL9U7N1tYat+vz8Xngf0dnv+T+hORO+31X/A=
Received: by 10.150.196.8 with SMTP id t8mr7196471ybf.212.1292879929863;
	Mon, 20 Dec 2010 13:18:49 -0800 (PST)
Received: from gmail.com (99-57-141-118.lightspeed.sntcca.sbcglobal.net
	[99.57.141.118])
	by mx.google.com with ESMTPS id v39sm7666226yba.7.2010.12.20.13.18.48
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 20 Dec 2010 13:18:49 -0800 (PST)
Date: Mon, 20 Dec 2010 13:19:02 -0800
From: Khem Raj <raj.khem@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Message-ID: <20101220211902.GB17904@gmail.com>
References: <4D07DAB8.3030504@linux.intel.com>
	<AANLkTikHHcSXRBu-z3dZHEHiQOnTZkJH9KtRHWpjsTiS@mail.gmail.com>
	<4D0F9D30.5040401@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <4D0F9D30.5040401@linux.intel.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
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
X-List-Received-Date: Mon, 20 Dec 2010 21:18:50 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On (20/12/10 10:15), Darren Hart wrote:
> On 12/19/2010 09:08 PM, Bruce Ashfield wrote:
> >On Tue, Dec 14, 2010 at 3:59 PM, Darren Hart<dvhart@linux.intel.com>  wrote:
> >>In developing new kernel recipes, I've run across some difficulty in
> >>determining the ideal way to select one kernel recipe over another. The
> >>machine configs specify the preferred provider. For the Linaro layer, I
> >>setup new machine configs which specified the linux-linaro as the preferred
> >>kernel.
> >
> >kicking some life into this thread, I scanned it earlier, but was preoccupied
> >with getting .37 out and the SRCREV issues until now.
> >
> >I've had similar issues to this when working on the -stable versus -dev
> >yocto trees. Since the preferred kernel is in the machine files, switching
> >between -stable and -dev requires an update to the conf files, and if a
> >machine prefers one kernel type, manually building one forces a wait
> >through the preferred kernel first (not always what I wanted).
> >
> >>
> >>As I'm working with preempt_rt, I'm running into this again. I could create
> >>more machine configs, but this approach won't scale well (having to create a
> >>copy of all the supported machine configs just to change the preferred
> >>kernel). I could set LINUX_KERNEL_TYPE="preempt_rt" in my local.conf, but
> >>that would reuse all the settings in the existing recipes (like
> >>COMPATIBLE_MACHINES), all of which don't necessary apply to the new kernel
> >>type.
> >
> >LINUX_KERNEL_TYPE_<machine>="preempt_rt"
> >
> >Would be the way to put in your local conf and have it only impact
> >a single machine. But now that I think of it, I haven't tried that in
> >the local.conf, so someone can correct me if variable overrides don't
> >work there.
> >
> >>
> >>I've considered looking for a way to specify the kernel type in the new
> >>image definitions (ie poky-image-rt) and creating new recipes for each
> >>kernel type. I like the idea of one recipe per kernel type as this makes
> >>things more explicit and avoids contamination between the various kernel
> >>types. This approach however seems to be at odds with the Poky way of doing
> >>this which, as I understand it, would be to specify the provider in the
> >>machine config and any modifiers (like type) in the local.conf.
> >
> >I'd agree that cloning and adding more machine configs just to
> >change kernel types will rapidly increase the count, and if we don't
> >setup includes appropriately, could lead to errors.
> >
> >>
> >>Can we get a discussion started here to determine some best practices?
> >
> >I'm not sure about best practices, but I had planned to tackle
> >this in similar ways to what we've been using layers at Wind River to solve this
> >for the past several years.
> >
> >a) have a single recipe that switches the kernel type based on a
> >     variable being set. That's pretty much what you have above, but
> >     as we've discussed in the past, mux'ing through a single recipe
> >     that behaves differently based on configuration isn't always in line
> >     with other recipes I've seen.
> >b) make a -rt layer, that when included overrides the preferred kernel to
> >     preempt_rt. This is consistent with other layering schemes that trigger
> >     behaviour when you include a particular layer. The addition of the layer
> >     is the indication that you want a specific configuration to happen.
> >c) put the preferred kernel in an include file, and make that include
> >     conditional on something that is set in the local environment. This is
> >     pretty much what we'd do with the kernel type being set, so there's
> >     really not much different here.
> 
> Taking a step back and thinking about this from a user's perspective.
> 
> a.1) Edit local.conf
>    	LINUX_KERNEL_TYPE_atom-pc="preempt_rt"
>    A tad arcane, but any habitual bitbake user shouldn't complain too
>    much. This assumes the only thing that needs to change for PREEMPT_RT
>    is the kernel type, when, in fact, things like COMPATIBLE_MACHINES
>    should also change or the user is likely to run into strange errors
>    if they try to build on an untested machine.
> 
> a.2) Edit local.conf
>    PREFERRED_PROVIDER_vitual/kernel_atom-pc-"linux-yocto-rt"
>    Other than being slightly more arcane, this addresses the issues of
>    the kernel type solution.
> 
> b) Edit bblayers.conf
>    /path/to/poky/meta-rt
>    Fairly intuitive user-action. The machine.conf appends should likely
>    follow a.2.
> 
> c) pretty much the same as a)
> 
> I still find the tying of PREEMPT_RT to the machine to be
> non-intuitive, and the setting in the build conf to be too broad. It
> applies to every image built for those machines. This makes adding rt
> specific images a bit irregular since you could build them without
> a preempt_rt kernel (or perhaps an RDEPENDS would prevent build) and
> if the other settings are in place, selecting a non-rt image will result
> in that image with a PREEMPT_RT kernel.
> 
> In my opinion, the ideal user experience would be:
> 
> $ bitbake poky-image-rt
> 
> Which then reports:
> 
> Error: $MACHINE does not have linux-yocto-rt support.
> 
> or it successfully builds.
> 
> The problem with this approach as I understand it, is the image
> recipe is too far along in the bitbake process to be able to
> influence the
> kernel selected for the image.
> 
> So we can either opt for b) which I see as the least of all evils, or we
> can look into ways to enhance image recipes to be able to influence
> PREFERRED_PROVIDER_virtual/kernel.
> 
> Thoughts?

How about making preemt_rt part of MACHINE_FEATURE or DISTRO_FEATURE
and when chosen it uses the right kernel.

> 
> -- 
> Darren Hart
> Yocto Linux Kernel
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

