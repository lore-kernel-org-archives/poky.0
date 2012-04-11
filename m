Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B4DCE00596
	for <poky@yoctoproject.org>; Wed, 11 Apr 2012 10:22:46 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 11 Apr 2012 10:22:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="127824341"
Received: from unknown (HELO envy.home) ([10.255.12.43])
	by orsmga001.jf.intel.com with ESMTP; 11 Apr 2012 10:22:46 -0700
Message-ID: <4F85BDC1.2040605@linux.intel.com>
Date: Wed, 11 Apr 2012 10:22:09 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <cover.1334108211.git.sgw@linux.intel.com>
	<0acfd5f023d418e758882897395494fe0496e25e.1334108211.git.sgw@linux.intel.com>
In-Reply-To: <0acfd5f023d418e758882897395494fe0496e25e.1334108211.git.sgw@linux.intel.com>
X-Enigmail-Version: 1.4
Cc: poky@yoctoproject.org
Subject: Re: [meta-yocto CONSOLIDATED PULL (for RC3) 1/3] poky-tiny.conf: adjust eglibc options for poky-tiny
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
X-List-Received-Date: Wed, 11 Apr 2012 17:22:46 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 04/10/2012 06:37 PM, Saul Wold wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> Avoid errors for building meta-toolchain for poky-tiny
> 
> This Fixes Bug: [YOCTO #2259]
> 
> Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>

Please CC the maintainer.

> ---
>  meta-yocto/conf/distro/poky-tiny.conf |    6 ++++++
>  1 files changed, 6 insertions(+), 0 deletions(-)
> 
> diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
> index 395c6fb..58d64ec 100644
> --- a/meta-yocto/conf/distro/poky-tiny.conf
> +++ b/meta-yocto/conf/distro/poky-tiny.conf
> @@ -63,6 +63,12 @@ ASSUME_PROVIDED += "pkgconfig$"
>  # Reconfigure eglibc for a smaller installation
>  # Comment out any of the lines below to disable them in the build
>  DISTRO_FEATURES_LIBC_TINY = "libc-libm libc-crypt"
> +# for gettext
> +DISTRO_FEATURES_LIBC_TINY += "libc-posix-clang-wchar"
> +# for m4
> +DISTRO_FEATURES_LIBC_TINY += "libc-spawn libc-locale-code"
> +# for elfutils
> +DISTRO_FEATURES_LIBC_TINY += "libc-ftraverse"


Whoa, hold on. How much size did this add to the tiny libc? No patches
should be applied to tiny without indication of how much size they add.

Why is it necessary to bloat the target libc in order to build a
toolchain for it?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

