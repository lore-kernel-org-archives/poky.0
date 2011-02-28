Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id A0D8B4C800A4
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 13:37:13 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 28 Feb 2011 11:37:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,242,1297065600"; d="scan'208";a="662266131"
Received: from unknown (HELO [10.255.12.96]) ([10.255.12.96])
	by fmsmga002.fm.intel.com with ESMTP; 28 Feb 2011 11:37:13 -0800
Message-ID: <4D6BF968.8090905@intel.com>
Date: Mon, 28 Feb 2011 11:37:12 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Dongxiao Xu <dongxiao.xu@intel.com>
References: <cover.1298882840.git.dongxiao.xu@intel.com>
	<eee6a4543ae8ad214bd7512afded93f3d6fff08e.1298882840.git.dongxiao.xu@intel.com>
In-Reply-To: <eee6a4543ae8ad214bd7512afded93f3d6fff08e.1298882840.git.dongxiao.xu@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 2/2] ncurses: Change ncurses patch SRC_URI location
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
X-List-Received-Date: Mon, 28 Feb 2011 19:37:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/28/2011 12:50 AM, Dongxiao Xu wrote:
> From: Dongxiao Xu<dongxiao.xu@intel.com>
>
> One of ncurses's patch has been removed from its original repo
> location, use autobuilder cache location instead.
>
> Comment out the original patch address instead of removing it
> since we may still need that address when upgrade the recipe later.
>
> This fixes [BUGID #709].
>
> Signed-off-by: Dongxiao Xu<dongxiao.xu@intel.com>
> ---
>   meta/recipes-core/ncurses/ncurses_5.7.bb |    5 +++--
>   1 files changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/meta/recipes-core/ncurses/ncurses_5.7.bb b/meta/recipes-core/ncurses/ncurses_5.7.bb
> index f767495..b01c333 100644
> --- a/meta/recipes-core/ncurses/ncurses_5.7.bb
> +++ b/meta/recipes-core/ncurses/ncurses_5.7.bb
> @@ -5,7 +5,7 @@ LIC_FILES_CHKSUM = "file://ncurses/base/version.c;beginline=1;endline=27;md5=cbc
>   SECTION = "libs"
>   PATCHDATE = "20100501"
>   PKGV = "${PV}+${PATCHDATE}"
> -PR = "r0"
> +PR = "r1"
>
>   DEPENDS = "ncurses-native"
>   DEPENDS_virtclass-native = ""
> @@ -15,7 +15,8 @@ inherit autotools binconfig
>   SRC_URI = "${GNU_MIRROR}/ncurses/ncurses-${PV}.tar.gz;name=tarball \
>           ftp://invisible-island.net/ncurses/5.7/ncurses-5.7-20100424-patch.sh.bz2;apply=yes;name=p20100424sh \
>   \
> -        ftp://invisible-island.net/ncurses/5.7/ncurses-5.7-${PATCHDATE}.patch.gz;name=p20100501 \
> +#        ftp://invisible-island.net/ncurses/5.7/ncurses-5.7-${PATCHDATE}.patch.gz;name=p20100501 \
> +        http://autobuilder.yoctoproject.org/sources/ncurses-5.7-${PATCHDATE}.patch.gz;name=p20100501 \
A couple of concerns with this, first the "#" in the list will not work 
with "\", there was a change recently that makes this not work.

We are using the autobuilder because the version of the patch we need is 
gone correct?  And the 20100424 does not have the fix we need and it's 
too late to change a core library.

Please fix the comment line.

Sau!

>           file://tic-hang.patch \
>           file://config.cache \
>   "


