Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6051D4C8010A
	for <poky@pokylinux.org>; Sat, 14 May 2011 10:07:57 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1QLGRf-0004md-9b
	for poky@pokylinux.org; Sat, 14 May 2011 17:07:55 +0200
Received: from ppp079166139070.dsl.hol.gr ([79.166.139.70])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Sat, 14 May 2011 17:07:55 +0200
Received: from gmane by ppp079166139070.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Sat, 14 May 2011 17:07:55 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Sat, 14 May 2011 18:07:41 +0300
Organization: Reliable Embedded Systems
Message-ID: <iqm5ru$j5a$1@dough.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp079166139070.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
Subject: beagleboard auto-boot
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
X-List-Received-Date: Sat, 14 May 2011 15:07:57 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

I was playing around a bit in order to autoboot Linux from u-boot.

What I came up with is this:

uEnv.txt:
uenvcmd=mmc rescan ${mmcdev}; fatload mmc ${mmcdev} ${loadaddr}
boot.scr; source ${loadaddr}

u-boot-env:

sete console "ttyO2,115200n8"
run mmc rescan ${mmcdev}
run loaduimage
run mmcboot

which I compile to a boot.scr

mkimage -A arm -O linux -T script -C none -a 0 -e 0 -n "Beagleboard-xM
boot script" -d u-boot-env boot.scr

Like this I am also backwards compatible with older versions of u-boot
which don't support uEnv.txt.

Does anyone have a more elegant way?

How does your uEnv.txt look like for a Beagle-XM?

Regards,

Robert
..."You are in a twisty little passage of standards, all conflicting." -
Michael Meissner, meissner@osf.org

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



