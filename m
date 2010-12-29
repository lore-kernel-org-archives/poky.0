Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7916C4C80FFE;
	Wed, 29 Dec 2010 14:24:16 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 29 Dec 2010 12:24:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,245,1291622400"; d="scan'208";a="872830361"
Received: from unknown (HELO [10.255.13.215]) ([10.255.13.215])
	by fmsmga001.fm.intel.com with ESMTP; 29 Dec 2010 12:24:15 -0800
Message-ID: <4D1B98EE.8060603@intel.com>
Date: Wed, 29 Dec 2010 12:24:14 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1293518497.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1293518497.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: Re: [PATCH 0/2] linux-yocto: 2.6.37-rc7 & bsp branch fixups
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
X-List-Received-Date: Wed, 29 Dec 2010 20:24:17 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/27/2010 10:49 PM, Bruce Ashfield wrote:
> The first patch of this pull request updates the BSP branches
> to 2.6.37-rc7 (all qemu targets have been built and booted).
>
> The second patch is an update to the handling of KMACHINE as it
> maps to the branch that we should be building for a BSP. During
> some investigation around the igep0020 and building it on top of
> the beagle board branches, the kernel branch was coming through
> processing as UNDEFINED. This lead to errors. I tracked it down
> to the non-override variable being used in the python processing.
> Patch 2/2 updates the processing to check overrrides and then
> fall back. With this, I was able to build an igep0020 on top of
> the 2.6.37-rc7 beagle board kernel branches.
>
> Cheers,
>
> Bruce
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: zedd/kernel
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel
>
> Thanks,
>      Bruce Ashfield<bruce.ashfield@windriver.com>
> ---
>
>
> Bruce Ashfield (2):
>    yocto-kernel: fix kmachine to deal with overrides
>    yocto/meta: update to 2.6.37-rc7
>
>   meta/classes/kernel-yocto.bbclass                  |    7 +++++--
>   .../conf/distro/include/poky-default-revisions.inc |   20 ++++++++++----------
>   2 files changed, 15 insertions(+), 12 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Merged into Master

Thanks

   Sau!


