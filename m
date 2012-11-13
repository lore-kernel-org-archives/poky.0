Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F44CE00348
	for <poky@yoctoproject.org>; Tue, 13 Nov 2012 09:10:49 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 13 Nov 2012 09:10:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,768,1344236400"; d="scan'208";a="248479532"
Received: from unknown (HELO helios.localnet) ([10.252.122.166])
	by fmsmga002.fm.intel.com with ESMTP; 13 Nov 2012 09:10:48 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Date: Tue, 13 Nov 2012 17:10:46 +0000
Message-ID: <7874249.T1W7SIhH85@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.2 (Linux/3.2.0-32-generic-pae; KDE/4.9.2; i686; ; )
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE4012C7CF327A4@pluto.melinkcorp.local>
References: <91586D499ADFD74FBCFB8425266A5DE4012C7CE153F8@pluto.melinkcorp.local>
	<91586D499ADFD74FBCFB8425266A5DE4012C7CF327A4@pluto.melinkcorp.local>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: Errors attempting to build AT91SAM9x5 BSP
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 13 Nov 2012 17:10:49 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 13 November 2012 11:26:08 Bryan Evenson wrote:
> I decided to start over with the stable danny tarball instead of using the
> Git repository.  I've been able to build a core-image-minimal QEMU image
> and run it in QEMU.  After that I created my new BSP using the yocto-bsp
> script and added my new BSP to the build/conf/bblayers.conf file as
> directed in the BSP Guide.  However, now whenever I try to use bitbake for
> anything I get the error message "NOTE: Your conf/bblayers.conf has been
> automatically updated. Please re-run bitbake."  I've tried incrementing the
> LCONF_VERSION variable in conf/bblayers.conf and incrementing the
> CONF_VERSION in conf/local.conf.  I've also tried issuing "bitbake -f -c
> clean core-image-minimal" and I get the same error.  The only way I've been
> able to use bitbake again is to remove the line for my new BSP from the
> BBLAYERS variable in conf/bblayers.conf.

What value was LCONF_VERSION at before you removed it? Also, could you send 
your bblayers.conf file?

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

