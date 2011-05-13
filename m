Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id 00FA84C804C5
	for <poky@pokylinux.org>; Fri, 13 May 2011 10:52:07 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1QKues-00061Z-T7
	for poky@pokylinux.org; Fri, 13 May 2011 17:52:06 +0200
Received: from ppp046176036182.dsl.hol.gr ([46.176.36.182])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Fri, 13 May 2011 17:52:06 +0200
Received: from gmane by ppp046176036182.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Fri, 13 May 2011 17:52:06 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Fri, 13 May 2011 18:51:50 +0300
Organization: Reliable Embedded Systems
Message-ID: <iqjk2n$otv$1@dough.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp046176036182.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
Subject: beagleboard and latest from git
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
X-List-Received-Date: Fri, 13 May 2011 15:52:08 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi,

I'm trying to get some poky version to boot on my beagle-xm and managed
with the distgcc tweak to compile it.

There seems to be something funny going on with u-boot. It looks like it
changes to baud rate or something like this, since I cannot see any
useful output:

Texas Instruments X-Loader 1.4.4ss (May 13 2011 - 08:39:41)
Beagle xM Rev A
Reading boot sector
Loading u-boot.bin from mmc
	O�HJ$�z�mq��H�JI�ka
... more stuff coming ...

I followed the instructions for the instructions in README.hardware to
create boot.scr

So I just used some older known working u-boot.bin and the kernel comes
up until:

regulator_init_complete: incomplete constraints, leaving VDAC on
twl_rtc twl_rtc: setting system clock to 2000-01-01 00:00:00 UTC (946684800)
Waiting for root device /dev/mmcblk0p2...
usb 1-2: new high speed USB device using ehci-omap and address 2
hub 1-2:1.0: USB hub found
hub 1-2:1.0: 5 ports detected
usb 1-2.1: new high speed USB device using ehci-omap and address 3
smsc95xx v1.0.4
smsc95xx 1-2.1:1.0: usb0: register 'smsc95xx' at usb-ehci-omap.0-2.1,
smsc95xx USB 2.0 Ethernet, ae:00:20:f9:52:ae
mmc0: error -110 whilst initialising SD card

... here it stucks ...

What is the "last known good" sato-sdk for the beagleboard?

Regards,

Robert..."If you want more effective programmers, you will discover that
they should not waste their time debugging - they should not introduce
the bugs to start with." - Dijkstra

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



