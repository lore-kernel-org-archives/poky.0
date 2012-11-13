Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9A48E00348
	for <poky@yoctoproject.org>; Tue, 13 Nov 2012 09:53:02 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 13 Nov 2012 09:52:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,768,1344236400"; d="scan'208";a="241554418"
Received: from unknown (HELO helios.localnet) ([10.252.122.166])
	by orsmga002.jf.intel.com with ESMTP; 13 Nov 2012 09:52:47 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Date: Tue, 13 Nov 2012 17:52:46 +0000
Message-ID: <7874263.lvMpyGKaak@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.2 (Linux/3.2.0-32-generic-pae; KDE/4.9.2; i686; ; )
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE4012C7CF3282A@pluto.melinkcorp.local>
References: <91586D499ADFD74FBCFB8425266A5DE4012C7CE153F8@pluto.melinkcorp.local>
	<7874249.T1W7SIhH85@helios>
	<91586D499ADFD74FBCFB8425266A5DE4012C7CF3282A@pluto.melinkcorp.local>
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Tue, 13 Nov 2012 17:53:03 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 13 November 2012 12:46:42 Bryan Evenson wrote:
> Here is the original bblayers.conf file before I started creating my BSP:
> 
> # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
> # changes incompatibly
> LCONF_VERSION = "6"
> 
> BBPATH = "${TOPDIR}"
> BBFILES ?= ""
> 
> BBLAYERS ?= " \
>   /media/sda3/yocto/poky-danny-8.0/meta \
>   /media/sda3/yocto/poky-danny-8.0/meta-yocto \
>   /media/sda3/yocto/poky-danny-8.0/meta-yocto-bsp \
>   "
> 
> And here is what it looks like after adding my BSP layer:
> 
> # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
> # changes incompatibly
> LCONF_VERSION = "7"
> 
> BBPATH = "${TOPDIR}"
> BBFILES ?= ""
> 
> BBLAYERS ?= " \
>   /media/sda3/yocto/poky-danny-8.0/meta \
>   /media/sda3/yocto/poky-danny-8.0/meta-yocto \
>   /media/sda3/yocto/poky-danny-8.0/meta-yocto-bsp \
>   /media/sda3/yocto/poky-danny-8.0/meta-intellihood-qemu \
>   "
> 
> Although, I just tried building again after changing the LCONF_VERSION back
> down to 6, and this time bitbake operates.  I know I'd tried that before
> and it hadn't worked.  The only difference that I can think of is that I've
> closed my terminal window and reopened it since my first posting and this
> one, which means I had to re-source the oe-init-build-env script.  Is it
> possible that this was causing my problems from before?

You shouldn't increase LCONF_VERSION unless LAYER_CONF_VERSION increases, and 
certainly it shouldn't be increased beyond the value of LAYER_CONF_VERSION 
(currently this is 6 in meta-yocto, 5 in OE-Core); why it would be telling you 
it had updated it if you did do that I don't know, that's certainly not 
intended behaviour.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

