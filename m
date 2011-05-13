Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6D6E04C81201
	for <poky@pokylinux.org>; Fri, 13 May 2011 14:27:11 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1QKy0y-0000Oz-Rt
	for poky@pokylinux.org; Fri, 13 May 2011 21:27:08 +0200
Received: from ppp046176036182.dsl.hol.gr ([46.176.36.182])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Fri, 13 May 2011 21:27:08 +0200
Received: from gmane by ppp046176036182.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Fri, 13 May 2011 21:27:08 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Fri, 13 May 2011 22:26:54 +0300
Organization: Reliable Embedded Systems
Message-ID: <iqk0lv$264$1@dough.gmane.org>
References: <iqjk2n$otv$1@dough.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp046176036182.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
In-Reply-To: <iqjk2n$otv$1@dough.gmane.org>
Subject: Re: beagleboard and latest from git
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
X-List-Received-Date: Fri, 13 May 2011 19:27:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

I switched a bit around between various versions in the meantime and
that's what I figured out:

1) the latest u-boot (or some configuration of it) from git does not
seem to work for the beagleboard

2) if I use U-Boot 2011.03-00038-g8d4addc-dirty (May 13 2011 - 00:01:02)
which comes with bernard-5.0.1 things look much better.

U-Boot 2010.12-00038-g8d4addc-dirty (May 13 2011 - 08:44:08) is the
suspect. Why does the latest and greatest from git use an older u-boot
version than bernard 5.0.1?

I interrupt the u-boot autoboot and do the following:

OMAP3 beagleboard.org # sete console "ttyO2,115200n8"
OMAP3 beagleboard.org # mmc rescan ${mmcdev}
OMAP3 beagleboard.org # run loaduimage
reading uImage

2632316 bytes read
OMAP3 beagleboard.org # run mmcboot

and voila:

Yocto (Built by Poky 5.0) 1.0+snapshot-20110512 beagleboard ttyO2

beagleboard login: root
root@beagleboard:~#

This time even with networking.

This means that the latest and greatest rootfs seems OK.

Regards,

Robert


..."It is NOT portable (uses 386 task switching etc), and it probably
never will support anything other than AT-harddisks, as that's all I
have :-(." - Linus Benedict Torvalds(torvalds@klaava.Helsinki.FI),
1991-08-25 23:12:08 PST -

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



