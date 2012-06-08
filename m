Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2927E00723
	for <poky@yoctoproject.org>; Fri,  8 Jun 2012 05:37:37 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id C1F55F81200; Fri,  8 Jun 2012 06:37:36 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 8D83AF811DC;
	Fri,  8 Jun 2012 06:37:35 -0600 (MDT)
Message-ID: <4FD1F20F.6060908@mlbassoc.com>
Date: Fri, 08 Jun 2012 06:37:35 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Cc: John Willis <John.Willis@distant-earth.com>
Subject: RaspberryPi with Poky
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
X-List-Received-Date: Fri, 08 Jun 2012 12:37:37 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I've tried to build a simple Poky image for the RaspberryPi but
it seems some bits are missing.  Here's what I have in my deploy/images

[gthomas@europa rpi_poky]$ ls -l tmp/deploy/images/
total 113300
drwxr-xr-x 2 gthomas gthomas     4096 May 21 14:35 bcm2835-bootfiles
-rw-r--r-- 1 gthomas gthomas 46157543 May 21 16:36 core-image-sato-raspberrypi-20120521220319.rootfs.tar.bz2
lrwxrwxrwx 1 gthomas gthomas       59 May 21 16:37 core-image-sato-raspberrypi.rpi-sdimg -> core-image-sato-raspberrypi-20120521220319.rootfs.rpi-sdimg
lrwxrwxrwx 1 gthomas gthomas       57 May 21 16:37 core-image-sato-raspberrypi.tar.bz2 -> core-image-sato-raspberrypi-20120521220319.rootfs.tar.bz2
-rw-rw-r-- 1 gthomas gthomas 67036854 May 21 16:19 modules-3.1.9-r1-raspberrypi.tgz
-rw-rw-r-- 1 gthomas gthomas      294 May 21 16:25 README_-_DO_NOT_DELETE_FILES_IN_THIS_DIRECTORY.txt
lrwxrwxrwx 1 gthomas gthomas       97 May 21 16:19 zImage -> zImage-3.1.9-rpi+r1+git0ec4154d64ebba48ca2446cde60a90546311defc-r1-raspberrypi-20120521220319.bin
-rw-r--r-- 1 gthomas gthomas  2802952 May 21 16:18 zImage-3.1.9-rpi+r1+git0ec4154d64ebba48ca2446cde60a90546311defc-r1-raspberrypi-20120521220319.bin
lrwxrwxrwx 1 gthomas gthomas       97 May 21 16:19 zImage-raspberrypi.bin -> zImage-3.1.9-rpi+r1+git0ec4154d64ebba48ca2446cde60a90546311defc-r1-raspberrypi-20120521220319.bin
[gthomas@europa rpi_poky]$ ls -l tmp/deploy/images/bcm2835-bootfiles/
total 8328
-rwxrwxr-x 1 gthomas gthomas 2036936 May 21 14:29 arm128_start.elf
-rwxrwxr-x 1 gthomas gthomas 2036936 May 21 14:29 arm192_start.elf
-rwxrwxr-x 1 gthomas gthomas 2036936 May 21 14:29 arm224_start.elf
-rwxrwxr-x 1 gthomas gthomas   16528 May 21 14:29 bootcode.bin
-rw-rw-r-- 1 gthomas gthomas   32768 May 21 14:35 kernel.img
-rwxrwxr-x 1 gthomas gthomas  314691 May 21 14:29 loader.bin
-rwxrwxr-x 1 gthomas gthomas 2036936 May 21 14:29 start.elf

First problem: 'core-image-sato-raspberrypi.rpi-sdimg' is broken (no file)
Second problem: the boot file 'kernel.img' only has the header/wrapper, no
actual kernel code.

Has anyone succeeded in building a bootable image using Poky?

Note: I built this some days ago when the discussions on this list
were hot, but I only received my board yesterday :-)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

