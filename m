Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00BEFE01358
	for <poky@yoctoproject.org>; Mon, 26 Aug 2013 11:21:22 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 26 Aug 2013 11:21:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,960,1367996400"; d="scan'208";a="368722219"
Received: from dvhart-mobl4.jf.intel.com (HELO [10.7.201.153]) ([10.7.201.153])
	by orsmga001.jf.intel.com with ESMTP; 26 Aug 2013 11:21:21 -0700
Message-ID: <1377541281.27071.44.camel@dvhart-mobl4.amr.corp.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Mon, 26 Aug 2013 11:21:21 -0700
In-Reply-To: <0763f7a5c76603ea24937a93816495b1fc820682.1377540341.git.bruce.ashfield@windriver.com>
References: <cover.1377540341.git.bruce.ashfield@windriver.com>
	<0763f7a5c76603ea24937a93816495b1fc820682.1377540341.git.bruce.ashfield@windriver.com>
Organization: Intel
X-Mailer: Evolution 3.8.5 (3.8.5-2.fc19) 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] meta-yocto: change default kernel to 3.10
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
X-List-Received-Date: Mon, 26 Aug 2013 18:21:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Applied and build testing genericx86 for 3.10 now.

On Mon, 2013-08-26 at 14:08 -0400, Bruce Ashfield wrote:
> With 3.10 being the next LTSI kernel, and all qemu reference platforms
> tested on that new baseline, the time has come to bump the default
> version for qemu* and other boards to 3.10.
> 
> Reference platforms continue to explicitly set their own preferred versions
> for the kernel as required.
> 
> Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
> ---
>  meta-yocto/conf/distro/poky.conf |   14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
> index 5deb158..8ea4e4f 100644
> --- a/meta-yocto/conf/distro/poky.conf
> +++ b/meta-yocto/conf/distro/poky.conf
> @@ -19,13 +19,13 @@ POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"
>  
>  DISTRO_FEATURES ?= "${DISTRO_FEATURES_DEFAULT} ${DISTRO_FEATURES_LIBC} ${POKY_DEFAULT_DISTRO_FEATURES}"
>  
> -PREFERRED_VERSION_linux-yocto ?= "3.4%"
> -PREFERRED_VERSION_linux-yocto_qemux86 ?= "3.8%"
> -PREFERRED_VERSION_linux-yocto_qemux86-64 ?= "3.8%"
> -PREFERRED_VERSION_linux-yocto_qemuarm ?= "3.8%"
> -PREFERRED_VERSION_linux-yocto_qemumips ?= "3.8%"
> -PREFERRED_VERSION_linux-yocto_qemumips64 ?= "3.8%"
> -PREFERRED_VERSION_linux-yocto_qemuppc ?= "3.8%"
> +PREFERRED_VERSION_linux-yocto ?= "3.10%"
> +PREFERRED_VERSION_linux-yocto_qemux86 ?= "3.10%"
> +PREFERRED_VERSION_linux-yocto_qemux86-64 ?= "3.10%"
> +PREFERRED_VERSION_linux-yocto_qemuarm ?= "3.10%"
> +PREFERRED_VERSION_linux-yocto_qemumips ?= "3.10%"
> +PREFERRED_VERSION_linux-yocto_qemumips64 ?= "3.10%"
> +PREFERRED_VERSION_linux-yocto_qemuppc ?= "3.10%"
>  
>  SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${IMAGE_BASENAME}-${TUNE_PKGARCH}"
>  SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



