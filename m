Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 144474C81264
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 19:34:35 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 27 Jan 2011 17:34:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,388,1291622400"; d="scan'208";a="881729968"
Received: from unknown (HELO [10.255.14.102]) ([10.255.14.102])
	by fmsmga001.fm.intel.com with ESMTP; 27 Jan 2011 17:34:33 -0800
Message-ID: <4D421D28.9070501@intel.com>
Date: Thu, 27 Jan 2011 17:34:32 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <b7da2f$q8ksno@fmsmga001.fm.intel.com>
In-Reply-To: <b7da2f$q8ksno@fmsmga001.fm.intel.com>
Subject: Re: [PATCH 3/5] bash: use /bin/bash as default shell when bash	is included
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
X-List-Received-Date: Fri, 28 Jan 2011 01:34:35 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/27/2011 03:39 AM, poky-bounces@yoctoproject.org wrote:
> From: Kevin Tian<kevin.tian@intel.com>
>
> though bash is included in LSB profile, it doesn't use update-alternative
> to take effect and thus it's still busybox behaving as /bin/sh.
>
> Signed-off-by: Kevin Tian<kevin.tian@intel.com>
> ---
>   meta/recipes-extended/bash/bash.inc       |    5 +++++
>   meta/recipes-extended/bash/bash_3.2.48.bb |    2 +-
>   meta/recipes-extended/bash/bash_4.1.bb    |    2 +-
>   3 files changed, 7 insertions(+), 2 deletions(-)
>
> diff --git a/meta/recipes-extended/bash/bash.inc b/meta/recipes-extended/bash/bash.inc
> index aa8cac8..a87b87f 100644
> --- a/meta/recipes-extended/bash/bash.inc
> +++ b/meta/recipes-extended/bash/bash.inc
> @@ -17,6 +17,11 @@ sbindir = "/sbin"
>   EXTRA_OECONF = "--enable-job-control"
>   export CC_FOR_BUILD = "${BUILD_CC}"
>
> +ALTERNATIVE_NAME = "sh"
> +ALTERNATIVE_PATH = "${base_bindir}/bash"
> +ALTERNATIVE_LINK = "${base_bindir}/sh"
> +ALTERNATIVE_PRIORITY = "100"
> +
>   do_configure () {
>   	gnu-configize
>   	oe_runconf
> diff --git a/meta/recipes-extended/bash/bash_3.2.48.bb b/meta/recipes-extended/bash/bash_3.2.48.bb
> index ee563d6..e5a3e36 100644
> --- a/meta/recipes-extended/bash/bash_3.2.48.bb
> +++ b/meta/recipes-extended/bash/bash_3.2.48.bb
> @@ -6,7 +6,7 @@ LICENSE = "GPLv2+"
>   LIC_FILES_CHKSUM = "file://COPYING;md5=fd5d9bcabd8ed5a54a01ce8d183d592a"
>   DEPENDS = "ncurses"
>
> -PR = "r6"
> +PR = "r7"
>
>   SRC_URI = "${GNU_MIRROR}/bash/bash-${PV}.tar.gz \
>              http://ftp.gnu.org/gnu/bash/bash-3.2-patches/bash32-049;apply=yes;striplevel=0 \
> diff --git a/meta/recipes-extended/bash/bash_4.1.bb b/meta/recipes-extended/bash/bash_4.1.bb
> index 6a558ed..cea4042 100644
> --- a/meta/recipes-extended/bash/bash_4.1.bb
> +++ b/meta/recipes-extended/bash/bash_4.1.bb
> @@ -1,6 +1,6 @@
>   require bash.inc
>
> -PR = "r0"
> +PR = "r1"
>
>   SRC_URI = "${GNU_MIRROR}/bash/${BPN}-${PV}.tar.gz;name=tarball \
>              http://ftp.gnu.org/gnu/bash/bash-4.1-patches/bash41-001;apply=yes;striplevel=0;name=patch001 \
Pulled into Master

Thanks
	Sau!

