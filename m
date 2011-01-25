Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id AFDAE4C811A5
	for <poky@yoctoproject.org>; Tue, 25 Jan 2011 15:37:48 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 25 Jan 2011 13:37:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,376,1291622400"; d="scan'208";a="700569344"
Received: from unknown (HELO [10.255.14.185]) ([10.255.14.185])
	by orsmga001.jf.intel.com with ESMTP; 25 Jan 2011 13:37:48 -0800
Message-ID: <4D3F42AB.9000002@linux.intel.com>
Date: Tue, 25 Jan 2011 13:37:47 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Adrian Alonso <aalonso@secretlab.ca>
References: <1295989756-7967-1-git-send-email-aalonso@secretlab.ca>
In-Reply-To: <1295989756-7967-1-git-send-email-aalonso@secretlab.ca>
Cc: Josh Lock <joshua.lock@intel.com>, poky@yoctoproject.org
Subject: Re: [PATCH 05/25][v2] u-boot: disable -Os option not supported by gcc
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
X-List-Received-Date: Tue, 25 Jan 2011 21:37:48 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/25/2011 01:09 PM, Adrian Alonso wrote:
> * Disable -Os optspace option not supported by gcc
> * v2 use OPTFLAGS variable, remove meke file patch
> * Bump PR
>
> Signed-off-by: Adrian Alonso<aalonso@secretlab.ca>
> ---
>   recipes-bsp/uboot/u-boot-xilinx_git.bb |    6 ++++--
>   1 files changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-bsp/uboot/u-boot-xilinx_git.bb b/recipes-bsp/uboot/u-boot-xilinx_git.bb
> index 50d99e3..499ce0b 100644
> --- a/recipes-bsp/uboot/u-boot-xilinx_git.bb
> +++ b/recipes-bsp/uboot/u-boot-xilinx_git.bb
> @@ -1,9 +1,11 @@
>   require ../meta/recipes-bsp/uboot/u-boot.inc
> -PR = "r2"
> +PR = "r3"
>
> +OPTFLAGS=""

Have you tested this build? Looking at the Makefile, it doesn't do a 
conditional assignment, so I would expect OPTFLAGS set here to be 
ignored. This is why I added it to EXTRA_OEMAKE, which overrides 
anything in the Makefil, regardless of how it is assigned. At least, 
that was my understanding of the mechanism.

EXTRA_OEMAKE = "CROSS_COMPILE=${TARGET_PREFIX} OPTFLAGS=''"


Josh, I think you may had something to do with my education in this area 
- can you comment? Am I all wet here?

--
Darren

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

