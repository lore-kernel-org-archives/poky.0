Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09CDFE00307
	for <poky@yoctoproject.org>; Fri,  6 Jan 2012 14:31:59 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 06 Jan 2012 14:31:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="93249167"
Received: from unknown (HELO [10.255.13.127]) ([10.255.13.127])
	by azsmga001.ch.intel.com with ESMTP; 06 Jan 2012 14:31:58 -0800
Message-ID: <4F07765E.6050001@linux.intel.com>
Date: Fri, 06 Jan 2012 14:31:58 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Derek Buitenhuis <derek.buitenhuis@gmail.com>
References: <1325640237-17019-1-git-send-email-derek.buitenhuis@gmail.com>
	<1325640237-17019-2-git-send-email-derek.buitenhuis@gmail.com>
In-Reply-To: <1325640237-17019-2-git-send-email-derek.buitenhuis@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 2/2] binutils: Allow plugins
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
X-List-Received-Date: Fri, 06 Jan 2012 22:32:00 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/03/2012 05:23 PM, Derek Buitenhuis wrote:
> Make sure it's possible to build binutils with
> plugin support.
>
> Signed-off-by: Derek Buitenhuis<derek.buitenhuis@gmail.com>
> ---
>   .../binutils/binutils-cross-canadian.inc           |    3 ++-
>   meta/recipes-devtools/binutils/binutils-cross.inc  |    3 ++-
>   2 files changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/meta/recipes-devtools/binutils/binutils-cross-canadian.inc b/meta/recipes-devtools/binutils/binutils-cross-canadian.inc
> index 00648a6..4f20ad7 100644
> --- a/meta/recipes-devtools/binutils/binutils-cross-canadian.inc
> +++ b/meta/recipes-devtools/binutils/binutils-cross-canadian.inc
> @@ -8,7 +8,8 @@ DEPENDS = "flex-native bison-native virtual/${HOST_PREFIX}gcc-crosssdk virtual/l
>   EXTRA_OECONF = "--with-sysroot=${SDKPATH}/sysroots/${TUNE_PKGARCH}${TARGET_VENDOR}-${TARGET_OS} \
>                   --program-prefix=${TARGET_PREFIX} \
>                   --disable-werror \
> -                ${@base_contains('DISTRO_FEATURES', 'ld-is-gold', '--enable-gold=default', '', d)}"
> +                ${@base_contains('DISTRO_FEATURES', 'ld-is-gold', '--enable-gold=default', '', d)} \
> +                ${@base_contains('DISTRO_FEATURES', 'binutils-plugins', '--enable-plugins', '', d)}"
>
>   do_install () {
>   	autotools_do_install
> diff --git a/meta/recipes-devtools/binutils/binutils-cross.inc b/meta/recipes-devtools/binutils/binutils-cross.inc
> index 80152a9..0af913d 100644
> --- a/meta/recipes-devtools/binutils/binutils-cross.inc
> +++ b/meta/recipes-devtools/binutils/binutils-cross.inc
> @@ -10,7 +10,8 @@ EXTRA_OECONF = "--with-sysroot=${STAGING_DIR_TARGET} \
>                   --disable-werror \
>                   --enable-poison-system-directories \
>                   ${@base_contains('DISTRO_FEATURES', 'ld-is-gold', '--enable-gold=default', '', d)} \
> -                ${@base_contains('DISTRO_FEATURES', 'multiarch', '--enable-64-bit-bfd', '', d)}"
> +                ${@base_contains('DISTRO_FEATURES', 'multiarch', '--enable-64-bit-bfd', '', d)} \
> +                ${@base_contains('DISTRO_FEATURES', 'binutils-plugins', '--enable-plugins', '', d)}"
>
>   do_install () {
>   	oe_runmake 'DESTDIR=${D}' install

I think that the DISTRO_FEATURE here is too much, you this be changed to 
be a PACKAGECONFIG instead?

Sau!

