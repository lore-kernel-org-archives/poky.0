Return-Path: <saul.wold@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id C788E4C800BD
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 13:55:17 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 03 Feb 2011 11:55:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,421,1291622400"; d="scan'208";a="383844692"
Received: from unknown (HELO [10.255.14.193]) ([10.255.14.193])
	by azsmga001.ch.intel.com with ESMTP; 03 Feb 2011 11:55:16 -0800
Message-ID: <4D4B0824.8090407@intel.com>
Date: Thu, 03 Feb 2011 11:55:16 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1296762098.git.dvhart@linux.intel.com>
	<4b95de17b587caf8e284658df91ef345c829471e.1296762098.git.dvhart@linux.intel.com>
In-Reply-To: <4b95de17b587caf8e284658df91ef345c829471e.1296762098.git.dvhart@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] beagleboard: set kernel provider to linux-yocto (2.6.37)
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
X-List-Received-Date: Thu, 03 Feb 2011 19:55:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/03/2011 11:43 AM, Darren Hart wrote:
> From: Darren Hart<dvhart@linux.intel.com>
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: dvhart/beagle
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/beagle
>
> Thanks,
>      Darren Hart<dvhart@linux.intel.com>
>
> Support has been added for basic Beagleboard xM functionality,
> including networking, to the linux-yocto kernel repository.
> Tested on the Beagleboard xM.
>
> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
> CC: Bruce Ashfield<bruce.ashfield@windriver.com>
> ---
>   meta/conf/machine/beagleboard.conf           |    2 +-
>   meta/recipes-kernel/linux/linux-yocto_git.bb |    2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/meta/conf/machine/beagleboard.conf b/meta/conf/machine/beagleboard.conf
> index f21638c..04947c0 100644
> --- a/meta/conf/machine/beagleboard.conf
> +++ b/meta/conf/machine/beagleboard.conf
> @@ -24,7 +24,7 @@ EXTRA_IMAGECMD_jffs2 = "-lnp "
>   # Guesswork
>   SERIAL_CONSOLE = "115200 ttyO2"
>
> -PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-stable"
> +PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
>   PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
>
>   KERNEL_IMAGETYPE = "uImage"
> diff --git a/meta/recipes-kernel/linux/linux-yocto_git.bb b/meta/recipes-kernel/linux/linux-yocto_git.bb
> index 5f126b3..cc52397 100644
> --- a/meta/recipes-kernel/linux/linux-yocto_git.bb
> +++ b/meta/recipes-kernel/linux/linux-yocto_git.bb
> @@ -20,7 +20,7 @@ SRCREV_FORMAT = "meta_machine"
>   SRC_URI = "git://git.pokylinux.org/linux-yocto-2.6.37;protocol=git;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta \
>              file://tools-perf-no-scripting.patch"
>
> -COMPATIBLE_MACHINE = "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64|mpc8315e-rdb|routerstationpro)"
> +COMPATIBLE_MACHINE = "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64|mpc8315e-rdb|routerstationpro|beagleboard)"
>
>   # Functionality flags
>   KERNEL_REVISION_CHECKING ?= "t"
Merged into Master

	Thanks
		Sau!

