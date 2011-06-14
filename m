Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9A89E4C80120
	for <poky@pokylinux.org>; Tue, 14 Jun 2011 16:13:34 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1QWavU-0003B3-Hq
	for poky@pokylinux.org; Tue, 14 Jun 2011 23:13:32 +0200
Received: from ppp089210018011.dsl.hol.gr ([89.210.18.11])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Tue, 14 Jun 2011 23:13:32 +0200
Received: from gmane by ppp089210018011.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Tue, 14 Jun 2011 23:13:32 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Wed, 15 Jun 2011 00:13:18 +0300
Organization: Reliable Embedded Systems
Message-ID: <it8ite$i96$1@dough.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp089210018011.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
Subject: bernard 5.0.1 and beagle-xm rev c
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
X-List-Received-Date: Tue, 14 Jun 2011 21:13:34 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

I just got a few new beagle-xm boards (REV C) and I'm having fun with them;)

I created a poky-image-minimal from the bernard-5.0.1 tag and test the
micro SD card with one of my old beagle-xm (REV A3) and one of the new
ones (REV C).

The network is working with REV A3, but not with REV C.

That's what I added to /etc/network/interfaces:

# Ethernet/RNDIS gadget (g_ether) or LAN9514 on BeagleBoard xM
auto usb0
iface usb0 inet dhcp

Am I missing something?

REV C:  http://pastebin.com/cXaTnLCY
REV A3: http://pastebin.com/VFJ9w2VW

Regards,

Robert..."C++ has its place in the history of programming languages.
Just as Caligula has his place in the history of the Roman Empire." -
Robert Firth

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



