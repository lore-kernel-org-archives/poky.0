Return-Path: <raj.khem@gmail.com>
Received: from mail-iy0-f172.google.com (mail-iy0-f172.google.com
	[209.85.210.172])
	by mx1.pokylinux.org (Postfix) with ESMTP id 472054C8009A
	for <poky@lists.pokylinux.org>; Fri, 11 Mar 2011 02:25:39 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyj8 with SMTP id 8so2302210iyj.3
	for <poky@lists.pokylinux.org>; Fri, 11 Mar 2011 00:25:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=cGO80oFoSlA2iK8VAqwNdAURk1yV1fbkw69DO9Cenhc=;
	b=PLy2EbUPmj4YvU8ubHn7oaJBml/aiOWAyOjC3nstsNsUPzABuVgoG/8GtzCn0e9O1q
	ZOASTONoaNc2suuyVsAY7zMjLmwJR4HDY8Nnm6QZLSaV0MQ+dkqJ4VOPX08N4MQy52Ju
	Qe+4h5mRm1z+giWKdigkFWJ810omdPGCriMBA=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	b=TlgJd2pvoJ7mPb2758Yoo0jQwyJNCnzlqmyEIQMyR6MtVt9UEEuSmzp8yGBa6+sx90
	HENSn3WiD+hAuedEePYCF2yjzOx2qnQqNu6KUz+JS/SffiT/hdqQGXbA67cbP4jsgDwV
	pJ+iLm7qyZrD7FgiMPIyby+5xA+0k/slwmikk=
Received: by 10.42.247.202 with SMTP id md10mr609773icb.342.1299831693221;
	Fri, 11 Mar 2011 00:21:33 -0800 (PST)
Received: from sakrah.homelinux.org
	(99-57-141-118.lightspeed.sntcca.sbcglobal.net [99.57.141.118])
	by mx.google.com with ESMTPS id u9sm3266755ibe.14.2011.03.11.00.21.31
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 11 Mar 2011 00:21:32 -0800 (PST)
Date: Fri, 11 Mar 2011 00:21:55 -0800
From: Khem Raj <raj.khem@gmail.com>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
Message-ID: <20110311082155.GE2478@sakrah.homelinux.org>
References: <4D7996EE.80005@mlbassoc.com>
	<625BA99ED14B2D499DC4E29D8138F1505770D748C8@shsmsx502.ccr.corp.intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A335C9B62@shsmsx501.ccr.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A335C9B62@shsmsx501.ccr.corp.intel.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Problems adding native support packages
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
X-List-Received-Date: Fri, 11 Mar 2011 08:25:39 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On (11/03/11 13:09), Xu, Dongxiao wrote:
> Tian, Kevin wrote:
> >> From: Gary Thomas
> >> Sent: Friday, March 11, 2011 11:29 AM
> >> 
> >> I'm trying to import a native package from OE for which the main
> >> package depends on libiconv.  This seems to imply that when I extend
> >> to the native package using BBCLASSEXTEND, the native package depends
> >> on virtual/libiconv-native
> >> 
> >> I can't figure out how to provide this.  Any clues?
> > 
> > I'm not sure about the problem here. do you want
> > virtual/libiconv-native dependency or not? If target recipe already
> > has a DEPENDS = "libiconv", then with BBCLASSEXTEND you have
> > libiconv-native automatically.   
> > 
> > Or if you only want to add libiconv-native for native recipe
> > exclusively, then: 
> > 
> > DEPENDS_virtclass-native = "virtual/libiconv-native"
> > 
> > Thanks
> > Kevin
> > 
> >> 
> >> n.b. the recipe from OE is librsvg and importing it seems to be
> >> pretty invasive.  To build the native package, I needed to add
> >> native support for all of these packages: 
> >> 
> >> #       modified:   meta/recipes-gnome/gnome/libart-lgpl_2.3.21.bb
> >> #       modified:   meta/recipes-gnome/gtk+/gtk+.inc
> >> #       modified:   meta/recipes-graphics/cairo/cairo.inc
> >> #       modified:   meta/recipes-graphics/pango/pango.inc
> >> #       modified:  
> >> meta/recipes-graphics/xorg-lib/libxcomposite_0.4.3.bb #      
> >> modified:   meta/recipes-graphics/xorg-lib/libxcursor_1.1.11.bb #   
> >> modified:   meta/recipes-graphics/xorg-lib/libxdamage_1.1.3.bb #    
> >> modified:   meta/recipes-graphics/xorg-lib/libxfixes_4.0.5.bb #     
> >> modified:   meta/recipes-graphics/xorg-lib/libxft_2.2.0.bb #      
> >> modified:   meta/recipes-graphics/xorg-lib/libxrandr_1.3.1.bb #     
> >> modified:   meta/recipes-graphics/xorg-lib/libxrender_0.9.6.bb #    
> >> modified:   meta/recipes-graphics/xorg-lib/pixman_0.20.2.bb #      
> >> modified: meta/recipes-graphics/xorg-proto/compositeproto_0.4.2.bb #
> >> modified: meta/recipes-graphics/xorg-proto/damageproto_1.2.1.bb #   
> >> modified:   meta/recipes-graphics/xorg-proto/fixesproto_4.1.2.bb #  
> >> modified:   meta/recipes-graphics/xorg-proto/randrproto_1.3.2.bb #  
> >> modified: meta/recipes-graphics/xorg-proto/renderproto_0.11.1.bb #  
> >> modified: meta/recipes-graphics/xorg-proto/xineramaproto_1.2.1.bb # 
> >> modified:   meta/recipes-multimedia/alsa/alsa-tools_1.0.20.bb #     
> >> modified:   meta/recipes-support/atk/atk.inc #       modified:  
> >> meta/recipes-support/libcroco/libcroco_0.6.2.bb #       modified:  
> >> meta/recipes-support/libgcrypt/libgcrypt.inc #       modified:  
> >> meta/recipes-support/libgpg-error/libgpg-error_1.9.bb 
> >> 
> >> I also ran into a problem when I added native to atk, I get this
> >> error which makes no sense at all to me:
> >>    NOTE: package atk-native-1.32.0-r0: task do_fetch: Started
> >>    ERROR: Function 'Fetcher failure for URL:
> >> 'http://download.gnome.org/sources/atk/1.32/atk-native-1.32.0.tar.bz2'.
> >> Unable to fetch URL
> >> http://download.gnome.org/sources/atk/1.32/atk-native-1.32.0.tar.bz2
> >> from any source.' failed This seems to be the only package in the
> >> set above that wants to fetch a -native tarball (there are no such
> >> files  
> >> in the sources repository as far as I can tell)
> 
> atk's SRC_URI is assigned like:
> 
> SRC_URI = "http://download.gnome.org/sources/atk/1.32/${PN}-${PV}.tar.bz2"
> 
> After introducing native to atk, PN is changed to atk-native, thus no resouce is found in the repo.
> 
> I will make a fix to that. But for your quick workaournd, you can change the atk's SRC_URI to:
> 
> SRC_URI = "http://download.gnome.org/sources/atk/1.32/atk-${PV}.tar.bz2"

Use BPN instead

