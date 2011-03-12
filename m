Return-Path: <raj.khem@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6D32B4C800A3
	for <poky@yoctoproject.org>; Fri, 11 Mar 2011 18:10:32 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwr19 with SMTP id 19so4893643iwr.35
	for <poky@yoctoproject.org>; Fri, 11 Mar 2011 16:10:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-type
	:content-disposition:in-reply-to:user-agent;
	bh=bDn/VePuFK5H+5vWSVNy+1YoJhXL+onwfDSEDmeYrmQ=;
	b=cQ4fJty6rRD05HRl3+zzecI0Wbi8SPLZ+PZyUqf8auQdnoZHMNNqa4MkC3MenxPWGF
	YEF0ISyDblAzkzYctDa/LPRVH827L1w/JRAGlOrb1HwFwuK1oFiGy9GKRZHJpiJDpxBr
	6oMsPhozL55e0p8QHHBW9e3qHlYvaNthRCHeg=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	b=Pc8+0BoNLyzcT/cWT2QBCEGFht7h3M5waqShaLYvpIMjpS5OOI97Zo4WyP1KhO6G+t
	YPJo4WeJByFiokX1RTxJYf9Wy9TfKn0PIQtmEtYDKy+ENyrhd8KhQm1/cFSHp9DenWAf
	7c6zNT7tEjsUAANW9WMfG63gYLxG4A5g+3s2Q=
Received: by 10.231.67.201 with SMTP id s9mr7450738ibi.176.1299888630859;
	Fri, 11 Mar 2011 16:10:30 -0800 (PST)
Received: from sakrah.homelinux.org
	(99-57-141-118.lightspeed.sntcca.sbcglobal.net [99.57.141.118])
	by mx.google.com with ESMTPS id d10sm3882145ibb.12.2011.03.11.16.10.28
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 11 Mar 2011 16:10:29 -0800 (PST)
Date: Fri, 11 Mar 2011 16:10:53 -0800
From: Khem Raj <raj.khem@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20110312001053.GF5603@sakrah.homelinux.org>
Mail-Followup-To: Gary Thomas <gary@mlbassoc.com>,
	Tom Rini <tom_rini@mentor.com>, poky@yoctoproject.org
References: <4D7A08BF.80303@mlbassoc.com> <1299863594.1445.2875.camel@rex>
	<4D7A59DC.6070900@mlbassoc.com> <4D7A5AFA.7080107@mentor.com>
	<4D7A5CB8.8000701@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <4D7A5CB8.8000701@mlbassoc.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: poky@yoctoproject.org, Tom Rini <tom_rini@mentor.com>
Subject: Re: Native vs not
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
X-List-Received-Date: Sat, 12 Mar 2011 00:10:32 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On (11/03/11 10:32), Gary Thomas wrote:
> On 03/11/2011 10:25 AM, Tom Rini wrote:
> >On 03/11/2011 10:20 AM, Gary Thomas wrote:
> >>On 03/11/2011 10:13 AM, Richard Purdie wrote:
> >>>On Fri, 2011-03-11 at 04:34 -0700, Gary Thomas wrote:
> >>>>As pointed out in another thread, I'm trying to build a native
> >>>>package which sends "I need native" ripples throughout much of
> >>>>the Poky infrastructure.
> >>>>
> >>>>Does having a native version available for any given package incur a
> >>>>cost?
> >>>>If not, would patches for [all of] the packages I need be acceptable?
> >>>>
> >>>>So far, nearly all of the affected packages built fine, just adding
> >>>>native
> >>>>to BBCLASSEXTEND. Many already build nativesdk versions already.
> >>>
> >>>There is a cost incurred by doing this since it does increase parse time
> >>>and this is something user exposed which we do try and keep under
> >>>control.
> >>>
> >>>Having said that, the BBCLASSEXTEND technology has a lot less overhead
> >>>than some of the older approaches to native/sdk recipes.
> >>
> >>As is, I created a separate layer with a bunch of bbappend files that are
> >>only
> >>BBCLASSEXTEND += " native "
> >>I suppose if I never needed them, I could just not enable that layer.
> >>
> >>>
> >>>The main reason I've been against native everywhere is that having
> >>>native versions available makes it far too easy for people to add native
> >>>dependencies which encourage feature creep without thinking through the
> >>>huge additional dependency chains, the extra build time and other
> >>>implications. Often there are slightly more difficult but worthwhile
> >>>ways we can avoid the native dependency.
> >>
> >>Such as? I started down this path needing a native tool (which admittedly
> >>came from an OE recipe librsvg) which then cascaded into cairo-native and
> >>beyond, totally 22 packages!. If I knew of a short circuit for this, I'd
> >>certainly entertain it.
> >
> >Having just skimmed the OE recipes, yeah, there we just build a ton of stuff in librsvg-native. But I would start by looking at what we can pass to configure to disable things as
> >part of the host tool build.
> >
> >Doing some git grep'ing I see there's just a few things in OE that need librsvg-native so perhaps we can build a much more limited native recipe instead and still generate what we
> >need to.
> 
> What I really needed was rsvg-convert which is used during the build of
> midori.  In Poky/Yocto, that tool has to come from librsvg-native.  OE
> seems to be happy leaning on the host version.

I think having some buildhost/native packages (based on distro/version) trusted and assume provided or even
installed using the build host package management could be one approach
in modern distros I think we could use lot of host packages as is. or
may be trust all and keep a list of blacklisted packages for a given
distro might be something useful

> 
> -- 
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
-Khem

