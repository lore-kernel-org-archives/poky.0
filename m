Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 10BFE4C806DA
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 11:11:34 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2GG8OQN004995;
	Wed, 16 Mar 2011 16:08:24 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 04840-03; Wed, 16 Mar 2011 16:08:20 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2GG8JHh004989
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 16 Mar 2011 16:08:19 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gerard van den Bosch <gerard@de-haardt.com>
In-Reply-To: <4D7F7FB4.30007@de-haardt.com>
References: <4D7F4630.3030705@de-haardt.com>
	<1300196286.30423.1726.camel@rex>  <4D7F7FB4.30007@de-haardt.com>
Date: Wed, 16 Mar 2011 16:08:08 +0000
Message-ID: <1300291688.30423.1890.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: compile application header file missing
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
X-List-Received-Date: Wed, 16 Mar 2011 16:11:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-03-15 at 16:03 +0100, Gerard van den Bosch wrote:
> I am indeed using the Green release.
> 
> The TARGET_CFLAGS are indeed the same as the CFLAGS. The system is
> using the default CC and not the BUILD_CC, thanks for pointing out the
> difference.
> 
> I have added the --sysroot option pointing to the arm sysroot to the
> CFLAGS in my recipe, with compilation it now looks like this:
> arm-poky-linux-gnueabi-gcc -march=armv7-a -mtune=cortex-a8 -mfpu=neon
> -mfloat-abi=softfp -fno-tree-vectorize -fexpensive-optimizations
> -fomit-frame-pointer -frename-registers -O2 -ggdb
> -feliminate-unused-debug-types
> --sysroot=/home/gerard/green-3.3/build/tmp/sysroots/armv7a-poky-linux-gnueabi/ libxmlpcp.c -o libxmlpcp.o
> 
> This removes the missing SLP.h error.
> 
> Is this problem related to my recipe or did I broke my build
> environment?

To be honest, I don't know. The compiler should have been defaulting to
that already so I don't understand why it wasn't working. We now
explictly set this in master to allow for toolchain relocation and the
machine specific sysroots support. You could try backporting the piece
of code I previously referred to which should also fix the problem.

If that option were missing from the toolchain I'd have expected you to
see other errors rather than just this isolated problem...

> My recipe looks like this:
> DESCRIPTION = "libxmlpcp"
> SECTION = "examples"
> DEPENDS = "openslp libxml2"
> LICENSE = "LGPL"
> 
> SRC_URI = "file://libxmlpcp.tar.gz"
> 
> CFLAGS += --sysroot=/home/gerard/green-3.3/build/tmp/sysroots/armv7a-poky-linux-gnueabi/
> 
> do_install() {
>      install -d ${D}${libdir}
>      install -d ${D}${includedir}
>      oe_runmake 'INSTALLHEADERDIR=${D}${includedir}' 'INSTALLLIBDIR=${D}${libdir}' \
>      install
> }

That all looks reasonable enough...

Cheers,

Richard


