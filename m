Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 57A1C4C8085F
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 12:01:21 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 26 Jan 2011 10:01:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,381,1291622400"; d="scan'208";a="596706655"
Received: from unknown (HELO [10.255.14.182]) ([10.255.14.182])
	by orsmga002.jf.intel.com with ESMTP; 26 Jan 2011 10:01:00 -0800
Message-ID: <4D406152.3010009@linux.intel.com>
Date: Wed, 26 Jan 2011 10:00:50 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Adrian Alonso <aalonso@secretlab.ca>
References: <1296063743-4676-1-git-send-email-aalonso@secretlab.ca>
In-Reply-To: <1296063743-4676-1-git-send-email-aalonso@secretlab.ca>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 05/25][v3] u-boot: disable -Os option not supported by gcc
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
X-List-Received-Date: Wed, 26 Jan 2011 18:01:21 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/26/2011 09:42 AM, Adrian Alonso wrote:
> * Disable -Os optspace option not supported by gcc use insted -O2
> * v2 Remove Make file patch
> * v3 use EXTRA_OEMAKE variable, override default OPTFLAGS settings
>    in u-boot.inc, Powerpc targets build only with -O1, -O2 optflags
>    Build failures are related to gcc bugs #44392 and #45052
> * Bump PR
>
> Signed-off-by: Adrian Alonso<aalonso@secretlab.ca>

Looks good for the -Os problem.

Reviewed-by: Darren Hart<dvhart@linux.intel.com>

I noticed that the SRCREV is defined in this file.
Typically this should be in
meta/conf/distro/include/poky-default-revisions.inc

--
Darren


> ---
>   recipes-bsp/uboot/u-boot-xilinx_git.bb |    6 ++++--
>   1 files changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-bsp/uboot/u-boot-xilinx_git.bb b/recipes-bsp/uboot/u-boot-xilinx_git.bb
> index 50d99e3..a373428 100644
> --- a/recipes-bsp/uboot/u-boot-xilinx_git.bb
> +++ b/recipes-bsp/uboot/u-boot-xilinx_git.bb
> @@ -1,9 +1,11 @@
>   require ../meta/recipes-bsp/uboot/u-boot.inc
> -PR = "r2"
> +PR = "r3"
>
> +EXTRA_OEMAKE = "CROSS_COMPILE=${TARGET_PREFIX} OPTFLAGS='-O2'"
>   BRANCH="master"
>   TAG="e094f2479ea339d7f48b6826f06f0be4984d9a98"
> -SRC_URI = "git://git.xilinx.com/u-boot-xlnx.git;branch=${BRANCH};protocol=git"
> +SRC_URI = "git://git.xilinx.com/u-boot-xlnx.git;branch=${BRANCH};protocol=git \
> +          "
>   SRCREV = "${TAG}"
>
>   inherit xilinx-boot


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel


