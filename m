Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D070DE0146E
	for <poky@yoctoproject.org>; Mon, 10 Sep 2012 11:41:50 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 Sep 2012 11:41:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,398,1344236400"; d="scan'208";a="191263371"
Received: from unknown (HELO envy.home) ([10.7.199.60])
	by orsmga001.jf.intel.com with ESMTP; 10 Sep 2012 11:41:49 -0700
Message-ID: <504E3453.1000404@linux.intel.com>
Date: Mon, 10 Sep 2012 11:41:23 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120828 Thunderbird/15.0
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <1347063122-29824-1-git-send-email-sgw@linux.intel.com>
In-Reply-To: <1347063122-29824-1-git-send-email-sgw@linux.intel.com>
X-Enigmail-Version: 1.4.4
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] poky-tiny: Enable x86-64 to build eglibc correctly
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
X-List-Received-Date: Mon, 10 Sep 2012 18:41:50 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 09/07/2012 05:12 PM, Saul Wold wrote:
> There is bug in the eglibc configure scripts that prevent a
> x86-64 from configuring correctly and finding the smaller
> library fucntions.
> 
> This has been reported to the eglibc community via the issues ML
> 
> Cc: Darren Hart <dvhart@linux.intel.com>
> 
> [YOCTO #2943]
> 
> Signed-off-by: Saul Wold <sgw@linux.intel.com>
> ---
>  meta-yocto/conf/distro/poky-tiny.conf |    1 +
>  1 files changed, 1 insertions(+), 0 deletions(-)
> 
> diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
> index f3cc874..3196fa0 100644
> --- a/meta-yocto/conf/distro/poky-tiny.conf
> +++ b/meta-yocto/conf/distro/poky-tiny.conf
> @@ -63,6 +63,7 @@ ASSUME_PROVIDED += "pkgconfig$"
>  # Reconfigure eglibc for a smaller installation
>  # Comment out any of the lines below to disable them in the build
>  DISTRO_FEATURES_LIBC_TINY = "libc-libm libc-crypt"

This needs a comment as to why it's needed, preferably citing the eglibc
bug if one has been opened.

> +DISTRO_FEATURES_LIBC_TINY_append_x86-64 = " libc-libm-big"
>  
>  # Required for "who"
>  DISTRO_FEATURES_LIBC_MINIMAL = "libc-utmp libc-getlogin"
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

