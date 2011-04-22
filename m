Return-Path: <kergoth@gmail.com>
Received: from mail-vx0-f181.google.com (mail-vx0-f181.google.com
	[209.85.220.181])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3016D4C80A54
	for <poky@lists.yoctoproject.org>; Fri, 22 Apr 2011 10:47:19 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vxb39 with SMTP id 39so640814vxb.26
	for <poky@lists.yoctoproject.org>; Fri, 22 Apr 2011 08:47:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:in-reply-to:references:from
	:date:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=6SE86IFKR205xN6HBz080ij2yVxmq1HziuUvq2Ui3Ic=;
	b=Bv1b7HyUtiIeoCLVNE+cnq44O2yUMvYvh1X1k2YO2CDTG8/Q/3G6/tN0NPRYcPkKgs
	9cQZ0hJH4eY1amF+bbzt3QRCUata6vxJ5K3AcY03SjquwOTfzex3Vj8MbNsH/zw3RZmZ
	+By8CguHSmqljnBhcxxSJIJ1rzmqbiko2tGxU=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	b=cm+VdJCrceCG6Tj4HGMh542sEOxn6/593yDKAg+RHC3up3IFC32zt4Q+jbq52gbLOh
	1EArRaTJq1BFwrjzllxx+X7Gwp0cxRzwcp+frYU/J15qpbzHXRu72WfVn7oBnTl2lJ3d
	QmEbmbIZBdLCwTi+nn6EXbDn47FTMYfzLznR0=
Received: by 10.52.177.8 with SMTP id cm8mr1853962vdc.78.1303487232615; Fri,
	22 Apr 2011 08:47:12 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.52.156.226 with HTTP; Fri, 22 Apr 2011 08:46:32 -0700 (PDT)
In-Reply-To: <1303342638.5518.325.camel@rex>
References: <1303342638.5518.325.camel@rex>
From: Chris Larson <clarson@kergoth.com>
Date: Fri, 22 Apr 2011 08:46:32 -0700
X-Google-Sender-Auth: 2fflIXX-RtYpIl6HmnXBeVWpod8
Message-ID: <BANLkTikrcgBm8hQAZ4_68Z134BDCq3V_aA@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky <poky@lists.yoctoproject.org>
Subject: Re: OE-Core Rebranding Phase 1
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
X-List-Received-Date: Fri, 22 Apr 2011 15:47:19 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Apr 20, 2011 at 4:37 PM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> At the face to face OE TSC meeting we talked over the "branding" issues
> on OE-Core and what we were going to do about removing many of the poky
> references.
>
> This email represents a turning point for OE-Core as it marks the first
> pass of rebranding and is based on decisions the TSC made at that
> meeting. I'm not going to claim its 100% complete yet but it does give
> us a good start at it. From this point on, I'll be taking patches from
> people to assist with this. The key changes I've made so far are:
>
> * poky-init-build-env -> oe-init-build-env
> * poky-image-* -> core-image-*
> * task-poky-* -> task-core-*
> * git.pokylinux.org -> git.yoctoproject.org
> * POKYBASE -> COREBASE
> * poky-qemu -> runqemu
> * Sanitised local.conf.sample from Poky references
> * POKY_NATIVE_SYSROOT -> OECORE_NATIVE_SYSROOT
> * Renamed scrips/poky-* to scripts/oe-*
> * Renamed the poky-sb override to linuxstdbase
> * POKY_CONF_VERSION -> LOCALCONF_VERSION
> * Made sanity versions weak assignment

Aside: if you try to login to the yocto bug tracking system, and get
your password wrong, it switches the domain from git.yoctoproject.org
to git.pokylinux.org.  I expect the webserver configuration needs
fixing for remaining references like this.  Keeping the old ones
around as vhosts for compatibility is fine, but it should never switch
to it from the current domains.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

