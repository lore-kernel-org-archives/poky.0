Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B52AEE01482
	for <poky@yoctoproject.org>; Tue, 30 Jul 2013 07:47:35 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 30 Jul 2013 07:47:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,778,1367996400"; d="scan'208";a="354312770"
Received: from unknown (HELO helios.localnet) ([10.252.122.217])
	by orsmga001.jf.intel.com with ESMTP; 30 Jul 2013 07:47:32 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 30 Jul 2013 15:47:31 +0100
Message-ID: <2203027.YREevPRkeF@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-26-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <cover.1375164937.git.sgw@linux.intel.com>
References: <cover.1375164937.git.sgw@linux.intel.com>
MIME-Version: 1.0
Subject: Re: [CONSOLIDATED PULL (M3 rc1) 0/8] Poky changes
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
X-List-Received-Date: Tue, 30 Jul 2013 14:47:35 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 29 July 2013 23:17:11 Saul Wold wrote:
> Ross, Paul, Richard:
> 
> This is the set of change for Poky!
> 
> Please review and ACK
> 
> Thanks
> 	Sau!
> 
> The following changes since commit bd1c441a210cae03fb6006c996227211cc29056b:
> 
>   bitbake: bitbake: runqueue: add warning if invalidating invalid task
> (2013-07-29 15:25:09 +0100)
> 
> are available in the git repository at:
> 
>   git://git.yoctoproject.org/poky-contrib sgw/stage
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgw/stage
> 
> Emilia Ciobanu (1):
>   package_regex.inc: Add/Update REGEX and PRSPV variable
> 
> Laszlo Papp (1):
>   layer.conf: make the yocto layer dependent on oe-core
> 
> Ross Burton (5):
>   genericx86: add new BSP
>   local.conf.sample: add genericx86 reference
>   genericx86: add fbdev, modesettings and vesa Xorg drivers
>   genericx86: disable rootless X
>   genericx86: ship all the driver firmware by default
> 
> Saul Wold (1):
>   poky-lsb: Enable GCC Security flags by default for LSB builds

Acked-by: Paul Eggleton <paul.eggleton@linux.intel.com>

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

