Return-Path: <timcussins@eml.cc>
Received: from out5.smtp.messagingengine.com (out5.smtp.messagingengine.com
	[66.111.4.29])
	by mx1.pokylinux.org (Postfix) with ESMTP id 37CD04C800FB
	for <poky@pokylinux.org>; Wed, 18 May 2011 10:56:13 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@messagingengine.com;
	x-dkim-adsp=temperror (insecure policy)
Received: from compute3.internal (compute3.nyi.mail.srv.osa [10.202.2.43])
	by gateway1.messagingengine.com (Postfix) with ESMTP id EB41120670
	for <poky@pokylinux.org>; Wed, 18 May 2011 11:56:12 -0400 (EDT)
Received: from frontend1.messagingengine.com ([10.202.2.160])
	by compute3.internal (MEProxy); Wed, 18 May 2011 11:56:12 -0400
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=messagingengine.com;
	h=message-id:date:from:mime-version:to:subject:content-type:content-transfer-encoding;
	s=smtpout; bh=W1KGoD/KK0MSUa+hjA3idNJiZNg=;
	b=pkM5ODprJTVo9IOlYaAavKlufK22rqQW940GajTpj1nMwrpUd4jGrxwBhNOOTl+4kuG7V+v33E3ujxfKiKj2U9alKjs8vGrnIe7xIyOdgiF/78qBPbrcJtkcR85E0SMIrusS21WxAvuoO2r2sDU3wNfrkBSCnPXz58hN+5aJLKM=
X-Sasl-enc: qLWNFTHP1YFRfPXmsQurTng3O8UFsOhUpAJ0POZsyBOS 1305734172
Received: from [10.2.11.18] (mail.linn.co.uk [195.59.102.251])
	by mail.messagingengine.com (Postfix) with ESMTPSA id 96CB74016A8
	for <poky@pokylinux.org>; Wed, 18 May 2011 11:56:12 -0400 (EDT)
Message-ID: <4DD3EC1E.7090603@eml.cc>
Date: Wed, 18 May 2011 16:56:14 +0100
From: Tim Cussins <timcussins@eml.cc>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Thunderbird/3.1.10
MIME-Version: 1.0
To: poky@pokylinux.org
Subject: Problems creating a new BSP
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
X-List-Received-Date: Wed, 18 May 2011 15:56:14 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi all,

I've been having trouble getting my own kernel built and it's time to go 
to the list :)

The problem: As part of my bsp I want a kernel that's based on the yocto 
tree, but is built for my machine. Mu current setup fails to build it :(

(1) I've been following the steps outlined here:

   http://www.yoctoproject.org/docs/bsp-guide/bsp-guide.html

(2) I'm tracking the bernard branch of poky.

(3) My new meta directory (meta-tephra) is inside the top-level of my 
poky checkout. Here's what's in there (find):

./recipes-kernel
./recipes-kernel/linux
./recipes-kernel/linux/linux-yocto-stable_git.bbappend
./recipes-kernel/linux/linux-yocto-stable
./recipes-kernel/linux/linux-yocto-stable/defconfig
./conf
./conf/machine
./conf/machine/tephra.conf
./conf/layer.conf
./images
./images/poky-image-tephra-sdk.bb

(4) Contents of tephra.conf

TARGET_ARCH = "arm"
MACHINE_FEATURES = "kernel26"
IMAGE_FSTYPES ?= "tar.bz2 ext3"
ROOT_FLASH_SIZE = "280"
IMAGE_ROOTFS_SIZE_ext2 ?= "280000"
IMAGE_ROOTFS_SIZE_ext3 ?= "280000"
# Don't include kernels in standard images
RDEPENDS_kernel-base = ""
PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto-stable"
#PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
EXTRA_IMAGEDEPENDS += ""
MACHINE_ESSENTIAL_EXTRA_RDEPENDS = ""
require conf/machine/include/tune-arm1136jf-s.inc
KERNEL_IMAGETYPE = "uImage"
SERIAL_CONSOLE = "115200 ttyS0"

(5) Contents of linux-yocto-stable_git.bbappend

FILESEXTRAPATHS := "${THISDIR}/${PN}"
COMPATIBLE_MACHINE_tephra = "tephra"
KMACHINE_tephra = "arm_versatile_926ejs"
SRC_URI += "file://defconfig"

(6) Contents of defconfig

Same as mx3_defconfig (for freescale iMX 3)

(6b) for completeness here's layer.conf

# We have a conf directory, add to BBPATH
BBPATH := "${BBPATH}:${LAYERDIR}"

# We have a recipes directory containing .bb and .bbappend files, add to 
BBFILES
BBFILES := "${BBFILES} \
             ${LAYERDIR}/recipes*/*/*.bb \
             ${LAYERDIR}/recipes*/*/*.bbappend \
             ${LAYERDIR}/images/*.bb"

BBFILE_COLLECTIONS += "tephra"
BBFILE_PATTERN_tephra := "^${LAYERDIR}/"
BBFILE_PRIORITY_tephra = "5"

(7) Minor confusion - When I invoke

   bitbake virtual/kernel -DDDD -v

The process warns during the start of kernel_do_compile() (from 
kernel.bbclass) that

   "Warning: make dep is unnecessary now."

It's trying to build deps - fair enough, as the value of 
KERNEL_MAJOR_VERSION is 'None' because that information is taken from 
the kernel build output:

   oe_runmake include/linux/version.h CC="${KERNEL_CC}" LD="${KERNEL_LD}"

but this won't generate

   include/generated/utsrelease.h

which is where the kernel version now lives. Changing the line to 
generate this target ensures that utsrelease.h is built, but 
KERNEL_MAJOR_VERSION is still 'None'.

I'm pretty confused by this and need help :)

(8) Major problem - The copying of my defconfig into .config causes the 
kernel build to terminate with:

   linux is not clean, please run 'make mrproper'

Commenting out the defconfig reference in my bbappend:

   #SRC_URI += "file://defconfig"

allows the kernel build to complete, but obviously not with the 
configuration I was after :(

Any insight into what I'm doing wrong (either philosophically or 
technically) would be awesome.

Thanks in advance,

Tim

