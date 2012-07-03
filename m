Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF3C4E006B1
	for <poky@yoctoproject.org>; Tue,  3 Jul 2012 11:01:40 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 03 Jul 2012 11:01:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="188059775"
Received: from unknown (HELO [10.255.12.182]) ([10.255.12.182])
	by fmsmga002.fm.intel.com with ESMTP; 03 Jul 2012 11:01:39 -0700
Message-ID: <4FF33383.7060302@linux.intel.com>
Date: Tue, 03 Jul 2012 11:01:39 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Valentin Popa <valentin.popa@intel.com>
References: <1340887579-30748-1-git-send-email-valentin.popa@intel.com>
In-Reply-To: <1340887579-30748-1-git-send-email-valentin.popa@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] build-appliance-image: rename from self-hosted-image
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
X-List-Received-Date: Tue, 03 Jul 2012 18:01:41 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/28/2012 05:46 AM, Valentin Popa wrote:
> (-) rename it also in maintainers.inc
>
> [YOCTO #2636]
>
> Signed-off-by: Valentin Popa<valentin.popa@intel.com>
> ---
>   meta-yocto/conf/distro/include/maintainers.inc |    2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
> index b88fe2e..d60ee93 100644
> --- a/meta-yocto/conf/distro/include/maintainers.inc
> +++ b/meta-yocto/conf/distro/include/maintainers.inc
> @@ -577,7 +577,7 @@ RECIPE_MAINTAINER_pn-screen = "Valentin Popa<valentin.popa@intel.com>"
>   RECIPE_MAINTAINER_pn-screenshot = "Valentin Popa<valentin.popa@intel.com>"
>   RECIPE_MAINTAINER_pn-scrnsaverproto = "Laurentiu Palcu<laurentiu.palcu@intel.com>"
>   RECIPE_MAINTAINER_pn-sed = "Valentin Popa<valentin.popa@intel.com>"
> -RECIPE_MAINTAINER_pn-self-hosted-image = "Saul Wold<sgw@linux.intel.com>"
> +RECIPE_MAINTAINER_pn-build-appliance-image = "Saul Wold<sgw@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-setserial = "Valentin Popa<valentin.popa@intel.com>"
>   RECIPE_MAINTAINER_pn-settings-daemon = "Valentin Popa<valentin.popa@intel.com>"
>   RECIPE_MAINTAINER_pn-sgml-common = "Scott Garman<scott.a.garman@intel.com>"

Merged into Poky/Master

Thanks
	Sau!

