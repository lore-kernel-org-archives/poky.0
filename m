Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE805E004CF
	for <poky@yoctoproject.org>; Tue, 27 Sep 2011 09:17:14 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p8RGNUcE027735; Tue, 27 Sep 2011 17:23:30 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id Vl0--Rvol8SD; Tue, 27 Sep 2011 17:23:30 +0100 (BST)
Received: from [192.168.1.40] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p8RGNOAV027708
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 27 Sep 2011 17:23:27 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
Date: Tue, 27 Sep 2011 17:17:00 +0100
In-Reply-To: <4E81DC24.8020307@mlbassoc.com>
References: <4E81DC24.8020307@mlbassoc.com>
X-Mailer: Evolution 3.1.91- 
Message-ID: <1317140228.26109.164.camel@ted>
Mime-Version: 1.0
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Sharing sstate
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
X-List-Received-Date: Tue, 27 Sep 2011 16:17:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-09-27 at 08:22 -0600, Gary Thomas wrote:
> I'd really like to be able to share sstate effectively.  One problem I have with
> it is the size - for a build of my system (something similar to core-image-sato
> on BeagleBoard), the sstate cache for a build-from-scratch is nearly 5GB!  Not
> exactly simple to share across sites.
> 
> It seems to me that maybe I don't need to share everything.  For example, the
> webkit-gtk package:
> 
> $ ls -l sstate-cache/*webkit-gtk*
> -rw-rw-r-- 1 gary gary 331221793 Sep 23 16:21 
> sstate-cache/sstate-webkit-gtk-armv7a-vfp-neon-amltd-linux-gnueabi-1.5.1+svnr90727-r0-armv7a-vfp-neon-2-4a04fc210c0a565767a2ad9bb11d8322_deploy-ipk.tgz
> -rw-rw-r-- 1 gary gary     12740 Sep 23 16:21 
> sstate-cache/sstate-webkit-gtk-armv7a-vfp-neon-amltd-linux-gnueabi-1.5.1+svnr90727-r0-armv7a-vfp-neon-2-4a04fc210c0a565767a2ad9bb11d8322_deploy-ipk.tgz.siginfo
> -rw-r--r-- 1 gary gary 326376172 Sep 23 16:15 
> sstate-cache/sstate-webkit-gtk-armv7a-vfp-neon-amltd-linux-gnueabi-1.5.1+svnr90727-r0-armv7a-vfp-neon-2-67b4ac238844551dd48eed3255ea33d0_populate-sysroot.tgz
> -rw-r--r-- 1 gary gary     21652 Sep 23 16:15 
> sstate-cache/sstate-webkit-gtk-armv7a-vfp-neon-amltd-linux-gnueabi-1.5.1+svnr90727-r0-armv7a-vfp-neon-2-67b4ac238844551dd48eed3255ea33d0_populate-sysroot.tgz.siginfo
> -rw-r--r-- 1 gary gary 665832323 Sep 23 16:19 
> sstate-cache/sstate-webkit-gtk-armv7a-vfp-neon-amltd-linux-gnueabi-1.5.1+svnr90727-r0-armv7a-vfp-neon-2-726c31c08826bf24e6db77fdf5f4408b_package.tgz
> -rw-r--r-- 1 gary gary     98746 Sep 23 16:19 
> sstate-cache/sstate-webkit-gtk-armv7a-vfp-neon-amltd-linux-gnueabi-1.5.1+svnr90727-r0-armv7a-vfp-neon-2-726c31c08826bf24e6db77fdf5f4408b_package.tgz.siginfo
> -rw-rw-r-- 1 gary gary      3117 Sep 23 15:38 
> sstate-cache/sstate-webkit-gtk-armv7a-vfp-neon-amltd-linux-gnueabi-1.5.1+svnr90727-r0-armv7a-vfp-neon-2-f9267d59a61b218bd6ab76ed55f12e8e_populate-lic.tgz
> -rw-rw-r-- 1 gary gary      8359 Sep 23 15:38 
> sstate-cache/sstate-webkit-gtk-armv7a-vfp-neon-amltd-linux-gnueabi-1.5.1+svnr90727-r0-armv7a-vfp-neon-2-f9267d59a61b218bd6ab76ed55f12e8e_populate-lic.tgz.siginfo
> 
> Would it be possible to only share part of this, maybe the "package" file?
> It seems to me that this could make the needed (shared) cache much smaller...

The build will only use the pieces it needs. If your build only needs
the deploy-ipk pieces and doesn't need to write new packages files it
can survive without the package part. If it doesn't need to compile
something against webkit, it won't use the populate-sysroot file.

So what I'm saying is you likely could get away with not sharing the
*_package files at least. The only downside is if you turn on rpm
packaging it would have to rebuild.

Cheers,

Richard




