Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id E98744C804C2
	for <poky@pokylinux.org>; Sun, 15 May 2011 03:58:44 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1QLX9u-0007H0-Ls
	for poky@pokylinux.org; Sun, 15 May 2011 10:58:42 +0200
Received: from ppp079166102199.dsl.hol.gr ([79.166.102.199])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Sun, 15 May 2011 10:58:42 +0200
Received: from gmane by ppp079166102199.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Sun, 15 May 2011 10:58:42 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Sun, 15 May 2011 11:58:29 +0300
Organization: Reliable Embedded Systems
Message-ID: <iqo4jm$4mj$1@dough.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp079166102199.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
Subject: beagle-xm more testing
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
X-List-Received-Date: Sun, 15 May 2011 08:58:46 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

with the remotes/origin/bernard-5.0.1 branch and this tweak:

diff --git a/meta/recipes-bsp/uboot/u-boot_git.bb
b/meta/recipes-bsp/uboot/u-boot_git.bb
index 4686a58..23212aa 100644
--- a/meta/recipes-bsp/uboot/u-boot_git.bb
+++ b/meta/recipes-bsp/uboot/u-boot_git.bb
@@ -2,7 +2,7 @@ require u-boot.inc

 LICENSE = "GPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=1707d6db1d42237583f50183a5651ecb \
-
file://README;beginline=1;endline=22;md5=3a00ef51d3fc96e9d6c1bc4708ccd3b5"
+
file://README;beginline=1;endline=22;md5=5ba4218ac89af7846802d0348df3fb90"

 FILESDIR =
"${@os.path.dirname(bb.data.getVar('FILE',d,1))}/u-boot-git/${MACHINE}"

You can get a working poky-sato-sdk well x-server fails, but you end up
at some login prompt and have networking support.

The poky-lsb-sdk also takes you to a login prompt, but without
networking from dhcp.

to enable networking from dhcp I did this, which i got from here:

http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit
/?id=24b30e528554de78bb61022923e70dd6574e94ec

# /etc/network/interfaces -- configuration file for ifup(8), ifdown(8)

# The loopback interface
auto lo
iface lo inet loopback

# Wireless interfaces
iface wlan0 inet dhcp
wireless_mode managed
wireless_essid any
wpa-driver wext
wpa-conf /etc/wpa_supplicant.conf

iface atml0 inet dhcp

# Wired or wireless interfaces
auto eth0
iface eth0 inet dhcp
iface eth1 inet dhcp

# Ethernet/RNDIS gadget (g_ether) or LAN9514 on BeagleBoard xM
auto usb0
iface usb0 inet dhcp

# Bluetooth networking
iface bnep0 inet dhcp

... which gives me a usable lsb-sdk image for the beagle-xm ...

The inclusion of those fixes in 5.0.1 would be great to get an "out of
the box" experience, since the latest and greatest from git is not
really working:
http://bugzilla.pokylinux.org/show_bug.cgi?id=1071

Regards,

Robert


