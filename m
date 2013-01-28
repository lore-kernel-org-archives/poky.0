Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43479E006C3
	for <poky@yoctoproject.org>; Mon, 28 Jan 2013 12:29:58 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 28 Jan 2013 12:28:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,554,1355126400"; d="scan'208";a="253759401"
Received: from envy.jf.intel.com (HELO envy.home) ([10.7.199.77])
	by orsmga001.jf.intel.com with ESMTP; 28 Jan 2013 12:29:57 -0800
Message-ID: <5106DFC5.4080401@linux.intel.com>
Date: Mon, 28 Jan 2013 12:29:57 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <5106CD5D.2030701@linux.intel.com>
In-Reply-To: <5106CD5D.2030701@linux.intel.com>
X-Enigmail-Version: 1.5
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [OE-core] [PATCH] poky-tiny: Add pulseaudio to DISTRO_FEATURES_BACKFILL_CONSIDERED
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
X-List-Received-Date: Mon, 28 Jan 2013 20:29:58 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 01/28/2013 11:11 AM, Saul Wold wrote:
> This is to ensure it won't be included in DISTRO_FEATURES, we have
> considered it and it's not appropriate for the poky-tiny release.
> 
> Signed-off-by: Saul Wold <sgw@linux.intel.com>

Acked-by: Darren Hart <dvhart@linux.intel.com>

> ---
>   meta-yocto/conf/distro/poky-tiny.conf |    1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/meta-yocto/conf/distro/poky-tiny.conf 
> b/meta-yocto/conf/distro/poky-tiny.conf
> index 761844f..4ab488d 100644
> --- a/meta-yocto/conf/distro/poky-tiny.conf
> +++ b/meta-yocto/conf/distro/poky-tiny.conf
> @@ -86,6 +86,7 @@ DISTRO_FEATURES_USB = "usbhost"
>   #DISTRO_FEATURES_WIFI = "wifi"
>   # This is needed for DISTRO_FEATURES_BACKFILL
>   DISTRO_FEATURES_INITMAN = "tiny-init"
> +DISTRO_FEATURES_BACKFILL_CONSIDERED = "pulseaudio"
>    DISTRO_FEATURES = "${DISTRO_FEATURES_TINY} \
>                      ${DISTRO_FEATURES_NET} \
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

