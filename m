Return-Path: <raj.khem@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 514104C800BB
	for <poky@yoctoproject.org>; Wed, 23 Mar 2011 22:19:21 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwr19 with SMTP id 19so12795426iwr.35
	for <poky@yoctoproject.org>; Wed, 23 Mar 2011 20:19:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-type
	:content-disposition:in-reply-to:user-agent;
	bh=uzsEGsrp4/HN/O3TkXyF+XmG1pSHMZlH0mBPOJYlq4A=;
	b=TyZDyeVbn7JWz/WcvJNtIOwXbazsaiCtgC3uPq3zwL4daQg0ZefyVaq/B6SLOVAZ7z
	jRW4ozBhOIGM+xdO9IT6e9m15XIEXuF8Ryfp7GmQb1JmcGq+tVVSXvT3x+q/FiDAyOYW
	mKSanlam0kQk4eVZhcrM7uDYgmJndeezUhfjg=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	b=GMMiU+qxaGvtrh+ZIjkijSlb1CP9gM2QeY54nEH2WLXNl3k8AkqbdTbMnIMza4ZYMM
	AQudoT6ViEz87e7tc9lQn3yxEc3E5+rQ9C2blUP5S2rCz9RN78DZ8b2XD23Gysbgs09h
	BNdgJguj/Fc7Q3hFm0lWW0Jjua/Ilz153gXEI=
Received: by 10.43.58.148 with SMTP id wk20mr268749icb.242.1300936760747;
	Wed, 23 Mar 2011 20:19:20 -0700 (PDT)
Received: from sakrah.homelinux.org
	(99-57-141-118.lightspeed.sntcca.sbcglobal.net [99.57.141.118])
	by mx.google.com with ESMTPS id 19sm6212258ibx.1.2011.03.23.20.19.18
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 23 Mar 2011 20:19:19 -0700 (PDT)
Date: Wed, 23 Mar 2011 20:19:44 -0700
From: Khem Raj <raj.khem@gmail.com>
To: Colin Walters <walters@verbum.org>
Message-ID: <20110324031944.GC20796@sakrah.homelinux.org>
Mail-Followup-To: Colin Walters <walters@verbum.org>, poky@yoctoproject.org
References: <AANLkTikeUs9N=0-q_TPFr-xsQZTmAh5PORHYtrSMpf8u@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <AANLkTikeUs9N=0-q_TPFr-xsQZTmAh5PORHYtrSMpf8u@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: poky@yoctoproject.org
Subject: Re: [patch] autotools: Override do_compile to specify V=1 if project uses AM_V_GEN
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
X-List-Received-Date: Thu, 24 Mar 2011 03:19:21 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On (23/03/11 18:30), Colin Walters wrote:
>     Non-verbose logs are really annoying when trying to debug a build
>     failure.  A lot of projects are copying in the flag to use
>     AM_SILENT_RULES which automake gained recently.  We need to undo
>     this.
> 
>     Implement this by overriding do_compile in autotools to look for
>     its signature, and specify V=1 to make if we find it.

usually package which use silent-rules they have --disable-silent-rules
Did you try to pass this option ? May be try it with EXTRA_OECONF and
see if that helps

but if this patch it needed then ${MAKE} call should become oe_runmake

-- 
-Khem

