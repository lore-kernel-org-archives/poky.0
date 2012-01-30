Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED815E004D2
	for <poky@yoctoproject.org>; Mon, 30 Jan 2012 12:24:39 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 30 Jan 2012 12:24:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="101993876"
Received: from unknown (HELO [10.255.14.89]) ([10.255.14.89])
	by orsmga001.jf.intel.com with ESMTP; 30 Jan 2012 12:24:39 -0800
Message-ID: <4F26FC86.1090903@linux.intel.com>
Date: Mon, 30 Jan 2012 12:24:38 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Paul Gortmaker <paul.gortmaker@windriver.com>
References: <1327681281-11454-1-git-send-email-paul.gortmaker@windriver.com>
In-Reply-To: <1327681281-11454-1-git-send-email-paul.gortmaker@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] U-boot recipe for most recent stable release.
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
X-List-Received-Date: Mon, 30 Jan 2012 20:24:40 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/27/2012 08:21 AM, Paul Gortmaker wrote:
> This adds a recipe for U-Boot v2011.12.  In doing so, some of
> non-shareable settings were moved out of u-boot.inc and others
> moved in.
>
> The recipe was tested on an mpc8315 Yocto configuration.
>
> Paul Gortmaker (3):
>    u-boot: Don't make the -Os removal part of global settings.
>    u-boot: make FILESDIR a shared setting.
>    u-boot: Add recipe for u-boot v2011.12
>
>   meta/recipes-bsp/u-boot/u-boot.inc        |    4 +---
>   meta/recipes-bsp/u-boot/u-boot_2011.03.bb |    3 ++-
>   meta/recipes-bsp/u-boot/u-boot_2011.06.bb |    3 ++-
>   meta/recipes-bsp/u-boot/u-boot_2011.12.bb |   20 ++++++++++++++++++++
>   4 files changed, 25 insertions(+), 5 deletions(-)
>   create mode 100644 meta/recipes-bsp/u-boot/u-boot_2011.12.bb
>

Who are the current usages of the older u-boot and should they really be 
moved into the BSP layer?

Also, looking at this recipe, there might be more that can be shared in 
the .inc file.

Sau!


