Return-Path: <raj.khem@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 430784C8007E
	for <poky@yoctoproject.org>; Sat, 12 Feb 2011 00:05:20 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so3301316iwn.35
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 22:05:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=kQ6SsqSA5kVpVWZMhD2i5OSvL/cinj7fgzX9Z8jNlwQ=;
	b=ZDxOYlNaw+t4OO9mUx9o0qOCo1cadh4n/kSJBfqr6wdbykDds7S0ZlwY6iy3FLvHyT
	ncYZcHZ4dbKo+L0Vacvb77bZFps2zbyBfRspB11wOiliHufRvu8Rbc5njS5XNLFkhgY1
	WoT1kz5aadjDtAmm5Kr0VRaHvMGmdedhCVGy0=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	b=jvGlpTVsBItF54SPIeCfHSS0yDKY5N9DWtZXsPAjwi9HZ2IR7y5a7MdGQM/2o9XW2f
	fSA6WEMliI9ZSZTn605oKg++oX6WQ/FVVwZomJMtoEOJ3Xvb4nHR9fm2g1hzQ4I792bd
	rzCEne+LdPwNGOHe61gcS+fgFwCpH/MELFc1E=
Received: by 10.42.175.67 with SMTP id az3mr1731569icb.414.1297490719718;
	Fri, 11 Feb 2011 22:05:19 -0800 (PST)
Received: from gmail.com (99-57-141-118.lightspeed.sntcca.sbcglobal.net
	[99.57.141.118])
	by mx.google.com with ESMTPS id u9sm167093ibe.20.2011.02.11.22.05.16
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 11 Feb 2011 22:05:17 -0800 (PST)
Date: Fri, 11 Feb 2011 22:05:12 -0800
From: Khem Raj <raj.khem@gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Message-ID: <20110212060512.GB3321@gmail.com>
References: <4D5569A0.7080308@mlbassoc.com> <4D5574D7.3010005@mentor.com>
	<4D557ED0.4050705@mlbassoc.com> <4D55805C.2020503@windriver.com>
MIME-Version: 1.0
In-Reply-To: <4D55805C.2020503@windriver.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: poky@yoctoproject.org, Tom Rini <tom_rini@mentor.com>
Subject: Re: busybox & update-alternatives
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
X-List-Received-Date: Sat, 12 Feb 2011 06:05:20 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On (11/02/11 12:30), Mark Hatle wrote:
> On 2/11/11 12:24 PM, Gary Thomas wrote:
> > On 02/11/2011 10:41 AM, Tom Rini wrote:
> >> On 02/11/2011 09:53 AM, Gary Thomas wrote:
> >>> A build for my platform with today's master
> >>> 49a18f1748d2417958b8e19cdd58c0c79f4fc728
> >>> shows a new behaviour - many messages like this:
> >>> update-alternatives: Linking //usr/bin/wc to ../../bin/busybox
> >>>
> >>> Questions:
> >>> * Is this truly new or was it just quiet before?
> >>> * Can't this be done at image build time? On my little
> >>> embedded OMAP-L138, it takes nearly 2 minutes to run
> >>> through this. My root is a ramdisk, so this is a cost
> >>> I see on _every_ boot.
> >>> * If it can't be done at build time, can I disable it?
> >>
> >> It can be done at build time _except_ for when there's a conflict. I suspect what's going on is that a recent change has introduced a conflict (which is to say, busybox provides
> >> foo as an alternative and something else also provides it, but isn't registering it as an alternative). If you check the whole boot log (or log.do_rootfs) you can find where the
> >> conflict is and then do something like http://cgit.openembedded.org/cgit.cgi/openembedded/commit/?id=902b98f32ffd35661e43382f47226f65528ff1b1 (it's a little more complicated if the
> >> recipe also does BBCLASSEXTEND, since you don't want to do the move for virtclass-foo).
> > 
> > Running the postinst script manually, I get this error:
> > 
> > + update-rc.d -s syslog busybox-udhcpc defaults
> > usage: update-rc.d [-n] [-f] [-r <root>] <basename> remove
> >         update-rc.d [-n] [-r <root>] [-s] <basename> defaults [NN | sNN kNN]
> >         update-rc.d [-n] [-r <root>] [-s] <basename> start|stop NN runlvl [runlvl] [...] .
> >                  -n: not really
> >                  -f: force
> >                  -v: verbose
> >                  -r: alternate root path (default is /)
> >                  -s: invoke start methods if appropriate to current runlevel
> > 
> > Looks like update-rc.d is not being called properly.  This
> > was introduced by
> >    commit 427472e980cd6254a5e4ef37209b327e15af259b
> >    Author: Mark Hatle <mark.hatle@windriver.com>
> >    Date:   Thu Feb 3 19:29:50 2011 -0600
> > 
> > Mark, any comments?
> > 
> 
> The error is coming from the INITSCRIPT_NAME_${PN} change.  However, I don't
> know how to resolve it.  Where there was previously only one init script, there
> are now two.  So how do we inform bitbake that there are two initscripts to be
> processed?

customize update-rc.d class functionality in recipe

> 
> (If specifying more then one initscript is correct in the recipe, then the bug
> is in a class wherever update-rc.d is called.)
> 
> --Mark
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

