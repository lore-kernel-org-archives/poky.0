Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4F39B4C811A5
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 13:32:58 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 26 Jan 2011 11:32:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,381,1291622400"; d="scan'208";a="380318373"
Received: from unknown (HELO [10.255.14.182]) ([10.255.14.182])
	by azsmga001.ch.intel.com with ESMTP; 26 Jan 2011 11:32:57 -0800
Message-ID: <4D4076DE.7060502@linux.intel.com>
Date: Wed, 26 Jan 2011 11:32:46 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Adrian Alonso <aalonso@secretlab.ca>
References: <1296063743-4676-1-git-send-email-aalonso@secretlab.ca>	<4D406152.3010009@linux.intel.com>	<4D4067CF.3010505@linux.intel.com>
	<AANLkTimDkigWN8YWY5Smkg8hio90CFchy3jum8QNtdoU@mail.gmail.com>
In-Reply-To: <AANLkTimDkigWN8YWY5Smkg8hio90CFchy3jum8QNtdoU@mail.gmail.com>
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
X-List-Received-Date: Wed, 26 Jan 2011 19:32:58 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/26/2011 10:55 AM, Adrian Alonso wrote:
> Yep that's correct all 25 patch's belong to xilinx bsp meta layer;
> I could define in the meta layer a revision inc file for all the recipes
> that set a SRCREV version.

Apologies, I missed that this was a layer. Putting the revisions in a 
layer default-revisions include isn't a bad idea - it would make merging 
anything into meta at a later date pretty easy. But there's nothing 
wrong with it as is.

--
Darren

>
> Regards
>
> On Wed, Jan 26, 2011 at 12:28 PM, Saul Wold <sgw@linux.intel.com
> <mailto:sgw@linux.intel.com>> wrote:
>
>     On 01/26/2011 10:00 AM, Darren Hart wrote:
>
>         On 01/26/2011 09:42 AM, Adrian Alonso wrote:
>
>             * Disable -Os optspace option not supported by gcc use
>             insted -O2
>             * v2 Remove Make file patch
>             * v3 use EXTRA_OEMAKE variable, override default OPTFLAGS
>             settings
>             in u-boot.inc, Powerpc targets build only with -O1, -O2 optflags
>             Build failures are related to gcc bugs #44392 and #45052
>             * Bump PR
>
>             Signed-off-by: Adrian Alonso<aalonso@secretlab.ca
>             <mailto:aalonso@secretlab.ca>>
>
>
>         Looks good for the -Os problem.
>
>         Reviewed-by: Darren Hart<dvhart@linux.intel.com
>         <mailto:dvhart@linux.intel.com>>
>
>         I noticed that the SRCREV is defined in this file.
>         Typically this should be in
>         meta/conf/distro/include/poky-default-revisions.inc
>
>     If I remember this correctly, these are in a layer, so the
>     default-revision.inc does not get updated.
>
>     Sau!
>
>
>         --
>         Darren
>
>
>             ---
>             recipes-bsp/uboot/u-boot-xilinx_git.bb
>             <http://u-boot-xilinx_git.bb> | 6 ++++--
>             1 files changed, 4 insertions(+), 2 deletions(-)
>
>             diff --git a/recipes-bsp/uboot/u-boot-xilinx_git.bb
>             <http://u-boot-xilinx_git.bb>
>             b/recipes-bsp/uboot/u-boot-xilinx_git.bb
>             <http://u-boot-xilinx_git.bb>
>             index 50d99e3..a373428 100644
>             --- a/recipes-bsp/uboot/u-boot-xilinx_git.bb
>             <http://u-boot-xilinx_git.bb>
>             +++ b/recipes-bsp/uboot/u-boot-xilinx_git.bb
>             <http://u-boot-xilinx_git.bb>
>             @@ -1,9 +1,11 @@
>             require ../meta/recipes-bsp/uboot/u-boot.inc
>             -PR = "r2"
>             +PR = "r3"
>
>             +EXTRA_OEMAKE = "CROSS_COMPILE=${TARGET_PREFIX} OPTFLAGS='-O2'"
>             BRANCH="master"
>             TAG="e094f2479ea339d7f48b6826f06f0be4984d9a98"
>             -SRC_URI =
>             "git://git.xilinx.com/u-boot-xlnx.git;branch=${BRANCH};protocol=git
>             <http://git.xilinx.com/u-boot-xlnx.git;branch=$%7BBRANCH%7D;protocol=git>"
>             +SRC_URI =
>             "git://git.xilinx.com/u-boot-xlnx.git;branch=${BRANCH};protocol=git
>             <http://git.xilinx.com/u-boot-xlnx.git;branch=$%7BBRANCH%7D;protocol=git>
>             \
>             + "
>             SRCREV = "${TAG}"
>
>             inherit xilinx-boot
>
>
>
>
>     _______________________________________________
>     poky mailing list
>     poky@yoctoproject.org <mailto:poky@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/poky
>
>


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

