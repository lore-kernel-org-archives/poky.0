Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1CB4A4C803A5
	for <poky@yoctoproject.org>; Wed,  1 Dec 2010 22:55:42 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 01 Dec 2010 20:55:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,286,1288594800"; d="scan'208";a="683050480"
Received: from unknown (HELO [10.255.12.252]) ([10.255.12.252])
	by orsmga001.jf.intel.com with ESMTP; 01 Dec 2010 20:55:41 -0800
Message-ID: <4CF726CC.7020505@intel.com>
Date: Wed, 01 Dec 2010 20:55:40 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <1291257381-21280-1-git-send-email-aalonso@secretlab.ca>
	<1291257381-21280-2-git-send-email-aalonso@secretlab.ca>
In-Reply-To: <1291257381-21280-2-git-send-email-aalonso@secretlab.ca>
Subject: Re: [PATCH 2/2] xrandr: fix license checksum
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
X-List-Received-Date: Thu, 02 Dec 2010 04:55:42 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/01/2010 06:36 PM, Adrian Alonso wrote:
> * Fix FATAL: Licensing warning: LIC_FILES_CHKSUM does not match
> * Bump PR
>
Adrian,

Thanks for these patches, we already have this change queue as part of a 
consolidated request.  We hope to have it in master tomorrow sometime.

Sau!

> Signed-off-by: Adrian Alonso<aalonso@secretlab.ca>
> ---
>   meta/recipes-graphics/xorg-app/xrandr_1.3.4.bb |    4 ++--
>   1 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/meta/recipes-graphics/xorg-app/xrandr_1.3.4.bb b/meta/recipes-graphics/xorg-app/xrandr_1.3.4.bb
> index 8712ff6..7d2a678 100644
> --- a/meta/recipes-graphics/xorg-app/xrandr_1.3.4.bb
> +++ b/meta/recipes-graphics/xorg-app/xrandr_1.3.4.bb
> @@ -2,10 +2,10 @@ require xorg-app-common.inc
>
>   DESCRIPTION = "X Resize and Rotate extension command."
>   LICENSE= "BSD-X"
> -LIC_FILES_CHKSUM = "file://COPYING;md5=4c5c132d3690478179d78ec3bf064584"
> +LIC_FILES_CHKSUM = "file://COPYING;md5=fe1608bdb33cf8c62a4438f7d34679b3"
>   DEPENDS += "libxrandr libxrender"
>   PE = "1"
> -PR = "r0"
> +PR = "r1"
>
>   SRC_URI[md5sum] = "d6d20038257eba5178b523e10239d51c"
>   SRC_URI[sha256sum] = "5e4a2492e6cc51345aa571b95283c43c2771c4f444837dbce2699d62f76b4adb"


