Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3E54E00346
	for <poky@yoctoproject.org>; Thu, 30 Aug 2012 07:52:47 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 30 Aug 2012 07:52:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,341,1344236400"; d="scan'208";a="215825031"
Received: from unknown (HELO [10.255.13.47]) ([10.255.13.47])
	by fmsmga002.fm.intel.com with ESMTP; 30 Aug 2012 07:52:42 -0700
Message-ID: <1346338362.12571.8.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Ross Burton <ross.burton@intel.com>
Date: Thu, 30 Aug 2012 09:52:42 -0500
In-Reply-To: <1346336349-15790-1-git-send-email-ross.burton@intel.com>
References: <1346336349-15790-1-git-send-email-ross.burton@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] meta-emenlow: unset preferred providers for virtual/libgles[12]
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
X-List-Received-Date: Thu, 30 Aug 2012 14:52:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-08-30 at 15:19 +0100, Ross Burton wrote:
> The recent changes to enable GLES/EGL in mesa-dri have caused emenlow to fail:
> 
> ERROR: Trying to resolve runtime dependency libglu resulted in conflicting PREFERRED_PROVIDER entries being found.
> The providers found were: ['/srv/home/pokybuild/yocto-autobuilder/yocto-slave/emenlow/build/yocto/meta-intel/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb', '/srv/home/pokybuild/yocto-autobuilder/yocto-slave/emenlow/build/meta/recipes-graphics/mesa/mesa-dri_8.0.4.bb']
> The PREFERRED_PROVIDER entries resulting in this conflict were: ['PREFERRED_PROVIDER_mesa-dri = xpsb-glx', 'PREFERRED_PROVIDER_virtual/libgles1 = mesa-dri']
> 
> Because emenlow's xpsb-glx contains mesa, it needs to entirely replace
> mesa-dri. We'd normally set virtual/libgles1 and virtual/libgles2 to xpsb-glx
> but these drivers don't build the GLES libraries so that would be a lie.
> 
> So, unset the preferred provider entries so that bitbake doesn't look at
> mesa-dri at all.

Pulled into meta-intel/master, thanks.

Tom

> ---
>  meta-emenlow/conf/machine/emenlow.conf |    2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/meta-emenlow/conf/machine/emenlow.conf b/meta-emenlow/conf/machine/emenlow.conf
> index afb3866..65dcd5a 100644
> --- a/meta-emenlow/conf/machine/emenlow.conf
> +++ b/meta-emenlow/conf/machine/emenlow.conf
> @@ -13,6 +13,8 @@ PREFERRED_PROVIDER_libdrm = "libdrm-poulsbo"
>  PREFERRED_PROVIDER_drm = "libdrm-poulsbo"
>  PREFERRED_PROVIDER_virtual/libx11 = "libx11-trim"
>  PREFERRED_PROVIDER_virtual/libgl = "xpsb-glx"
> +PREFERRED_PROVIDER_virtual/libgles1 = ""
> +PREFERRED_PROVIDER_virtual/libgles2 = ""
>  PREFERRED_PROVIDER_virtual/xserver = "xserver-psb"
>  PREFERRED_PROVIDER_virtual/xserver-xf86 = "xserver-psb"
>  PREFERRED_PROVIDER_mesa-dri = "xpsb-glx"



