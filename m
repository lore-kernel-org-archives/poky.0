Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4A6854C81264
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 19:34:42 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 27 Jan 2011 17:34:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,388,1291622400"; d="scan'208";a="881730000"
Received: from unknown (HELO [10.255.14.102]) ([10.255.14.102])
	by fmsmga001.fm.intel.com with ESMTP; 27 Jan 2011 17:34:40 -0800
Message-ID: <4D421D30.5000005@intel.com>
Date: Thu, 27 Jan 2011 17:34:40 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <b7da2f$q8kso0@fmsmga001.fm.intel.com>
In-Reply-To: <b7da2f$q8kso0@fmsmga001.fm.intel.com>
Subject: Re: [PATCH 5/5] task-poky-sdk: add 'file' and 'ldd'
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
X-List-Received-Date: Fri, 28 Jan 2011 01:34:42 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/27/2011 03:39 AM, poky-bounces@yoctoproject.org wrote:
> From: Kevin Tian<kevin.tian@intel.com>
>
> these two are useful in the development environment, and also required
> by two LTP test cases (ld and ldd).
>
> Signed-off-by: Kevin Tian<kevin.tian@intel.com>
> ---
>   meta/recipes-core/tasks/task-poky-sdk.bb |    4 +++-
>   1 files changed, 3 insertions(+), 1 deletions(-)
>
> diff --git a/meta/recipes-core/tasks/task-poky-sdk.bb b/meta/recipes-core/tasks/task-poky-sdk.bb
> index 758cc2e..8d5455a 100644
> --- a/meta/recipes-core/tasks/task-poky-sdk.bb
> +++ b/meta/recipes-core/tasks/task-poky-sdk.bb
> @@ -7,7 +7,7 @@ LICENSE = "MIT"
>   LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
>                       file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
>   DEPENDS = "task-poky"
> -PR = "r6"
> +PR = "r7"
>
>   ALLOW_EMPTY = "1"
>   #PACKAGEFUNCS =+ 'generate_sdk_pkgs'
> @@ -43,6 +43,8 @@ RDEPENDS_task-poky-sdk = "\
>       quilt \
>       less \
>       distcc \
> +    ldd \
> +    file \
>       tcl"
>
>   #python generate_sdk_pkgs () {
Pulled into Master

Thanks
	Sau!

