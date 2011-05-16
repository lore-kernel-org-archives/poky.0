Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8B1924C80479
	for <poky@pokylinux.org>; Mon, 16 May 2011 14:24:50 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 16 May 2011 12:24:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,220,1304319600"; 
   d="scan'208";a="2945413"
Received: from unknown (HELO [10.255.12.172]) ([10.255.12.172])
	by fmsmga001.fm.intel.com with ESMTP; 16 May 2011 12:24:46 -0700
Message-ID: <4DD17A0C.7030809@linux.intel.com>
Date: Mon, 16 May 2011 12:25:00 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: gmane@reliableembeddedsystems.com
References: <iqo4jm$4mj$1@dough.gmane.org>
In-Reply-To: <iqo4jm$4mj$1@dough.gmane.org>
Cc: poky@pokylinux.org
Subject: Re: beagle-xm more testing
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
X-List-Received-Date: Mon, 16 May 2011 19:24:50 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/15/2011 01:58 AM, Robert Berger wrote:
> Hi,
> 
> with the remotes/origin/bernard-5.0.1 branch and this tweak:
> 
> diff --git a/meta/recipes-bsp/uboot/u-boot_git.bb
> b/meta/recipes-bsp/uboot/u-boot_git.bb
> index 4686a58..23212aa 100644
> --- a/meta/recipes-bsp/uboot/u-boot_git.bb
> +++ b/meta/recipes-bsp/uboot/u-boot_git.bb
> @@ -2,7 +2,7 @@ require u-boot.inc
> 
>  LICENSE = "GPLv2+"
>  LIC_FILES_CHKSUM = "file://COPYING;md5=1707d6db1d42237583f50183a5651ecb \
> -
> file://README;beginline=1;endline=22;md5=3a00ef51d3fc96e9d6c1bc4708ccd3b5"
> +
> file://README;beginline=1;endline=22;md5=5ba4218ac89af7846802d0348df3fb90"


This needs to be moved into one of the recipes which define the SRCREV,
otherwise the md5 may change from version to version. md5 and SRCREV
really don't belong in an .inc file.

Would you like to submit this a patch to be included?

> 
>  FILESDIR =
> "${@os.path.dirname(bb.data.getVar('FILE',d,1))}/u-boot-git/${MACHINE}"
> 
> You can get a working poky-sato-sdk well x-server fails, but you end up
> at some login prompt and have networking support.
> 
> The poky-lsb-sdk also takes you to a login prompt, but without
> networking from dhcp.
> 
> to enable networking from dhcp I did this, which i got from here:
> 
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit
> /?id=24b30e528554de78bb61022923e70dd6574e94ec


I agree that I like this approach better, but it won't make the point
release. Look for this one in 1.1.


> 
> # /etc/network/interfaces -- configuration file for ifup(8), ifdown(8)
> 
> # The loopback interface
> auto lo
> iface lo inet loopback
> 
> # Wireless interfaces
> iface wlan0 inet dhcp
> wireless_mode managed
> wireless_essid any
> wpa-driver wext
> wpa-conf /etc/wpa_supplicant.conf
> 
> iface atml0 inet dhcp
> 
> # Wired or wireless interfaces
> auto eth0
> iface eth0 inet dhcp
> iface eth1 inet dhcp
> 
> # Ethernet/RNDIS gadget (g_ether) or LAN9514 on BeagleBoard xM
> auto usb0
> iface usb0 inet dhcp
> 
> # Bluetooth networking
> iface bnep0 inet dhcp
> 
> ... which gives me a usable lsb-sdk image for the beagle-xm ...
> 
> The inclusion of those fixes in 5.0.1 would be great to get an "out of
> the box" experience, since the latest and greatest from git is not
> really working:
> http://bugzilla.pokylinux.org/show_bug.cgi?id=1071


The u-boot issues concern me the most. Unfortunately the dev-cut for
5.0.1 is passed. We are looking for much improved bbxm support in 1.1.

Saul, is it too late for a fix like the above to the u-boot md5 to get
into the point release?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

