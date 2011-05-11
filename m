Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 406334C80AE6
	for <poky@yoctoproject.org>; Wed, 11 May 2011 11:27:17 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 11 May 2011 09:27:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,353,1301900400"; 
   d="scan'208";a="364003"
Received: from unknown (HELO [10.255.12.71]) ([10.255.12.71])
	by fmsmga002.fm.intel.com with ESMTP; 11 May 2011 09:27:16 -0700
Message-ID: <4DCAB8F0.5090600@linux.intel.com>
Date: Wed, 11 May 2011 09:27:28 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Robert Yang <liezhi.yang@windriver.com>
References: <cover.1305120861.git.liezhi.yang@windriver.com>
	<9b97fab8dc9e2b4192592b67dd56e3321ecce29e.1305120861.git.liezhi.yang@windriver.com>
In-Reply-To: <9b97fab8dc9e2b4192592b67dd56e3321ecce29e.1305120861.git.liezhi.yang@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/2] Add the layer meta-skeleton
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
X-List-Received-Date: Wed, 11 May 2011 16:27:17 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 05/11/2011 06:41 AM, Robert Yang wrote:
> Add the layer meta-skeleton, it will be used to place the various
> canonical examples.
> 
> Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
> ---
>  meta-skeleton/conf/layer.conf |   10 ++++++++++
>  1 files changed, 10 insertions(+), 0 deletions(-)
>  create mode 100644 meta-skeleton/conf/layer.conf
> 
> diff --git a/meta-skeleton/conf/layer.conf b/meta-skeleton/conf/layer.conf
> new file mode 100644
> index 0000000..67be3bc
> --- /dev/null
> +++ b/meta-skeleton/conf/layer.conf
> @@ -0,0 +1,10 @@
> +# We have a conf and classes directory, add to BBPATH
> +BBPATH := "${BBPATH}:${LAYERDIR}"
> +
> +# We have a packages directory, add to BBFILES
> +BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb"
> +
> +BBFILE_COLLECTIONS += "skeleton"
> +BBFILE_PATTERN_skeleton := "^${LAYERDIR}/"
> +BBFILE_PRIORITY_skeleton = "6"

This should probably be very last priority?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

