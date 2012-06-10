Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72BC9E00746
	for <poky@yoctoproject.org>; Sun, 10 Jun 2012 15:30:16 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id D3FF9F811EE; Sun, 10 Jun 2012 16:30:15 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id BC100F8119A;
	Sun, 10 Jun 2012 16:30:10 -0600 (MDT)
Message-ID: <4FD51FF2.80807@mlbassoc.com>
Date: Sun, 10 Jun 2012 16:30:10 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4FD1F20F.6060908@mlbassoc.com> <4FD1F411.60808@r-finger.com>
	<8481164.xLq9FblstP@helios>
In-Reply-To: <8481164.xLq9FblstP@helios>
Subject: Re: RaspberryPi with Poky
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
X-List-Received-Date: Sun, 10 Jun 2012 22:30:16 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-06-10 14:54, Paul Eggleton wrote:
> On Friday 08 June 2012 13:46:09 Tomas Frydrych wrote:
>> On 08/06/12 13:37, Gary Thomas wrote:
>>> First problem: 'core-image-sato-raspberrypi.rpi-sdimg' is broken (no file)
>>
>> I noticed this the the other day; on further investigation the sdimg
>> class in meta-raspberrypi is rather nasty, IIRC you need to set up some
>> stuff by hand on the build machine first and then run the build as root
>> as well. I am not sure there is any need for the sdimg either, you
>> should be able to use the tarball to extract the rootfs onto the SD card.
>
> Yes, I looked at this too. If nobody else gets to it first I might try to
> rework this in a manner similar to our current live images for x86 so that you
> don't have to have loopback devices pre-configured.

Turns out this is a dependency issue.  I added this patch to fix it:

diff --git a/recipes-bcm/kernel-image/bcm2835-kernel-image.bb b/recipes-bcm/kernel-image/bcm2835-kernel-image.bb
index ced20b0..0b1a159 100644
--- a/recipes-bcm/kernel-image/bcm2835-kernel-image.bb
+++ b/recipes-bcm/kernel-image/bcm2835-kernel-image.bb
@@ -5,7 +5,7 @@ LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3
  COMPATIBLE_MACHINE = "raspberrypi"
  PR = "${MACHINE_KERNEL_PR}.1"

-DEPENDS = "bcm2835-bootfiles bcm2835-mkimage-native"
+DEPENDS = "bcm2835-bootfiles bcm2835-mkimage-native virtual/kernel"

  S = "${WORKDIR}"


I also needed this patch to get a working system, otherwise it hangs up
trying to talk to ttyS0:

diff --git a/conf/machine/raspberrypi.conf b/conf/machine/raspberrypi.conf
index f3b33bb..86fd1b8 100755
--- a/conf/machine/raspberrypi.conf
+++ b/conf/machine/raspberrypi.conf
@@ -11,7 +11,7 @@ GUI_MACHINE_CLASS = "bigscreen"

  IMAGE_FSTYPES += "tar.bz2 rpi-sdimg"

-SERIAL_CONSOLE = "115200 ttyS0"
+SERIAL_CONSOLE = "115200 ttyAMA0"

  PREFERRED_PROVIDER_virtual/kernel = "linux-${MACHINE}"
  MACHINE_KERNEL_PR = "r4"

I'm planning on sending a push for these tomorrow (today I have other commitments) :-)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

