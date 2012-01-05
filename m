Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E6F4E00303
	for <poky@yoctoproject.org>; Thu,  5 Jan 2012 12:15:06 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jan 2012 12:15:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="103942465"
Received: from unknown (HELO [10.255.13.127]) ([10.255.13.127])
	by fmsmga001.fm.intel.com with ESMTP; 05 Jan 2012 12:15:05 -0800
Message-ID: <4F0604C9.1070208@linux.intel.com>
Date: Thu, 05 Jan 2012 12:15:05 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Derek Buitenhuis <derek.buitenhuis@gmail.com>
References: <1325640237-17019-1-git-send-email-derek.buitenhuis@gmail.com>
In-Reply-To: <1325640237-17019-1-git-send-email-derek.buitenhuis@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/2] binutils-cross-canadian: Allow ld-is-gold
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
X-List-Received-Date: Thu, 05 Jan 2012 20:15:06 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/03/2012 05:23 PM, Derek Buitenhuis wrote:
> In order to actually generate a toolchain (with
> bitbake meta-toolchain) that supports gold, binutils-
> cross-canadian also needs to be built this way.
>
> Signed-off-by: Derek Buitenhuis<derek.buitenhuis@gmail.com>
> ---
>   .../binutils/binutils-cross-canadian.inc           |    3 ++-
>   1 files changed, 2 insertions(+), 1 deletions(-)
>
> diff --git a/meta/recipes-devtools/binutils/binutils-cross-canadian.inc b/meta/recipes-devtools/binutils/binutils-cross-canadian.inc
> index b1cee67..00648a6 100644
> --- a/meta/recipes-devtools/binutils/binutils-cross-canadian.inc
> +++ b/meta/recipes-devtools/binutils/binutils-cross-canadian.inc
> @@ -7,7 +7,8 @@ BPN = "binutils"
>   DEPENDS = "flex-native bison-native virtual/${HOST_PREFIX}gcc-crosssdk virtual/libc-nativesdk zlib-nativesdk gettext-nativesdk"
>   EXTRA_OECONF = "--with-sysroot=${SDKPATH}/sysroots/${TUNE_PKGARCH}${TARGET_VENDOR}-${TARGET_OS} \
>                   --program-prefix=${TARGET_PREFIX} \
> -                --disable-werror"
> +                --disable-werror \
> +                ${@base_contains('DISTRO_FEATURES', 'ld-is-gold', '--enable-gold=default', '', d)}"
>
>   do_install () {
>   	autotools_do_install

Merged into OE-Core

In the future for OE-Core (meta/*) changes please send them to 
openembedded-core@lists.openembedded.org

Thanks
	Sau!

