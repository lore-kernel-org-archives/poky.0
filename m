Return-Path: <fdupoux@free.fr>
Received: from smtp6-g21.free.fr (smtp6-g21.free.fr [212.27.42.6])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4034E00307
	for <poky@yoctoproject.org>; Wed, 16 Nov 2011 14:30:12 -0800 (PST)
Received: from zimbra33-e6.priv.proxad.net (unknown [172.20.243.183])
	by smtp6-g21.free.fr (Postfix) with ESMTP id B5B7D8236C;
	Wed, 16 Nov 2011 23:30:04 +0100 (CET)
Date: Wed, 16 Nov 2011 23:30:03 +0100 (CET)
From: Francois Dupoux <fdupoux@free.fr>
To: Mark Hatle <mark.hatle@windriver.com>
Message-ID: <84d15db6-6902-4118-b60a-2a7bb6fc6235@zimbra33-e6.priv.proxad.net>
In-Reply-To: <4EC42C07.7010409@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [46.33.16.32]
X-Mailer: Zimbra 7.1.4-GA3333 (ZimbraWebClient - GC15 (Linux)/7.1.4-GA3333)
X-Authenticated-User: fdupoux@free.fr
Cc: poky@yoctoproject.org
Subject: Re: Qt should be linked to openssl at compilation
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
X-List-Received-Date: Wed, 16 Nov 2011 22:30:16 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

----- Original Message -----
From: "Mark Hatle" <mark.hatle@windriver.com>
To: "Francois Dupoux" <fdupoux@free.fr>
Cc: poky@yoctoproject.org
Sent: Wednesday, 16 November, 2011 9:32:55 PM
Subject: Re: [poky] Qt should be linked to openssl at compilation

> What is your base configuration, i.e. machine type (or architecture) .. and 
> which image type are you building for?
> I'd like to try to reproduce this linking to openssl, but not getting referenced 
> in the dependency set.

Hi Mark,

I have created a custom machine which is similar to "qemuarm", and also 
a custom image which includes the packages I need. 

Here is my configuration:

==> poky-edison/build/conf/local.conf
BB_NUMBER_THREADS = "4"
PARALLEL_MAKE = "-j 4"
MACHINE = "mymachine"
PACKAGE_CLASSES ?= "package_rpm"
DISTRO = "poky"
EXTRA_IMAGE_FEATURES = "debug-tweaks"
USER_CLASSES ?= "image-mklibs image-prelink"

In another bblayer I have created a configuration file for mymachine:

==> meta-mine/conf/machine/mymachine.conf
require conf/machine/qemuarm.conf
IMAGE_FSTYPES = "squashfs"
KERNEL_IMAGETYPE = "uImage"
PREFERRED_PROVIDER_linux-libc-headers = "linux-libc-headers"
PREFERRED_VERSION_linux-libc-headers = "2.6.32"
PREFERRED_PROVIDER_virtual/kernel = "linux-mine"

I have also created a custom recipe for the image:

==> meta-mine/recipes-core/images/my-image.bb
inherit core-image
IMAGE_INSTALL = "\
        task-core-boot busybox conffiles \
        module-init-tools module-init-tools-depmod \
        tslib tslib-calibrate tslib-tests \
        qt4-embedded-fonts-ttf-dejavu \
        qt4-embedded-fonts-ttf-vera \
        qt4-embedded-plugin-iconengine-svgicon \
        qt4-embedded-plugin-imageformat-gif \
        qt4-embedded-plugin-imageformat-ico \
        qt4-embedded-plugin-imageformat-jpeg \
        qt4-embedded-plugin-imageformat-mng \
        qt4-embedded-plugin-imageformat-svg \
        qt4-embedded-plugin-imageformat-tiff \
        my-qt-application \
"

The recipe for out Qt application inherits qt4e and contains no particular DEPENDS/RDEPENDS.

Also I have imported recipes-qt/qt4 from poky-trunk in my custom bblayer to be able to get 
qt-4.7.4 with the stable poky-6.0 release but I don't think it should make any difference

The build machine is running CentOS-6.0 x86_64

Thanks
Francois

