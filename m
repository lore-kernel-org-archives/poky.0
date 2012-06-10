Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1763E00746
	for <poky@yoctoproject.org>; Sun, 10 Jun 2012 13:55:00 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 10 Jun 2012 13:55:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="110436132"
Received: from unknown (HELO helios.localnet) ([10.252.120.99])
	by AZSMGA002.ch.intel.com with ESMTP; 10 Jun 2012 13:54:59 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Sun, 10 Jun 2012 21:54:57 +0100
Message-ID: <8481164.xLq9FblstP@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.3 (Linux/3.2.0-24-generic-pae; KDE/4.8.3; i686; ; )
In-Reply-To: <4FD1F411.60808@r-finger.com>
References: <4FD1F20F.6060908@mlbassoc.com> <4FD1F411.60808@r-finger.com>
MIME-Version: 1.0
Cc: John.Willis@distant-earth.com
Subject: Re: RaspberryPi with Poky
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
X-List-Received-Date: Sun, 10 Jun 2012 20:55:00 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 08 June 2012 13:46:09 Tomas Frydrych wrote:
> On 08/06/12 13:37, Gary Thomas wrote:
> > First problem: 'core-image-sato-raspberrypi.rpi-sdimg' is broken (no file)
> 
> I noticed this the the other day; on further investigation the sdimg
> class in meta-raspberrypi is rather nasty, IIRC you need to set up some
> stuff by hand on the build machine first and then run the build as root
> as well. I am not sure there is any need for the sdimg either, you
> should be able to use the tarball to extract the rootfs onto the SD card.

Yes, I looked at this too. If nobody else gets to it first I might try to 
rework this in a manner similar to our current live images for x86 so that you 
don't have to have loopback devices pre-configured.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

