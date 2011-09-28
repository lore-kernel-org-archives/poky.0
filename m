Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15890E004CF
	for <poky@pokylinux.org>; Wed, 28 Sep 2011 12:15:21 -0700 (PDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1R8zbA-0007KH-U7
	for poky@pokylinux.org; Wed, 28 Sep 2011 21:15:16 +0200
Received: from ppp089210160092.dsl.hol.gr ([89.210.160.92])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Wed, 28 Sep 2011 21:15:16 +0200
Received: from gmane by ppp089210160092.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Wed, 28 Sep 2011 21:15:16 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Wed, 28 Sep 2011 22:14:59 +0300
Organization: Reliable Embedded Systems
Message-ID: <j5vrnk$mgu$1@dough.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp089210160092.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.20) Gecko/20110805 Thunderbird/3.1.12
Subject: networking support in u-boot for beagle-xm rev c
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
X-List-Received-Date: Wed, 28 Sep 2011 19:15:22 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

I just built with a pretty recent version (commit
e3c5d7a90ae179af0ac128ea4dfc1a5a6602c2e4) of
core-image-sato-sdk-beagleboard and I'm running it on my beagle-xm rev c.

At the moment it does not seem to do much about networking from u-boot:

Texas Instruments X-Loader 1.5.0 (Sep 28 2011 - 02:50:26)
Beagle xM
Reading boot sector
Loading u-boot.bin from mmc


U-Boot 2011.06 (Sep 28 2011 - 02:54:31)

OMAP3630/3730-GP ES2.1, CPU-OPP2, L3-165MHz, Max CPU Clock 1 Ghz
OMAP3 Beagle board + LPDDR/NAND
I2C:   ready
DRAM:  512 MiB
NAND:  0 MiB
MMC:   OMAP SD/MMC: 0
*** Warning - readenv() failed, using default environment

In:    serial
Out:   serial
Err:   serial
Beagle unknown 0x02
No EEPROM on expansion board
Die ID #1c0400229ff800000163810c0f033025
Hit any key to stop autoboot:  0
OMAP3 beagleboard.org # sete ipaddr 192.168.5.3; sete serverip
192.168.5.5; sete netmask 255.255.255.0; usb start
(Re)start USB...
USB:

--- and here we get stuck ---

If I remember well Koen has some u-boot under his git repo, which also
contains networking support from within u-boot.

Are there any plan to include something like this with the official release?

Regards,

Robert..."Developing software is difficult. It is difficult primarily
because the "ether" of software - the material of it's existance - is
complexity itself."

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



