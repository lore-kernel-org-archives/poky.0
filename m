Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 665CEE01471
	for <poky@yoctoproject.org>; Wed, 29 May 2013 09:17:23 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 29 May 2013 09:15:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,765,1363158000"; d="scan'208";a="321397736"
Received: from unknown (HELO helios.localnet) ([10.252.121.189])
	by orsmga001.jf.intel.com with ESMTP; 29 May 2013 09:17:22 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Martin Jansa <martin.jansa@gmail.com>
Date: Wed, 29 May 2013 17:17:21 +0100
Message-ID: <1776987.hBiQ6suYkR@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-22-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <20130529155624.GN3192@jama>
References: <1369839672-11420-1-git-send-email-paul.eggleton@linux.intel.com>
	<20130529155624.GN3192@jama>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] xserver-xf86-config: re-enable AutoAddDevices for beagleboard
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
X-List-Received-Date: Wed, 29 May 2013 16:17:23 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 29 May 2013 17:56:24 Martin Jansa wrote:
> On Wed, May 29, 2013 at 04:01:12PM +0100, Paul Eggleton wrote:
> > This was added quite a long time ago because of poor interactions
> > between HAL and the X server when it came to enabling input devices.
> > HAL is long gone and I think it's safe to say we don't need to disable
> > this any longer, especially as it gets in the way of being able to plug
> > in the keyboard/mouse after boot.
> > 
> > (This has already effectively been removed for the other BSPs in
> > meta-yocto-bsp).
> > 
> > Fixes [YOCTO #1823].
> 
> Doesn't this break touchscreen calibration? 

I'd hope not...

> At least when I was adding it to my BSP it was also solving issues with
> xinput-calibrator expecting input devices with specified names (and autoadded
> were different)

Surely that's a deficiency in xinput-calibrator that should be fixed there if it 
is still a problem?

I didn't mention it in the commit message, but FWIW I did look at the meta-ti 
xorg.conf files and they don't have this line.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

