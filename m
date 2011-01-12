Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 985FA4C81021
	for <poky@yoctoproject.org>; Wed, 12 Jan 2011 15:59:29 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 12 Jan 2011 13:59:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,314,1291622400"; d="scan'208";a="876983081"
Received: from unknown (HELO [10.255.14.15]) ([10.255.14.15])
	by fmsmga001.fm.intel.com with ESMTP; 12 Jan 2011 13:59:28 -0800
Message-ID: <4D2E2440.6050202@intel.com>
Date: Wed, 12 Jan 2011 13:59:28 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Koen Kooi <koen@dominion.thruhere.net>
References: <1294418164-5124-1-git-send-email-koen@openembedded.org>
In-Reply-To: <1294418164-5124-1-git-send-email-koen@openembedded.org>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] wpa-supplicant 0.7: fix GNU HASH QA issue
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
X-List-Received-Date: Wed, 12 Jan 2011 21:59:30 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/07/2011 08:36 AM, Koen Kooi wrote:
> From: Koen Kooi<koen@dominion.thruhere.net>
>
> The recipe was unsetting LDFLAGS, resulting in:
>
> NOTE: QA Issue: No GNU_HASH in the elf binary: '/OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/wpa-supplicant-0.7.3-r0/packages-split/wpa-supplicant/usr/sbin/wpa_supplicant'
>
> Signed-off-by: Koen Kooi<koen@dominion.thruhere.net>
> ---
>   .../wpa-supplicant/wpa-supplicant-0.7.inc          |    2 +-
>   .../wpa-supplicant/wpa-supplicant_0.7.3.bb         |    2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc
> index 78ce914..6eda3b1 100644
> --- a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc
> +++ b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc
> @@ -29,7 +29,7 @@ do_configure () {
>
>   export EXTRA_CFLAGS = "${CFLAGS}"
>   do_compile () {
> -	unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS
> +	unset CFLAGS CPPFLAGS CXXFLAGS
>   	oe_runmake
>   }
>
> diff --git a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bb b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bb
> index 2d7729c..e4ae019 100644
> --- a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bb
> +++ b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bb
> @@ -1,6 +1,6 @@
>   require wpa-supplicant-0.7.inc
>
> -PR = "r0"
> +PR = "r1"
>
>   SRC_URI[md5sum] = "f516f191384a9a546e3f5145c08addda"
>   SRC_URI[sha256sum] = "d0cd50caa85346ccc376dcda5ed3c258eef19a93b3cade39d25760118ad59443"
Both your WPA_Aupplicant change are pulled into master

Thanks for your help

	Sau!


