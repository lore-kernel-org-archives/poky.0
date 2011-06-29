Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 57C444C800BB
	for <poky@yoctoproject.org>; Wed, 29 Jun 2011 04:02:05 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p5T9227A002092;
	Wed, 29 Jun 2011 10:02:02 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 01800-05; Wed, 29 Jun 2011 10:01:58 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p5T91s3v002086
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 29 Jun 2011 10:01:57 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Akshat Saha <akshat.embedded@gmail.com>
In-Reply-To: <BANLkTi=0LjMdJAKGHPJGGhQiCdZnFtgD=Q@mail.gmail.com>
References: <BANLkTi=0LjMdJAKGHPJGGhQiCdZnFtgD=Q@mail.gmail.com>
Date: Wed, 29 Jun 2011 10:01:38 +0100
Message-ID: <1309338098.20015.327.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: Problem getting PulseAudio Server Binaries
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
X-List-Received-Date: Wed, 29 Jun 2011 09:02:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-06-29 at 14:25 +0530, Akshat Saha wrote:
> Hi All,
> 
> I am trying to pull PulseAudio.
> But am able to get conf(/usr/share/pulseaudio) files only in my RFS.
> In the pulseaudio.inc file, it can be observed below that there are
> some function and parametres specific to pulseaudio-server package .
> Can anyone guide me on how to get other pulseaudio binaries and
> configs into my build.
> 
> I am using Ubuntu 10.10, 64-bit Host machine.
> Building for MACHINE?="fishriver"
> 
> Command used to build:
> $ bitbake poky-image-minimal-xyz-live
> 
> Contents of the poky-image-minimal-xyz.bb :
> require recipes-core/images/poky-image-minimal.bb
> IMAGE_INSTALL += "pulseaudio" 
> LICENSE = "MIT"

You're close here. If you look through this list:

> PACKAGES =+ "libpulsecore libpulsecommon libpulsedsp libpulse
> libpulse-simple libpulse-browse libpulse-mainloop-glib \
>              pulseaudio-server pulseaudio-misc
> pulseaudio-gconf-helper"

you can then change IMAGE_INSTALL to include the pieces you want, e.g:

IMAGE_INSTALL += "pulseaudio-server" 

Cheers,

Richard


