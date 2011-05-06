Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id AA0204C800AC
	for <poky@pokylinux.org>; Fri,  6 May 2011 01:28:59 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1QIEX2-0004cI-Qr
	for poky@pokylinux.org; Fri, 06 May 2011 08:28:56 +0200
Received: from 93.82.200.50 ([93.82.200.50])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Fri, 06 May 2011 08:28:56 +0200
Received: from gmane by 93.82.200.50 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Fri, 06 May 2011 08:28:56 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Fri, 06 May 2011 09:28:42 +0300
Organization: Reliable Embedded Systems
Message-ID: <iq04eq$4qb$1@dough.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: 93.82.200.50
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
Subject: Third party toolchain, kernel, bootloader
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: gmane@reliableembeddedsystems.com
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 06 May 2011 06:29:00 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

I'm working on a couple of projects trying to use yocto and it boils
down to the fact, that the packages and the package management (with a
few tweaks) are very valuable.

On the other hand "just to give it a try" it's a major effort to add
kernel and bootloader to poky and moreover the gcc which comes with poky
is not always what I need in terms of stability but also features (need
e.g. Cortex-A8 support). So I would also need to cook gcc to compile a
vendor provided kernel and bootloader.

What I'm after is to add some packages from poky to some 3rd party
rootfs. One major problem I have is the dependency on libc6 (>= 2.12)
Usually I have some older versions of libc6: e.g. libc-2.8.so.

For the projects I'm currently working on kernel and bootloader are
already compiling/running and tested and I would like to add packages
like qt-embedded to the various rootfs.

To achieve this I would need a mechanism to use a 3rd party toolchain
with poky (and maybe to skip the build steps for kernel and boot loader).

Is this something yocto/poky was made for, or am I totally off?
Am I the only one who has such kind of problems?
How are others tackling these kind of problems?

Please advise,

Regards,

Robert


..."Rules of Optimization: Rule1: Don't do it. Rule 2 (for experts
only): Don't do it yet." - M.A. Jackson (not the singer)

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



