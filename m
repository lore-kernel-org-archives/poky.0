Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24EF6E0030C
	for <poky@pokylinux.org>; Mon, 16 Jan 2012 23:27:03 -0800 (PST)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1Rn3Ra-0002ul-TC
	for poky@pokylinux.org; Tue, 17 Jan 2012 08:26:58 +0100
Received: from host-82-135-33-74.customer.m-online.net ([82.135.33.74])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Tue, 17 Jan 2012 08:26:58 +0100
Received: from gmane by host-82-135-33-74.customer.m-online.net with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Tue, 17 Jan 2012 08:26:58 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Tue, 17 Jan 2012 07:26:44 +0000 (UTC)
Message-ID: <loom.20120117T081408-739@post.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 82.135.33.74 (Mozilla/5.0 (X11;
	Linux x86_64) AppleWebKit/535.2 (KHTML, like Gecko) Ubuntu/10.04
	Chromium/15.0.874.106 Chrome/15.0.874.106 Safari/535.2)
Subject: Beagleboard-xm rev C and u-boot
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
X-List-Received-Date: Tue, 17 Jan 2012 07:27:05 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Hi,

Sorry for cross-posting something similar also on the beagleboard mailing list, 
but I think that some people here might be able to help.

I'm using a beagle-xm Rev C and trying to find a "proper" u-boot version, which 
is at least able to load a kernel and ideally also has network support from u-
boot.

So I saw this:

http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-bsp/u-boot/u-
boot_2011.06.bb

which gets u-boot from mainline with tag v2011.06

I compiled this and it did not work;)

So I saw this innocent comment in 
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-bsp/u-boot/u-
boot.inc

# GCC 4.5.1 builds unusable binaries using -Os, remove it from 
OPTFLAGS 
EXTRA_OEMAKE = "CROSS_COMPILE=${TARGET_PREFIX} OPTFLAGS='-O2'" 

Which means yocto builds u-boot v2011.06 replacing -Os with -O2 and indeed this 
did the trick. 

Up to now I thought that the problem with -Os and -O2 existed only with PPC, but 
my experiments show that it also exists with ARM.

Trying any new version than v2011.06 creates some linker error at the end.

Did someone manage to get a newer version of u-boot to run on a beagle-xm Rev C?

How and with which toolchain?

Regards,

Robert




