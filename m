Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 32CEC4C80A49
	for <poky@yoctoproject.org>; Thu, 17 Feb 2011 12:50:21 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 17 Feb 2011 10:50:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,181,1297065600"; d="scan'208";a="603819818"
Received: from doubt.jf.intel.com (HELO [10.7.199.151]) ([10.7.199.151])
	by orsmga002.jf.intel.com with ESMTP; 17 Feb 2011 10:50:13 -0800
Message-ID: <4D5D6DE5.2080005@linux.intel.com>
Date: Thu, 17 Feb 2011 10:50:13 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Dongxiao Xu <dongxiao.xu@intel.com>
References: <cover.1297940034.git.dongxiao.xu@intel.com>
	<d0bea6b772b8b65b50fff81836a25df8977488c9.1297940034.git.dongxiao.xu@intel.com>
In-Reply-To: <d0bea6b772b8b65b50fff81836a25df8977488c9.1297940034.git.dongxiao.xu@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] gstreamer: reenable PARALLEL_MAKE
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
X-List-Received-Date: Thu, 17 Feb 2011 18:50:21 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/17/2011 02:55 AM, Dongxiao Xu wrote:
> From: Dongxiao Xu<dongxiao.xu@intel.com>
>
> Signed-off-by: Dongxiao Xu<dongxiao.xu@intel.com>
> ---
>   .../gstreamer/gstreamer_0.10.31.bb                 |    2 +-
>   1 files changed, 1 insertions(+), 1 deletions(-)
>
> diff --git a/meta/recipes-multimedia/gstreamer/gstreamer_0.10.31.bb b/meta/recipes-multimedia/gstreamer/gstreamer_0.10.31.bb
> index e7b00ad..c919b18 100644
> --- a/meta/recipes-multimedia/gstreamer/gstreamer_0.10.31.bb
> +++ b/meta/recipes-multimedia/gstreamer/gstreamer_0.10.31.bb
> @@ -27,7 +27,7 @@ EXTRA_OECONF = "--disable-docs-build --disable-dependency-tracking --with-check=
>   #	mv ${WORKDIR}/gstregistrybinary.[ch] ${S}/gst/
>   #}
>
> -PARALLEL_MAKE = ""
> +#PARALLEL_MAKE = ""

Shouldn't we remove this rather than comment it out? Leaving it in 
tempts developers to tweak it - which we don't want them to do as it 
will toy with the global settings.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

