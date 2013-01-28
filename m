Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BC22E006C3
	for <poky@yoctoproject.org>; Mon, 28 Jan 2013 12:29:24 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 28 Jan 2013 12:29:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,554,1355126400"; d="scan'208";a="253759276"
Received: from envy.jf.intel.com (HELO envy.home) ([10.7.199.77])
	by orsmga001.jf.intel.com with ESMTP; 28 Jan 2013 12:29:23 -0800
Message-ID: <5106DFA4.6010304@linux.intel.com>
Date: Mon, 28 Jan 2013 12:29:24 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <5106CD1D.9000807@linux.intel.com>
In-Reply-To: <5106CD1D.9000807@linux.intel.com>
X-Enigmail-Version: 1.5
Cc: "poky >> \"poky@yoctoproject.org\"" <poky@yoctoproject.org>
Subject: Re: [OE-core] [PATCH v2] poky-tiny: Update for DISTRO_FEATURES_INITMAN
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
X-List-Received-Date: Mon, 28 Jan 2013 20:29:24 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 01/28/2013 11:10 AM, Saul Wold wrote:
> This patch accounts for the addition of DISTRO_FEATURES_INITMAN which
> sets the VIRTUAL_RUNTIME_init_manager, so that does not need to be set.
> 
> Signed-off-by: Saul Wold <sgw@linux.intel.com>

Acked-by: Darren Hart <dvhart@linux.intel.com>

> ---
>   meta-yocto/conf/distro/poky-tiny.conf |    2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/meta-yocto/conf/distro/poky-tiny.conf 
> b/meta-yocto/conf/distro/poky-tiny.conf
> index 347280a..1ae8242 100644
> --- a/meta-yocto/conf/distro/poky-tiny.conf
> +++ b/meta-yocto/conf/distro/poky-tiny.conf
> @@ -84,6 +84,7 @@ DISTRO_FEATURES_NET = "ipv4"
>   DISTRO_FEATURES_USB = "usbhost"
>   #DISTRO_FEATURES_USBGADGET = "usbgadget"
>   #DISTRO_FEATURES_WIFI = "wifi"
> +DISTRO_FEATURES_INITMAN = "tiny-init"
>    DISTRO_FEATURES = "${DISTRO_FEATURES_TINY} \
>                      ${DISTRO_FEATURES_NET} \
> @@ -96,7 +97,6 @@ DISTRO_FEATURES = "${DISTRO_FEATURES_TINY} \
>   # Use tmpdevfs and the busybox runtime services
>   VIRTUAL-RUNTIME_dev_manager = ""
>   VIRTUAL-RUNTIME_login_manager = ""
> -VIRTUAL-RUNTIME_init_manager = "tiny-init"
>   VIRTUAL-RUNTIME_keymaps = ""
>    # FIXME: Consider adding "modules" to MACHINE_FEATURES and using that in
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

