Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A405AE01374
	for <poky@yoctoproject.org>; Thu, 19 Apr 2012 16:27:09 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 19 Apr 2012 16:27:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="134603030"
Received: from unknown (HELO envy.home) ([10.255.12.13])
	by orsmga002.jf.intel.com with ESMTP; 19 Apr 2012 16:27:09 -0700
Message-ID: <4F909F2C.9050006@linux.intel.com>
Date: Thu, 19 Apr 2012 16:26:36 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <1334873012.3028.3.camel@ted>
In-Reply-To: <1334873012.3028.3.camel@ted>
X-Enigmail-Version: 1.4
Cc: poky <poky@yoctoproject.org>
Subject: Re: [PATCH] poky-tiny: Drop now unneeded DISTRO_FEATURES_LIBC_TOOLCHAIN (after gettext fix)
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
X-List-Received-Date: Thu, 19 Apr 2012 23:27:09 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Please include a commit log which indicates the gettext fix at least so
people can find details on how this is now handled.

Content is fine (and way awesome btw):

Signed-off-by: Darren Hart <dvhart@linux.intel.com>


On 04/19/2012 03:03 PM, Richard Purdie wrote:
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
> diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
> index 327cc1e..8aa8383 100644
> --- a/meta-yocto/conf/distro/poky-tiny.conf
> +++ b/meta-yocto/conf/distro/poky-tiny.conf
> @@ -64,16 +64,6 @@ ASSUME_PROVIDED += "pkgconfig$"
>  # Comment out any of the lines below to disable them in the build
>  DISTRO_FEATURES_LIBC_TINY = "libc-libm libc-crypt"
>  
> -# Building meta-toolchain currently imposes some additional requirements:
> -# If you do not plan to build meta-toolchain, you can save ~461KB by
> -# commenting out the DISTRO_FEATURES_LIBC_TOOLCHAIN assignment
> -# gettext needs wchar, m4 needs spawn and locale, elfutils needs ftraverse
> -DISTRO_FEATURES_LIBC_TOOLCHAIN = "libc-posix-clang-wchar \
> -                                  libc-spawn libc-locale-code \
> -                                  libc-ftraverse libc-libm-big \
> -                                  libc-posix-regexp-glibc \
> -                                 "
> -
>  # Required for "who"
>  DISTRO_FEATURES_LIBC_MINIMAL = "libc-utmp libc-getlogin"
>  DISTRO_FEATURES_LIBC_REGEX = "libc-posix-regexp"
> @@ -83,7 +73,6 @@ DISTRO_FEATURES_LIBC = "${DISTRO_FEATURES_LIBC_TINY} \
>                          ${DISTRO_FEATURES_LIBC_MINIMAL} \
>                          ${DISTRO_FEATURES_LIBC_REGEX} \
>                          ${DISTRO_FEATURES_LIBC_NET} \
> -                        ${DISTRO_FEATURES_LIBC_TOOLCHAIN} \
>                         "
>  
>  # Comment out any of the lines below to disable them in the build
> 
> 


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

