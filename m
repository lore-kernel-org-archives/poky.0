Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1FCE84C810E3
	for <poky@yoctoproject.org>; Sun, 23 Jan 2011 23:12:39 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 23 Jan 2011 21:12:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,368,1291622400"; d="scan'208";a="595789955"
Received: from unknown (HELO [10.255.14.118]) ([10.255.14.118])
	by orsmga002.jf.intel.com with ESMTP; 23 Jan 2011 21:12:38 -0800
Message-ID: <4D3D0A45.4040009@linux.intel.com>
Date: Sun, 23 Jan 2011 21:12:37 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1295472579.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1295472579.git.dvhart@linux.intel.com>
Cc: poky@yoctoproject.org, robert.karl.berger@gmail.com
Subject: Re: [PATCH 0/6] Beagleboard xM support
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
X-List-Received-Date: Mon, 24 Jan 2011 05:12:39 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/19/2011 01:30 PM, Darren Hart wrote:
> The following patches provide initial support for the Beagleboard. They update
> the x-load and u-boot recipes, modify the beagleboard machine config, and add
> README.hardware documentation for the Beagleboard.
>
> The kernel config still needs to be updated to support the onboard NIC of the
> xM. Graphics and audio have not been tested. With the basic functionality in
> place, hopefully others will be encouraged to participate in fleshing out
> Beagleboard support in Poky.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: dvhart/beagle
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/beagle
>
> Thanks,
>      Darren Hart<dvhart@linux.intel.com>
> ---
>
>
> Darren Hart (6):
>    x-load: us TI upstream repository, update recipes accordingly
>    u-boot: Add a new upstream u-boot recipe
>    beagleboard: add x-load and u-boot depends
>    overo: use the new upstream u-boot recipe
>    u-boot-omap3: remove in favor of upstream u-boot
>    README.hardware: add beagleboard documentation
>
>   README.hardware                                    |   71 +++++++++++++
>   .../conf/distro/include/poky-default-revisions.inc |    3 +-
>   meta/conf/machine/beagleboard.conf                 |    3 +
>   meta/conf/machine/overo.conf                       |    2 +-
>   .../uboot/u-boot-omap3-git/beagleboard/name.patch  |   14 ---
>   meta/recipes-bsp/uboot/u-boot-omap3_git.bb         |   18 ----
>   meta/recipes-bsp/uboot/u-boot.inc                  |    3 +-
>   meta/recipes-bsp/uboot/u-boot_git.bb               |   21 ++++
>   meta/recipes-bsp/x-load/files/signGP.c             |  108 --------------------
>   meta/recipes-bsp/x-load/signgp-native.bb           |   14 ---
>   .../x-load/x-load-git/beagleboard/armv7-a.patch    |   11 --
>   .../x-load/x-load-git/beagleboard/name.patch       |   16 ++--
>   .../x-load/x-load-git/omap3evm/armv7-a.patch       |   11 --
>   .../x-load/x-load-git/overo/armv7-a.patch          |   11 --
>   meta/recipes-bsp/x-load/x-load.inc                 |    5 +-
>   meta/recipes-bsp/x-load/x-load_git.bb              |   19 ++--
>   16 files changed, 118 insertions(+), 212 deletions(-)
>   delete mode 100644 meta/recipes-bsp/uboot/u-boot-omap3-git/beagleboard/name.patch
>   delete mode 100644 meta/recipes-bsp/uboot/u-boot-omap3_git.bb
>   create mode 100644 meta/recipes-bsp/uboot/u-boot_git.bb
>   delete mode 100644 meta/recipes-bsp/x-load/files/signGP.c
>   delete mode 100644 meta/recipes-bsp/x-load/signgp-native.bb
>   delete mode 100644 meta/recipes-bsp/x-load/x-load-git/beagleboard/armv7-a.patch
>   delete mode 100644 meta/recipes-bsp/x-load/x-load-git/omap3evm/armv7-a.patch
>   delete mode 100644 meta/recipes-bsp/x-load/x-load-git/overo/armv7-a.patch
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled into Master

Thanks
	Sau!


