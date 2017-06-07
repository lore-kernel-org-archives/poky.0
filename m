Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB280E00BDC; Wed,  7 Jun 2017 05:34:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EB06E00BCC
	for <poky@yoctoproject.org>; Wed,  7 Jun 2017 05:34:06 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	07 Jun 2017 05:34:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,311,1493708400"; d="scan'208";a="111970897"
Received: from linux.intel.com ([10.54.29.200])
	by fmsmga006.fm.intel.com with ESMTP; 07 Jun 2017 05:34:06 -0700
Received: from linux.intel.com (vmed.fi.intel.com [10.237.72.38])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTPS id 5DD505800C1;
	Wed,  7 Jun 2017 05:34:05 -0700 (PDT)
Date: Wed, 7 Jun 2017 15:33:09 +0300
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: poky@yoctoproject.org
Message-ID: <20170607123308.GA25413@linux.intel.com>
References: <CAJTo0LYUEgJgU03xxhi2ke3SspsEs0_JPcX4yiBaVbF6p-saUQ@mail.gmail.com>
	<1496838489-25242-1-git-send-email-ed.bartosh@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <1496838489-25242-1-git-send-email-ed.bartosh@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: [PATCH v2] u-boot: enable dhcp for MPC8315 board
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ed.bartosh@linux.intel.com
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 07 Jun 2017 12:34:08 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

sorry, wrong list
please, ignore

On Wed, Jun 07, 2017 at 03:28:09PM +0300, Ed Bartosh wrote:
> Getting ip address from DHCP server is much more convenient
> than setting static ip. It allows to configure u-boot in
> more generic way and to avoid hardcoding static ip in
> u-boot configuration.
> 
> Enabled dhcp client functionality for Yocto reference
> hardware MPC8315E-RDB.
> 
> Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
> ---
>  meta/recipes-bsp/u-boot/files/MPC8315ERDB-enable-DHCP.patch | 12 ++++++++++++
>  meta/recipes-bsp/u-boot/u-boot-common_2017.01.inc           |  4 +++-
>  2 files changed, 15 insertions(+), 1 deletion(-)
>  create mode 100644 meta/recipes-bsp/u-boot/files/MPC8315ERDB-enable-DHCP.patch
> 
> diff --git a/meta/recipes-bsp/u-boot/files/MPC8315ERDB-enable-DHCP.patch b/meta/recipes-bsp/u-boot/files/MPC8315ERDB-enable-DHCP.patch
> new file mode 100644
> index 0000000..df89e05
> --- /dev/null
> +++ b/meta/recipes-bsp/u-boot/files/MPC8315ERDB-enable-DHCP.patch
> @@ -0,0 +1,12 @@
> +diff --git a/configs/MPC8315ERDB_defconfig b/configs/MPC8315ERDB_defconfig
> +index 4e2b705..b02ab1f 100644
> +--- a/configs/MPC8315ERDB_defconfig
> ++++ b/configs/MPC8315ERDB_defconfig
> +@@ -9,6 +9,7 @@ CONFIG_HUSH_PARSER=y
> + CONFIG_CMD_I2C=y
> + CONFIG_CMD_USB=y
> + # CONFIG_CMD_SETEXPR is not set
> ++CONFIG_CMD_DHCP=y
> + CONFIG_CMD_MII=y
> + CONFIG_CMD_PING=y
> + CONFIG_CMD_EXT2=y
> diff --git a/meta/recipes-bsp/u-boot/u-boot-common_2017.01.inc b/meta/recipes-bsp/u-boot/u-boot-common_2017.01.inc
> index df24c85..8ee1c32 100644
> --- a/meta/recipes-bsp/u-boot/u-boot-common_2017.01.inc
> +++ b/meta/recipes-bsp/u-boot/u-boot-common_2017.01.inc
> @@ -9,6 +9,8 @@ PE = "1"
>  # repo during parse
>  SRCREV = "a705ebc81b7f91bbd0ef7c634284208342901149"
>  
> -SRC_URI = "git://git.denx.de/u-boot.git"
> +SRC_URI = "git://git.denx.de/u-boot.git \
> +    file://MPC8315ERDB-enable-DHCP.patch \
> +"
>  
>  S = "${WORKDIR}/git"
> -- 
> 2.1.4
> 

-- 
--
Regards,
Ed

