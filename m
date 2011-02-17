Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id D70E54C80A50
	for <poky@yoctoproject.org>; Thu, 17 Feb 2011 12:51:05 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 17 Feb 2011 10:51:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,181,1297065600"; d="scan'208";a="603820137"
Received: from doubt.jf.intel.com (HELO [10.7.199.151]) ([10.7.199.151])
	by orsmga002.jf.intel.com with ESMTP; 17 Feb 2011 10:51:03 -0800
Message-ID: <4D5D6E17.7010901@linux.intel.com>
Date: Thu, 17 Feb 2011 10:51:03 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Nitin A Kamble <nitin.a.kamble@intel.com>
References: <cover.1297919871.git.nitin.a.kamble@intel.com>
	<0c61dd51708e758877f50be7cd3e6589118749ad.1297919871.git.nitin.a.kamble@intel.com>
In-Reply-To: <0c61dd51708e758877f50be7cd3e6589118749ad.1297919871.git.nitin.a.kamble@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] perl-native: fix parallel build
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
X-List-Received-Date: Thu, 17 Feb 2011 18:51:06 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/16/2011 09:21 PM, Nitin A Kamble wrote:
> From: Nitin A Kamble<nitin.a.kamble@intel.com>
>
> perl native recipe was failing on 40-way system with the parallel build turned
> on. With this patch the parallel build on 40 way build system is not failing.
>
> Signed-off-by: Nitin A Kamble<nitin.a.kamble@intel.com>

Passed 31 clean/build cycles on the 40-way.

Tested-by: Darren Hart <dvhart@linux.intel.com>

> ---
>   .../perl/perl-5.12.2/parallel_build_fix.patch      |   18 ++++++++++++++++++
>   meta/recipes-devtools/perl/perl-native_5.12.2.bb   |    3 ++-
>   meta/recipes-devtools/perl/perl_5.12.2.bb          |    3 ++-
>   3 files changed, 22 insertions(+), 2 deletions(-)
>   create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/parallel_build_fix.patch
>
> diff --git a/meta/recipes-devtools/perl/perl-5.12.2/parallel_build_fix.patch b/meta/recipes-devtools/perl/perl-5.12.2/parallel_build_fix.patch
> new file mode 100644
> index 0000000..5a05dea
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-5.12.2/parallel_build_fix.patch
> @@ -0,0 +1,18 @@
> +This patch fixes the parralella make issue on a 40way build system
> +
> +Nitin A Kamble<nitin.a.kamble@intel.com>
> +2011-02-16
> +
> +Index: perl-5.12.2/Makefile.SH
> +===================================================================
> +--- perl-5.12.2.orig/Makefile.SH	2010-09-06 16:30:32.000000000 -0700
> ++++ perl-5.12.2/Makefile.SH	2011-02-16 16:21:30.744143773 -0800
> +@@ -198,6 +198,8 @@
> + $this_target: uni.data" ;;
> + 	Text/ParseWords) extra_dep="$extra_dep
> + $this_target: lib/auto/Scalar/Util.$dlext" ;;
> ++	POSIX) extra_dep="$extra_dep
> ++$this_target: lib/auto/Cwd/Cwd.$dlext" ;;
> +     esac
> + done
> +
> diff --git a/meta/recipes-devtools/perl/perl-native_5.12.2.bb b/meta/recipes-devtools/perl/perl-native_5.12.2.bb
> index 790eae2..5996494 100644
> --- a/meta/recipes-devtools/perl/perl-native_5.12.2.bb
> +++ b/meta/recipes-devtools/perl/perl-native_5.12.2.bb
> @@ -4,7 +4,7 @@ SECTION = "libs"
>   LICENSE = "Artistic|GPL"
>   LIC_FILES_CHKSUM = "file://Copying;md5=2b4c6ffbcfcbdee469f02565f253d81a \
>   		    file://Artistic;md5=f921793d03cc6d63ec4b15e9be8fd3f8"
> -PR = "r4"
> +PR = "r5"
>
>   LIC_FILES_CHKSUM = "file://Copying;md5=2b4c6ffbcfcbdee469f02565f253d81a \
>                       file://Artistic;md5=f921793d03cc6d63ec4b15e9be8fd3f8"
> @@ -12,6 +12,7 @@ LIC_FILES_CHKSUM = "file://Copying;md5=2b4c6ffbcfcbdee469f02565f253d81a \
>   SRC_URI = "http://ftp.funet.fi/pub/CPAN/src/perl-${PV}.tar.gz \
>              file://Configure-multilib.patch;patch=1 \
>              file://perl-configpm-switch.patch;patch=1 \
> +           file://parallel_build_fix.patch \
>              file://native-nopacklist.patch;patch=1 \
>              file://native-perlinc.patch;patch=1"
>
> diff --git a/meta/recipes-devtools/perl/perl_5.12.2.bb b/meta/recipes-devtools/perl/perl_5.12.2.bb
> index b27e20f..ce99986 100644
> --- a/meta/recipes-devtools/perl/perl_5.12.2.bb
> +++ b/meta/recipes-devtools/perl/perl_5.12.2.bb
> @@ -8,7 +8,7 @@ PRIORITY = "optional"
>   # We need gnugrep (for -I)
>   DEPENDS = "virtual/db perl-native-${PV} grep-native"
>   DEPENDS += "gdbm zlib"
> -PR = "r0"
> +PR = "r1"
>
>   # 5.10.1 has Module::Build built-in
>   PROVIDES += "libmodule-build-perl"
> @@ -18,6 +18,7 @@ PROVIDES += "libmodule-build-perl"
>
>   SRC_URI = "ftp://ftp.funet.fi/pub/CPAN/src/perl-${PV}.tar.gz \
>           file://Makefile.patch;patch=1 \
> +        file://parallel_build_fix.patch \
>           file://Makefile.SH.patch;patch=1 \
>           file://installperl.patch;patch=1 \
>           file://perl-dynloader.patch;patch=1 \


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

