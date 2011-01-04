Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id C7FE74C80050
	for <poky@yoctoproject.org>; Tue,  4 Jan 2011 13:56:00 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 04 Jan 2011 11:56:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,274,1291622400"; d="scan'208";a="874404619"
Received: from unknown (HELO [10.255.14.6]) ([10.255.14.6])
	by fmsmga001.fm.intel.com with ESMTP; 04 Jan 2011 11:56:00 -0800
Message-ID: <4D237B27.6040701@linux.intel.com>
Date: Tue, 04 Jan 2011 11:55:19 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Zhai Edwin <edwin.zhai@intel.com>
References: <cover.1294148490.git.edwin.zhai@intel.com>
	<377902145104994aab4b69c1239a6a907f946c7c.1294148490.git.edwin.zhai@intel.com>
In-Reply-To: <377902145104994aab4b69c1239a6a907f946c7c.1294148490.git.edwin.zhai@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 2/7] apr: Update to 1.4.2
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
X-List-Received-Date: Tue, 04 Jan 2011 19:56:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/04/2011 05:50 AM, Zhai Edwin wrote:
> Add buildconf_fix.patch of removing new libtool detection method to avoid config
> failure.  Handled build/libtool.m4&  apr_rules.mk after configure to take place
> of "top_builddir" by "apr_builddir", as these files would be reused by apr-util.
>
Edwin,

Is there a reason that this change can not be implemented as a patch?

I note that buildconf script already does make a libtool.m4 fixup 
similar to what you are doing.

I also notice that there is both a top_blddir and top_builddir, I wonder 
if the top_blddir should really be patched to be top_builddir?

Please investigate this further and re-submit this change.

Sau!

> Signed-off-by: Zhai Edwin<edwin.zhai@intel.com>
> ---
>   meta/recipes-support/apr/apr/buildconf_fix.patch   |   25 ++++++++++++++++++++
>   meta/recipes-support/apr/apr/cleanup.patch         |    9 +++----
>   .../apr/{apr_1.3.3.bb =>  apr_1.4.2.bb}             |   23 ++++++++++++++----
>   3 files changed, 47 insertions(+), 10 deletions(-)
>   create mode 100644 meta/recipes-support/apr/apr/buildconf_fix.patch
>   rename meta/recipes-support/apr/{apr_1.3.3.bb =>  apr_1.4.2.bb} (60%)
>
> diff --git a/meta/recipes-support/apr/apr/buildconf_fix.patch b/meta/recipes-support/apr/apr/buildconf_fix.patch
> new file mode 100644
> index 0000000..641340b
> --- /dev/null
> +++ b/meta/recipes-support/apr/apr/buildconf_fix.patch
> @@ -0,0 +1,25 @@
> +Remove the new libtool detection method to avoid config failure. Poky's libtool
> +has different format for "aclocaldir", and there is no elegant parsing method,
> +so fall back to old detection.
> +
> +Signed-off-by: Zhai Edwin<edwin.zhai@intel.com>
> +
> +Index: apr-1.4.2/buildconf
> +===================================================================
> +--- apr-1.4.2.orig/buildconf	2009-11-13 06:19:49.000000000 +0800
> ++++ apr-1.4.2/buildconf	2010-11-29 14:39:19.000000000 +0800
> +@@ -50,14 +50,6 @@
> +
> + if [ -f libtool.m4 ]; then
> +    ltfile=`pwd`/libtool.m4
> +-elif grep all_pkgmacro_files $libtoolize>  /dev/null; then
> +-    # libtool 2.x
> +-   aclocal_dir=`sed -n '/^aclocaldir=/{s/.*=//;p;q;}'<  $libtoolize`
> +-   ltfiles=`sed -n '/^all_pkgmacro_files=/{s/.*=//;;s/"//;p;q;}'<  $libtoolize`
> +-   for f in $ltfiles; do
> +-       test -f "$aclocal_dir/$f"&&  cp "$aclocal_dir/$f" build
> +-   done
> +-   ltfile=$aclocal_dir/libtool.m4
> + else
> +    ltfindcmd="`sed -n \"/=[^\\\`]/p;/libtool_m4=/{s/.*=/echo /p;q;}\" \
> +<  $libtoolize`"
> diff --git a/meta/recipes-support/apr/apr/cleanup.patch b/meta/recipes-support/apr/apr/cleanup.patch
> index fd74826..47f1c42 100644
> --- a/meta/recipes-support/apr/apr/cleanup.patch
> +++ b/meta/recipes-support/apr/apr/cleanup.patch
> @@ -1,7 +1,7 @@
> -Index: apr-1.3.3/build/buildcheck.sh
> +Index: apr-1.4.2/build/buildcheck.sh
>   ===================================================================
> ---- apr-1.3.3.orig/build/buildcheck.sh	2009-01-15 13:32:33.000000000 +0000
> -+++ apr-1.3.3/build/buildcheck.sh	2009-01-15 13:33:06.000000000 +0000
> +--- apr-1.4.2.orig/build/buildcheck.sh	2009-11-13 08:27:16.000000000 +0800
> ++++ apr-1.4.2/build/buildcheck.sh	2010-11-26 15:44:00.000000000 +0800
>   @@ -32,35 +32,4 @@
>    echo "buildconf: autoconf version $ac_version (ok)"
>    fi
> @@ -12,7 +12,7 @@ Index: apr-1.3.3/build/buildcheck.sh
>   -# output is multiline from 1.5 onwards
>   -
>   -# Require libtool 1.4 or newer
> --libtool=`build/PrintPath glibtool libtool libtool15 libtool14`
> +-libtool=`build/PrintPath glibtool1 glibtool libtool libtool15 libtool14`
>   -lt_pversion=`$libtool --version 2>/dev/null|sed -e 's/([^)]*)//g;s/^[^0-9]*//;s/[- ].*//g;q'`
>   -if test -z "$lt_pversion"; then
>   -echo "buildconf: libtool not found."
> @@ -39,4 +39,3 @@ Index: apr-1.3.3/build/buildcheck.sh
>   -
>   -exit 1
>   +exit 0
> -\ No newline at end of file
> diff --git a/meta/recipes-support/apr/apr_1.3.3.bb b/meta/recipes-support/apr/apr_1.4.2.bb
> similarity index 60%
> rename from meta/recipes-support/apr/apr_1.3.3.bb
> rename to meta/recipes-support/apr/apr_1.4.2.bb
> index 26cc01f..fe983eb 100644
> --- a/meta/recipes-support/apr/apr_1.3.3.bb
> +++ b/meta/recipes-support/apr/apr_1.4.2.bb
> @@ -1,16 +1,21 @@
>   DESCRIPTION = "Apache Portable Runtime (APR) library"
> +HOMEPAGE = "http://apr.apache.org/"
>   SECTION = "libs"
> +
>   LICENSE = "Apache License, Version 2.0"
> -LIC_FILES_CHKSUM = "file://LICENSE;md5=0c35ff3c4c83b89d2f076e315caac28b"
> -PR = "r5"
> +LIC_FILES_CHKSUM = "file://LICENSE;md5=0c35ff3c4c83b89d2f076e315caac28b \
> +                    file://include/apr_lib.h;endline=17;md5=ee42fa7575dc40580a9e01c1b75fae96"
> +
> +PR = "r0"
>
>   SRC_URI = "${APACHE_MIRROR}/apr/${P}.tar.bz2 \
>              file://configure_fixes.patch;patch=1 \
>   	   file://cleanup.patch;patch=1 \
> -           file://configfix.patch;patch=1"
> +           file://configfix.patch;patch=1 \
> +           file://buildconf_fix.patch;patch=1"
>
> -SRC_URI[md5sum] = "2090c21dee4f0eb1512604127dcd158f"
> -SRC_URI[sha256sum] = "d95f3b78366c86317043304864bb08cb836312c87ea7d142a4c02154e7e0dd37"
> +SRC_URI[md5sum] = "4b00e8f70c067893d075577962656b35"
> +SRC_URI[sha256sum] = "2017ca700694d09d2b0b21dd7c4d195e43a48735aac88526160c6195ee8f5391"
>
>   inherit autotools lib_package binconfig
>
> @@ -21,6 +26,14 @@ do_configure_prepend() {
>   	./buildconf
>   }
>
> +#for some reason, build/libtool.m4 handled by buildconf still be overwritten
> +#when autoconf, so handle it again.
> +do_configure_append() {
> +	cd ${S}
> +	sed -i -e 's/LIBTOOL=\(.*\)top_build/LIBTOOL=\1apr_build/' build/libtool.m4
> +	sed -i -e 's/LIBTOOL=\(.*\)top_build/LIBTOOL=\1apr_build/' build/apr_rules.mk
> +}
> +
>   SYSROOT_PREPROCESS_FUNCS += "apr_sysroot_preprocess"
>
>   apr_sysroot_preprocess () {


