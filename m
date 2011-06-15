Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1B5A44C804DC
	for <poky@pokylinux.org>; Tue, 14 Jun 2011 20:32:29 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 14 Jun 2011 18:32:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,368,1304319600"; d="scan'208";a="18293168"
Received: from doubt.jf.intel.com (HELO [10.24.4.66]) ([10.24.4.66])
	by fmsmga001.fm.intel.com with ESMTP; 14 Jun 2011 18:32:17 -0700
Message-ID: <4DF80B84.9000304@linux.intel.com>
Date: Tue, 14 Jun 2011 18:31:48 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: gmane@reliableembeddedsystems.com
References: <it8ite$i96$1@dough.gmane.org>
In-Reply-To: <it8ite$i96$1@dough.gmane.org>
Cc: poky@pokylinux.org
Subject: Re: bernard 5.0.1 and beagle-xm rev c
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
X-List-Received-Date: Wed, 15 Jun 2011 01:32:29 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 06/14/2011 02:13 PM, Robert Berger wrote:
> I just got a few new beagle-xm boards (REV C) and I'm having fun with them;)
> 
> I created a poky-image-minimal from the bernard-5.0.1 tag and test the
> micro SD card with one of my old beagle-xm (REV A3) and one of the new
> ones (REV C).
> 
> The network is working with REV A3, but not with REV C.


Does USB work in general on Rev C?

--
Darren

> That's what I added to /etc/network/interfaces:
> 
> # Ethernet/RNDIS gadget (g_ether) or LAN9514 on BeagleBoard xM
> auto usb0
> iface usb0 inet dhcp
> 
> Am I missing something?
> 
> REV C:  http://pastebin.com/cXaTnLCY
> REV A3: http://pastebin.com/VFJ9w2VW
> 
> Regards,
> 
> Robert..."C++ has its place in the history of programming languages.
> Just as Caligula has his place in the history of the Roman Empire." -
> Robert Firth
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

