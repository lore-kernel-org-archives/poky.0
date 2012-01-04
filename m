Return-Path: <raj.khem@gmail.com>
Received: from mail-tul01m020-f176.google.com (mail-tul01m020-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE445E0070D
	for <poky@yoctoproject.org>; Tue,  3 Jan 2012 22:12:17 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by obcwn14 with SMTP id wn14so18778411obc.35
	for <poky@yoctoproject.org>; Tue, 03 Jan 2012 22:12:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=wn0CZaAUmMYAkLhypQLJhziFmPuv++9cyqB/3y/4y/c=;
	b=kU0rUo+H8MuMoxp1g/mzCpumoKMAqSTaSkw6x2Q7TpiM1byE6LwVTZ5yVp9X5oe9h/
	3pzw6wgXZRTyTO9O1Qm6B3aJ0hpua/IHyInW1taMprIUub2OFUboTM7iiUxawdMeju59
	H0PzZ/vXfWZfaVx+l8bOITmzQDkMX59XZ0RW4=
Received: by 10.50.195.164 with SMTP id if4mr65656681igc.11.1325657537010;
	Tue, 03 Jan 2012 22:12:17 -0800 (PST)
Received: from sakrah.homelinux.org
	(99-57-141-118.lightspeed.sntcca.sbcglobal.net. [99.57.141.118])
	by mx.google.com with ESMTPS id py9sm93625861igc.2.2012.01.03.22.12.14
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 03 Jan 2012 22:12:15 -0800 (PST)
Date: Tue, 3 Jan 2012 22:12:38 -0800
From: Khem Raj <raj.khem@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20120104061238.GM31275@sakrah.homelinux.org>
Mail-Followup-To: Gary Thomas <gary@mlbassoc.com>, poky@yoctoproject.org
References: <4F035C93.2020602@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <4F035C93.2020602@mlbassoc.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: poky@yoctoproject.org
Subject: Re: Can't build webkit-gtk
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
X-List-Received-Date: Wed, 04 Jan 2012 06:12:18 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On (03/01/12 12:52), Gary Thomas wrote:
> Using today's master:
> OE Build Configuration:
> BB_VERSION        = "1.15.0"
> TARGET_ARCH       = "arm"
> TARGET_OS         = "linux-gnueabi"
> MACHINE           = "beagleboard"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.1+snapshot-20120103"
> TUNE_FEATURES     = "armv7a vfp neon cortexa8"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto        = "master:f3a1a8897c78e116d7d28947a85687d0ce9d7df7"
> 
> Build of webkit-gtk fails:
> 
> Logfile attached.
> 
> checking for glib-compile-schemas... /home/local/bb_test2/tmp/sysroots/i686-linux/usr/bin/glib-compile-schemas
> checking which Unicode backend to use... icu
> checking for icu-config... /home/local/bb_test2/tmp/sysroots/beagleboard/usr/bin/crossscripts/icu-config
> checking for ZLIB... yes
> checking for LIBXML... yes
> checking for PANGO... yes
> checking whether to enable spellcheck support... yes
> checking for ENCHANT... yes
> checking for GAIL... yes
> checking for CAIRO... yes
> checking for GTK... yes
> checking for XT... yes
> checking whether to do a debug build... no
> checking whether to enable optimized builds... yes
> checking whether to enable support for 3D Rendering... no
> checking whether to enable WebGL support... yes
> checking GL/gl.h usability... no
> checking GL/gl.h presence... no
> checking for GL/gl.h... no
> configure: error: OpenGL header not found
> ERROR: oe_runconf failed

may be add "virtual/libgl" to DEPENDS ?

