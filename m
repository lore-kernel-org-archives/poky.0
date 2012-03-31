Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3F87E0059A
	for <poky@yoctoproject.org>; Sat, 31 Mar 2012 06:34:07 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 31 Mar 2012 06:34:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="127292406"
Received: from unknown (HELO helios.localnet) ([10.252.123.233])
	by orsmga002.jf.intel.com with ESMTP; 31 Mar 2012 06:34:06 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Sat, 31 Mar 2012 14:34:05 +0100
Message-ID: <2907877.vRHQXJScEi@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-17-generic-pae; KDE/4.8.1; i686; ; )
In-Reply-To: <772bae8a380a006f5bde3154a406a458b7f56313.1333172695.git.dongxiao.xu@intel.com>
References: <cover.1333172695.git.dongxiao.xu@intel.com>
	<772bae8a380a006f5bde3154a406a458b7f56313.1333172695.git.dongxiao.xu@intel.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] baryon: Fix variable naming
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
X-List-Received-Date: Sat, 31 Mar 2012 13:34:07 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Saturday 31 March 2012 13:46:17 Dongxiao Xu wrote:
> The POKY_EXTRA_INSTALL is changed to CORE_IMAGE_EXTRA_INSTALL in core
> layer. Therefore change it in meta-baryon accordingly.
> 
> Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
> ---
>  recipes-extended/images/baryon-image.bb |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/recipes-extended/images/baryon-image.bb
> b/recipes-extended/images/baryon-image.bb index 4ac9dcf..663c80d 100644
> --- a/recipes-extended/images/baryon-image.bb
> +++ b/recipes-extended/images/baryon-image.bb
> @@ -1,6 +1,6 @@
>  IMAGE_FEATURES = "nfs-server package-management ssh-server-dropbear
> debug-tweaks"
> 
> -POKY_EXTRA_INSTALL = "samba procps mdadm e2fsprogs-mke2fs util-linux \
> +CORE_IMAGE_EXTRA_INSTALL = "samba procps mdadm e2fsprogs-mke2fs util-linux
> \ webmin \
>                       webmin-module-status \
>                       webmin-module-proc \

Merged to meta-baryon, thanks.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

