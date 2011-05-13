Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7BD024C811EB
	for <poky@pokylinux.org>; Fri, 13 May 2011 15:19:34 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 13 May 2011 13:19:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,366,1301900400"; 
   d="scan'208";a="1428407"
Received: from unknown (HELO [10.255.12.78]) ([10.255.12.78])
	by fmsmga002.fm.intel.com with ESMTP; 13 May 2011 13:19:33 -0700
Message-ID: <4DCD925A.8090501@linux.intel.com>
Date: Fri, 13 May 2011 13:19:38 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: gmane@reliableembeddedsystems.com
References: <iqjk2n$otv$1@dough.gmane.org> <iqk0lv$264$1@dough.gmane.org>
In-Reply-To: <iqk0lv$264$1@dough.gmane.org>
Cc: poky@pokylinux.org
Subject: Re: beagleboard and latest from git
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
X-List-Received-Date: Fri, 13 May 2011 20:19:39 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/13/2011 12:26 PM, Robert Berger wrote:
> Hi,
> 
> I switched a bit around between various versions in the meantime and
> that's what I figured out:

Thanks for the analysis Robert. There is a bug open for this:

http://bugzilla.yoctoproject.org/show_bug.cgi?id=1029

If you want to take a shot and preparing a fix, please do. Otherwise,
we'll get to it for the M1 milestone.

Thanks,

Darren

> 
> 1) the latest u-boot (or some configuration of it) from git does not
> seem to work for the beagleboard
> 
> 2) if I use U-Boot 2011.03-00038-g8d4addc-dirty (May 13 2011 - 00:01:02)
> which comes with bernard-5.0.1 things look much better.
> 
> U-Boot 2010.12-00038-g8d4addc-dirty (May 13 2011 - 08:44:08) is the
> suspect. Why does the latest and greatest from git use an older u-boot
> version than bernard 5.0.1?
> 
> I interrupt the u-boot autoboot and do the following:
> 
> OMAP3 beagleboard.org # sete console "ttyO2,115200n8"
> OMAP3 beagleboard.org # mmc rescan ${mmcdev}
> OMAP3 beagleboard.org # run loaduimage
> reading uImage
> 
> 2632316 bytes read
> OMAP3 beagleboard.org # run mmcboot
> 
> and voila:
> 
> Yocto (Built by Poky 5.0) 1.0+snapshot-20110512 beagleboard ttyO2
> 
> beagleboard login: root
> root@beagleboard:~#
> 
> This time even with networking.
> 
> This means that the latest and greatest rootfs seems OK.
> 
> Regards,
> 
> Robert
> 
> 
> ..."It is NOT portable (uses 386 task switching etc), and it probably
> never will support anything other than AT-harddisks, as that's all I
> have :-(." - Linus Benedict Torvalds(torvalds@klaava.Helsinki.FI),
> 1991-08-25 23:12:08 PST -
> 
> My public pgp key is available at:
> http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1
> 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

