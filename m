Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 36CA24C81267
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 19:34:02 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 27 Jan 2011 17:34:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,388,1291622400"; d="scan'208";a="881729823"
Received: from unknown (HELO [10.255.14.102]) ([10.255.14.102])
	by fmsmga001.fm.intel.com with ESMTP; 27 Jan 2011 17:34:01 -0800
Message-ID: <4D421D08.8030308@intel.com>
Date: Thu, 27 Jan 2011 17:34:00 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1296008816.git.ke.yu@intel.com>
	<e7938fd0e70645d5005b4ccc08ffe5f4821ee6a2.1296008816.git.ke.yu@intel.com>
In-Reply-To: <e7938fd0e70645d5005b4ccc08ffe5f4821ee6a2.1296008816.git.ke.yu@intel.com>
Subject: Re: [PATCH 1/2] iputils: upgrade to s20101006
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
X-List-Received-Date: Fri, 28 Jan 2011 01:34:02 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/25/2011 06:29 PM, poky-bounces@yoctoproject.org wrote:
> From: Yu Ke<ke.yu@intel.com>
>
> - change the src_uri md5/sha256 checksum
> - remove the CVE patch, since it is already in upstream
>
> Signed-off-by: Yu Ke<ke.yu@intel.com>
> ---
>   .../iputils/files/debian/CVE-2010-2529.diff        |   22 --------------------
>   .../{iputils_s20100418.bb =>  iputils_s20101006.bb} |    5 +--
>   2 files changed, 2 insertions(+), 25 deletions(-)
>   delete mode 100644 meta/recipes-extended/iputils/files/debian/CVE-2010-2529.diff
>   rename meta/recipes-extended/iputils/{iputils_s20100418.bb =>  iputils_s20101006.bb} (94%)
>
> diff --git a/meta/recipes-extended/iputils/files/debian/CVE-2010-2529.diff b/meta/recipes-extended/iputils/files/debian/CVE-2010-2529.diff
> deleted file mode 100644
> index 98aae0d..0000000
> --- a/meta/recipes-extended/iputils/files/debian/CVE-2010-2529.diff
> +++ /dev/null
> @@ -1,22 +0,0 @@
> -Index: trunk/ping.c
> -===================================================================
> ---- trunk.orig/ping.c	2010-07-23 21:26:53.000000000 -0700
> -+++ trunk/ping.c	2010-07-23 21:28:27.000000000 -0700
> -@@ -1059,7 +1059,7 @@
> - 				i = j;
> - 			i -= IPOPT_MINOFF;
> - 			if (i<= 0)
> --				continue;
> -+				break;
> - 			if (i == old_rrlen
> - 			&&  !strncmp((char *)cp, old_rr, i)
> - 			&&  !(options&  F_FLOOD)) {
> -@@ -1096,7 +1096,7 @@
> - 				i = j;
> - 			i -= 5;
> - 			if (i<= 0)
> --				continue;
> -+				break;
> - 			flags = *++cp;
> - 			printf("\nTS: ");
> - 			cp++;
> diff --git a/meta/recipes-extended/iputils/iputils_s20100418.bb b/meta/recipes-extended/iputils/iputils_s20101006.bb
> similarity index 94%
> rename from meta/recipes-extended/iputils/iputils_s20100418.bb
> rename to meta/recipes-extended/iputils/iputils_s20101006.bb
> index 2b2d76a..0a42017 100644
> --- a/meta/recipes-extended/iputils/iputils_s20100418.bb
> +++ b/meta/recipes-extended/iputils/iputils_s20101006.bb
> @@ -21,11 +21,10 @@ SRC_URI = "http://www.skbuff.net/iputils/${PN}-${PV}.tar.bz2 \
>              file://debian/use_gethostbyname2.diff \
>              file://debian/targets.diff \
>              file://debian/fix-arping-timeouts.diff \
> -           file://debian/CVE-2010-2529.diff \
>             "
>
> -SRC_URI[md5sum] = "df6b0062118cdc5c62e3c810f831e976"
> -SRC_URI[sha256sum] = "d0e8cbe6ce6a484ffb81697425b3b933746882f6f1521ac71c5c88971cee7684"
> +SRC_URI[md5sum] = "a36c25e9ec17e48be514dc0485e7376c"
> +SRC_URI[sha256sum] = "fd3af46c80ebb99607c2ca1f2a3608b6fe828e25bbec6e54f2afd25f6ddb6ee7"
>
>   # man is not compiled here, since it requires docbook-utils-native
>   # which is not available in poky
Pulled into Master

Thanks
	Sau!

