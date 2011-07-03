Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 379D84C800A3
	for <poky@yoctoproject.org>; Sun,  3 Jul 2011 04:11:39 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p639BZQa004675;
	Sun, 3 Jul 2011 10:11:35 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 04638-01; Sun,  3 Jul 2011 10:11:31 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p639BQ3B004669
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 3 Jul 2011 10:11:27 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Holger Hans Peter Freyther <holger@freyther.de>
In-Reply-To: <4E10298C.8080507@freyther.de>
References: <4E10298C.8080507@freyther.de>
Date: Sun, 03 Jul 2011 10:11:00 +0100
Message-ID: <1309684260.20015.618.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: kernel upgrade breaks image creation
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
X-List-Received-Date: Sun, 03 Jul 2011 09:11:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2011-07-03 at 10:34 +0200, Holger Hans Peter Freyther wrote:
> Hi all,
> 
> I managed to get my build directory into an inconsistent state. There was a
> kernel update and now the image fails to be built. It tries to copy the
> System.map-... from the sysroot/${MACHINE}/kernel/... but it is empty:
> 
> | FATAL: Could not open
> '/poky/build/tmp/sysroots/sysmocom-foo/kernel/System.map-2.6.33-07172-g57e3d92':
> No such file or directory
> | FATAL: Could not open
> '/poky/build/tmp/sysroots/sysmocom-foo/kernel/System.map-2.6.33-07172-g57e3d92':
> No such file or directory
> | FATAL: Could not open
> '/poky/build/tmp/sysroots/sysmocom-foo/kernel/System.map-2.6.33-07172-g57e3d92':
> No such file or directory
> | FATAL: Could not open
> '/poky/build/tmp/sysroots/sysmocom-foo/kernel/System.map-2.6.33-07172-g57e3d92':
> No such file or directory
> 
> 
> I tried a bitbake -cclean virtual/kernel, also a cleanall, interestingly the
> sysmocom-ti/kernel directory is not removed or does not seem to be
> re-populated. Did anyone else ever see that behavior? There was one non
> standard thing in the kernel upgrade:
> 
> +PR... bumped
> -SRC_URI = "git://linux.git;protocol=ssh;branch=master"
> +SRC_URI = "git://linux.git;protocol=ssh;branch=master \
> +          file://defconfig-${MACHINE}"
>  S = "${WORKDIR}/git"
> 
>  do_configure() {
> -       oe_runmake foo_defconfig
> -       oe_runmake oldconfig
> +       install -m 0644 ${WORKDIR}/defconfig-${MACHINE} ${S}/.config
> +       #oe_runmake foo_defconfig
> +       #oe_runmake oldconfig
>  }
> 
> is there anything that makes click?

I'm reminded of this commit:

http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=2b8a68001ada2885f15ca68aa7c94cc92bb36973

Did you try a "bitbake -ccleansstate virtual/kernel"?

I'm wondering if stale sstate files for the kernel are affecting the
build somehow? Are you using a custom do_install/copy of kernel.bbclass
or anything like that?

Cheers,

Richard


