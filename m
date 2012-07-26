Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A26FE002AA
	for <poky@yoctoproject.org>; Thu, 26 Jul 2012 11:59:46 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 26 Jul 2012 11:59:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="177969304"
Received: from unknown (HELO [10.255.12.157]) ([10.255.12.157])
	by orsmga002.jf.intel.com with ESMTP; 26 Jul 2012 11:59:46 -0700
Message-ID: <501193A1.5020208@linux.intel.com>
Date: Thu, 26 Jul 2012 11:59:45 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
References: <1343137420-30809-1-git-send-email-cristian.iorga@intel.com>
In-Reply-To: <1343137420-30809-1-git-send-email-cristian.iorga@intel.com>
Subject: Re: [OE-core] [PATCH] Connectivity and multimedia manual packages
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
X-List-Received-Date: Thu, 26 Jul 2012 18:59:46 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/24/2012 06:43 AM, Cristian Iorga wrote:
> Upstream updates checked.
>
> Signed-off-by: Cristian Iorga <cristian.iorga@intel.com>
> ---
>   .../conf/distro/include/upstream_tracking.inc      |   28 ++++++++++----------
>   1 file changed, 14 insertions(+), 14 deletions(-)
>
> diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
> index 98e7d16..ba52d02 100644
> --- a/meta-yocto/conf/distro/include/upstream_tracking.inc
> +++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
> @@ -187,7 +187,7 @@ RECIPE_UPSTREAM_VERSION_pn-eds-tools = "git"
>   RECIPE_UPSTREAM_VERSION_pn-eee-acpi-scripts = "1.1.12+9d4cdedca25b396405f8587f9c4fbf8229e041c2"
>   RECIPE_UPSTREAM_VERSION_pn-eggdbus = "0.6"
>   RECIPE_UPSTREAM_DATE_pn-eggdbus = "Nov 01, 2009"
> -CHECK_DATE_pn-eggdbus = "Jul 06, 2012"
> +CHECK_DATE_pn-eggdbus = "Jul 24, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-eglibc = "git:16540"
>   CHECK_DATE_pn-eglibc = "Jan 01, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-elfutils="0.148"
> @@ -217,7 +217,7 @@ RECIPE_UPSTREAM_VERSION_pn-fixesproto = "5.0"
>   RECIPE_UPSTREAM_DATE_pn-fixesproto = "Mar 8, 2011"
>   RECIPE_UPSTREAM_VERSION_pn-flac="1.2.1"
>   RECIPE_UPSTREAM_DATE_pn-flac= "Sep 8, 2007"
> -CHECK_DATE_pn-flac = "Jul 06, 2012"
> +CHECK_DATE_pn-flac = "Jul 24, 2012"
>   RECIPE_UPSTREAM_DATE_pn-flac="Sep 16, 2007"
>   RECIPE_UPSTREAM_VERSION_pn-flex = "2.5.35"
>   RECIPE_UPSTREAM_DATE_pn-flex = "Feb 02, 2008"
> @@ -345,7 +345,7 @@ RECIPE_UPSTREAM_DATE_pn-iptables = "Apr 28, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-iputils="s20100418"
>   RECIPE_UPSTREAM_VERSION_pn-irda-utils = "0.9.18"
>   RECIPE_UPSTREAM_DATE_pn-irda-utils="Jul 10, 2006"
> -CHECK_DATE_pn-irda-utils = "Jul 06, 2012"
> +CHECK_DATE_pn-irda-utils = "Jul 24, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-iso-codes = "3.16"
>   RECIPE_UPSTREAM_VERSION_pn-jpeg = "8c"
>   CHECK_DATE_pn-jpeg = "Dec 24, 2011"
> @@ -448,7 +448,7 @@ CHECK_DATE_pn-libgsmd = "Jul 06, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-libgtkstylus = "0.5"
>   RECIPE_UPSTREAM_VERSION_pn-libical = "0.48"
>   RECIPE_UPSTREAM_DATE_pn-libical ="Dec 13, 2011"
> -CHECK_DATE_pn-libical = "Jul 06, 2012"
> +CHECK_DATE_pn-libical = "Jul 24, 2012"
>   RECIPE_UPSTREAM_DATE_pn-libical = "Dec 13, 2011"
>   RECIPE_UPSTREAM_VERSION_pn-libice = "1.0.6"
>   RECIPE_UPSTREAM_DATE_pn-libice = "Aug 01, 2009"
> @@ -486,7 +486,7 @@ RECIPE_UPSTREAM_VERSION_pn-liboil = "0.3.17"
>   RECIPE_UPSTREAM_DATE_pn-liboil = "Feb 01, 2010"
>   RECIPE_UPSTREAM_VERSION_pn-libomxil = "0.9.3"
>   RECIPE_UPSTREAM_DATE_pn-libomxil = "May 20, 2011"
> -CHECK_DATE_pn-libomxil = "Jul 06, 2012"
> +CHECK_DATE_pn-libomxil = "Jul 24, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-libopensync-plugin-evolution2 = "0.39"
>   RECIPE_UPSTREAM_VERSION_pn-libopensync = "0.39"
>   RECIPE_UPSTREAM_DATE_pn-libowl-av = "Dec 01, 2008"
> @@ -499,9 +499,9 @@ RECIPE_UPSTREAM_VERSION_pn-libpcap="1.2.0"
>   RECIPE_UPSTREAM_DATE_pn-libpcap="Jul 24, 2011"
>   RECIPE_UPSTREAM_VERSION_pn-libpciaccess = "0.13.1"
>   RECIPE_UPSTREAM_DATE_pn-libpciaccess = "Apr 09, 2012"
> -RECIPE_UPSTREAM_VERSION_pn-libpcre = "8.30"
> -RECIPE_UPSTREAM_DATE_pn-libpcre = "Mar 01, 2012"
> -CHECK_DATE_pn-libpcre = "Jul 06, 2012"
> +RECIPE_UPSTREAM_VERSION_pn-libpcre = "8.31"
> +RECIPE_UPSTREAM_DATE_pn-libpcre = "Jul 23, 2012"
> +CHECK_DATE_pn-libpcre = "Jul 24, 2012"
>   RECIPE_NO_UPDATE_REASON_pn-libpng = "1.4.3 and later changes the API and breaks libmatchbox. Sticking with the 1.2.x series instead"
>   RECIPE_UPSTREAM_VERSION_pn-libpng = "1.5.11"
>   RECIPE_UPSTREAM_DATE_pn-libpng = "Jun 14, 2012"
> @@ -514,7 +514,7 @@ RECIPE_UPSTREAM_VERSION_pn-librsvg = "2.32.1"
>   RECIPE_UPSTREAM_DATE_pn-librsvg = "Nov 13, 2010"
>   RECIPE_UPSTREAM_VERSION_pn-libsamplerate0 = "0.1.8"
>   RECIPE_UPSTREAM_DATE_pn-libsamplerate0 = "Aug 15, 2011"
> -CHECK_DATE_pn-libsamplerate0 = "Jul 06, 2012"
> +CHECK_DATE_pn-libsamplerate0 = "Jul 24, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-libsdl = "1.2.15"
>   CHECK_DATE_pn-libsdl = "Mar 14, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-libsm = "1.1.1"
> @@ -531,7 +531,7 @@ RECIPE_UPSTREAM_VERSION_pn-libtheora = "1.2.0"
>   RECIPE_UPSTREAM_VERSION_pn-libtimedate-perl = "1.20"
>   RECIPE_UPSTREAM_VERSION_pn-libtirpc = "0.2.2"
>   RECIPE_UPSTREAM_DATE_pn-libtirpc = "May 02, 2011"
> -CHECK_DATE_pn-libtirpc = "Jul 06, 2012"
> +CHECK_DATE_pn-libtirpc = "Jul 24, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-libtool="2.4.2"
>   CHECK_DATE_pn-libtool = "Nov 28, 2011"
>   RECIPE_UPSTREAM_VERSION_pn-libunique = "2.91.4"
> @@ -671,7 +671,7 @@ RECIPE_UPSTREAM_VERSION_pn-mdadm = "3.2.5"
>   RECIPE_UPSTREAM_DATE_pn-mdadm = "May 18, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-menu-cache = "0.3.3"
>   RECIPE_UPSTREAM_DATE_pn-menu-cache = "May 20, 2012"
> -CHECK_DATE_pn-minicom = "Jul 06, 2012"
> +CHECK_DATE_pn-minicom = "Jul 24, 2012"
>   RECIPE_UPSTREAM_DATE_pn-mesa-dri="Jun 17, 2010"
>   RECIPE_UPSTREAM_VERSION_pn-meta-ide-support = "check"
>   RECIPE_UPSTREAM_VERSION_pn-metacity = "2.30.3"
> @@ -826,7 +826,7 @@ RECIPE_UPSTREAM_DATE_pn-quicky = "Jun 18, 2008"
>   RECIPE_UPSTREAM_VERSION_pn-quilt="0.60"
>   RECIPE_UPSTREAM_VERSION_pn-quota = "4.00"
>   RECIPE_UPSTREAM_DATE_pn-quota = "Aug 17, 2011"
> -CHECK_DATE_pn-quota = "Jul 06, 2012"
> +CHECK_DATE_pn-quota = "Jul 24, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-randrproto = "1.3.2"
>   RECIPE_UPSTREAM_DATE_pn-randrproto = "Oct 29, 2010"
>   RECIPE_UPSTREAM_VERSION_pn-readline = "6.2"
> @@ -841,7 +841,7 @@ RECIPE_UPSTREAM_VERSION_pn-resourceproto = "1.2.0"
>   RECIPE_UPSTREAM_DATE_pn-resourceproto = "May 27, 2011"
>   RECIPE_UPSTREAM_VERSION_pn-rpcbind = "0.2.0"
>   RECIPE_UPSTREAM_DATE_pn-rpcbind = "May 29, 2009"
> -CHECK_DATE_pn-rpcbind = "Jul 06, 2012"
> +CHECK_DATE_pn-rpcbind = "Jul 24, 2012"
>   RECIPE_UPSTREAM_DATE_pn-rpcbind = "May 01, 2009"
>   RECIPE_UPSTREAM_VERSION_pn-rpm = "5.1.10"
>   RECIPE_UPSTREAM_DATE_pn-rpm = "Jan 01, 2010"
> @@ -996,7 +996,7 @@ RECIPE_UPSTREAM_DATE_pn-which = "Aug 01, 2008"
>   CHECK_DATE_pn-which = "Nov 22, 2011"
>   RECIPE_UPSTREAM_VERSION_pn-wireless-tools = "29"
>   RECIPE_UPSTREAM_DATE_pn-wireless-tools="Sep 18, 2007"
> -CHECK_DATE_pn-wireless-tools = "Jul 06, 2012"
> +CHECK_DATE_pn-wireless-tools = "Jul 24, 2012"
>   RECIPE_UPSTREAM_DATE_pn-wpa-supplicant="Sep 07, 2010"
>   RECIPE_UPSTREAM_VERSION_pn-wv = "1.2.1"
>   RECIPE_UPSTREAM_DATE_pn-x11-common="Sep 22, 2008"
>

Merged into Poky/Master

Thanks
	Sau!

