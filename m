Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7F4AE00348
	for <poky@yoctoproject.org>; Tue, 13 Nov 2012 08:12:28 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 13 Nov 2012 08:12:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,767,1344236400"; d="scan'208";a="167823480"
Received: from unknown (HELO [10.255.12.71]) ([10.255.12.71])
	by AZSMGA002.ch.intel.com with ESMTP; 13 Nov 2012 08:12:27 -0800
Message-ID: <50A2716B.2020300@linux.intel.com>
Date: Tue, 13 Nov 2012 08:12:27 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120911 Thunderbird/15.0.1
MIME-Version: 1.0
To: "Iorga, Cristian" <cristian.iorga@intel.com>
References: <1352400125-5264-1-git-send-email-cristian.iorga@intel.com>
	<969F26A8BAB325438E7EB80D3C3134FB161B566D@IRSMSX102.ger.corp.intel.com>
In-Reply-To: <969F26A8BAB325438E7EB80D3C3134FB161B566D@IRSMSX102.ger.corp.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] upstream_tracking.inc: update according to YP 1.4
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 13 Nov 2012 16:12:29 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/08/2012 10:45 AM, Iorga, Cristian wrote:
> Also my comments:
>
> Comments about manual Pus for maintainer Cristian Iorga:
>
> 1. db cannot be upgraded due to compatibility issues; Who can enlighten me into this one?
I am not sure at this point, but you can check the newer version against 
the tools that depend on db.

> 2. libpcap versioning seems wrong libpcap 1.3.0 = tcpdump 4.3.0?? Cand someone clarify this one for me?

> 3. gssdp 0.13.1 is unstable/beta one. 0.12.2. is stable one.
right so you should upgrade to 0.12.2 and mark the 
RECIPE_NO_UPDATE_REASON_pn-gssdp = "0.13.1 is unstable version"

> 4. situation unclear with tremor; there is a newer svn head than what YP has. However, I don't know the release date or if it is stable. Please help.
>
Can you determine what's changed between our snapshot (18221) and 
current?  Bug fixes, new features, ...???

That will help determine if we want to update, they don't seem to have 
branches or tages for release points.

Hope the above helps

Sau!

> Regards,
> Cristian
>
> -----Original Message-----
> From: Iorga, Cristian
> Sent: Thursday, November 08, 2012 8:42 PM
> To: poky@yoctoproject.org
> Cc: Iorga, Cristian
> Subject: [PATCH] upstream_tracking.inc: update according to YP 1.4
>
> Updated upstream_tracking.inc with manually checked packages.
>
> Signed-off-by: Cristian Iorga <cristian.iorga@intel.com>
> ---
>   .../conf/distro/include/upstream_tracking.inc      |   61 +++++++++++---------
>   1 file changed, 35 insertions(+), 26 deletions(-)
>
> diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
> index fd422cf..a6af9dd 100644
> --- a/meta-yocto/conf/distro/include/upstream_tracking.inc
> +++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
> @@ -27,7 +27,12 @@ RECIPE_UPSTREAM_DATE_pn-acpid = "Apr 22, 2009"
>   CHECK_DATE_pn-acpid = "Aug 27, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-adt-installer = "1.1"
>   CHECK_DATE_pn-adt-installer = "Sep 11, 2012"
> -RECIPE_UPSTREAM_DATE_pn-alsa-utils="Jan 25, 2012"
> +RECIPE_UPSTREAM_VERSION_pn-alsa-utils = "1.0.26"
> +RECIPE_UPSTREAM_DATE_pn-alsa-utils = "Jan 25, 2012"
> +CHECK_DATE_pn-alsa-utils = "Nov 08, 2012"
> +RECIPE_UPSTREAM_VERSION_pn-alsa-lib = "1.0.26"
> +RECIPE_UPSTREAM_DATE_pn-alsa-lib = "Jan 25, 2012"
> +CHECK_DATE_pn-alsa-lib = "Nov 08, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-apmd = "3.2.2-14"
>   RECIPE_UPSTREAM_DATE_pn-apmd = "Jul 01, 2009"
>   CHECK_DATE_pn-apmd = "Aug 27, 2012"
> @@ -165,7 +170,7 @@ RECIPE_UPSTREAM_DATE_pn-curl = "Jul 27, 2012"
>   CHECK_DATE_pn-curl = "Aug 28, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-cwautomacros = "20110201"
>   RECIPE_UPSTREAM_DATE_pn-cwautomacros = "Feb 01, 2011"
> -CHECK_DATE_pn-cwautomacros = "Aug 28, 2012"
> +CHECK_DATE_pn-cwautomacros = "Nov 08, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-damageproto = "1.2.1"
>   RECIPE_UPSTREAM_DATE_pn-damageproto = "Oct 29, 2010"
>   CHECK_DATE_pn-damageproto = "Aug 28, 2012"
> @@ -262,7 +267,7 @@ RECIPE_UPSTREAM_VERSION_pn-fixesproto = "5.0"
>   RECIPE_UPSTREAM_DATE_pn-fixesproto = "Mar 8, 2011"
>   CHECK_DATE_pn-fixesproto = "Aug 28, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-flac="1.2.1"
> -CHECK_DATE_pn-flac = "Aug 28, 2012"
> +CHECK_DATE_pn-flac = "Nov 08, 2012"
>   RECIPE_UPSTREAM_DATE_pn-flac="Sep 16, 2007"
>   RECIPE_UPSTREAM_VERSION_pn-flex = "2.5.37"
>   RECIPE_UPSTREAM_DATE_pn-flex = "Aug 08, 2012"
> @@ -367,9 +372,9 @@ CHECK_DATE_pn-groff = "Aug 29, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-grub = "0.97"
>   RECIPE_UPSTREAM_DATE_pn-grub = "Dec 01, 2005"
>   RECIPE_NO_UPDATE_REASON_pn-grub="grub2 is a different thing"
> -RECIPE_UPSTREAM_VERSION_pn-gssdp = "0.10.0"
> -RECIPE_UPSTREAM_DATE_pn-gssdp="Apr 07, 2011"
> -CHECK_DATE_pn-gssdp = "Aug 29, 2012"
> +RECIPE_UPSTREAM_VERSION_pn-gssdp = "0.12.2"
> +RECIPE_UPSTREAM_DATE_pn-gssdp="Aug 19, 2012"
> +CHECK_DATE_pn-gssdp = "Nov 08, 2012"
>   RECIPE_UPSTREAM_DATE_pn-gst-meta-base="n/a"
>   RECIPE_NO_UPDATE_REASON_pn-gst-plugins-base = "not compatible with gst-fluendo 0.10.x"
>   RECIPE_UPSTREAM_VERSION_pn-gst-plugins-base = "0.11.90"
> @@ -400,10 +405,13 @@ RECIPE_UPSTREAM_DATE_pn-guile = "Jul 07, 2012"
>   CHECK_DATE_pn-guile = "Aug 29, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-gupnp-av = "0.10.3"
>   RECIPE_UPSTREAM_DATE_pn-gupnp-av= "Aug 19, 2012"
> -CHECK_DATE_pn-gupnp-av = "Aug 29, 2012"
> +CHECK_DATE_pn-gupnp-av = "Nov 08, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-gupnp = "0.18.4"
>   RECIPE_UPSTREAM_DATE_pn-gupnp= "Aug 19, 2012"
>   CHECK_DATE_pn-gupnp = "Aug 29, 2012"
> +RECIPE_UPSTREAM_VERSION_pn-gupnp-tools = "0.8.4"
> +RECIPE_UPSTREAM_DATE_pn-gupnp-tools = "Dec 12, 2011"
> +CHECK_DATE_pn-gupnp-tools  = "Nov 08, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-gypsy="0.9"
>   RECIPE_UPSTREAM_DATE_pn-gypsy="Aug 28, 2012"
>   CHECK_DATE_pn-gypsy = "Aug 29, 2012"
> @@ -455,7 +463,7 @@ RECIPE_UPSTREAM_DATE_pn-iputils = "Oct 06, 2010"
>   CHECK_DATE_pn-iputils = "Aug 29, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-irda-utils = "0.9.18"
>   RECIPE_UPSTREAM_DATE_pn-irda-utils="Jul 10, 2006"
> -CHECK_DATE_pn-irda-utils = "Aug 29, 2012"
> +CHECK_DATE_pn-irda-utils = "Nov 08, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-iso-codes = "3.38"
>   RECIPE_UPSTREAM_DATE_pn-iso-codes = "Aug 08, 2012"
>   CHECK_DATE_pn-iso-codes = "Aug 29, 2012"
> @@ -500,8 +508,8 @@ RECIPE_UPSTREAM_VERSION_pn-less = "444"
>   CHECK_DATE_pn-less = "Aug 29, 2012"
>   RECIPE_UPSTREAM_DATE_pn-less = "Jun 9, 2011"
>   RECIPE_UPSTREAM_VERSION_pn-liba52="0.7.4"
> -CHECK_DATE_pn-liba52 = "Aug 29, 2012"
>   RECIPE_UPSTREAM_DATE_pn-liba52="Jul 27, 2002"
> +CHECK_DATE_pn-liba52 = "Nov 08, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-libacpi = "0.2"
>   RECIPE_UPSTREAM_DATE_pn-libacpi = "unknown"
>   CHECK_DATE_pn-libacpi = "Aug 29, 2012"
> @@ -615,7 +623,7 @@ RECIPE_UPSTREAM_DATE_pn-libgtkstylus = "Jun 1, 2012"
>   CHECK_DATE_pn-libgtkstylus = "Aug 30, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-libical = "0.48"
>   RECIPE_UPSTREAM_DATE_pn-libical ="Dec 13, 2011"
> -CHECK_DATE_pn-libical = "Aug 30, 2012"
> +CHECK_DATE_pn-libical = "Nov 08, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-libice = "1.0.8"
>   RECIPE_UPSTREAM_DATE_pn-libice = "Mar 02, 2012"
>   CHECK_DATE_pn-libice = "Aug 30, 2012"
> @@ -624,7 +632,7 @@ RECIPE_UPSTREAM_DATE_pn-libiconv = "Aug 07, 2011"
>   CHECK_DATE_pn-libiconv = "Aug 30, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-libid3tag="0.15.1b"
>   RECIPE_UPSTREAM_DATE_pn-libid3tag="Feb 18, 2004"
> -CHECK_DATE_pn-libid3tag = "Aug 30, 2012"
> +CHECK_DATE_pn-libid3tag = "Nov 08, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-libidn = "1.25"
>   RECIPE_UPSTREAM_DATE_pn-libidn = "May 23, 2012"
>   CHECK_DATE_pn-libidn = "Aug 30, 2012"
> @@ -669,7 +677,7 @@ RECIPE_UPSTREAM_DATE_pn-liboil = "Feb 01, 2010"
>   CHECK_DATE_pn-liboil = "Aug 30, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-libomxil = "0.9.3"
>   RECIPE_UPSTREAM_DATE_pn-libomxil = "May 20, 2011"
> -CHECK_DATE_pn-libomxil = "Aug 30, 2012"
> +CHECK_DATE_pn-libomxil = "Nov 08, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-libopensync-plugin-evolution2 = "0.39"
>   RECIPE_UPSTREAM_DATE_pn-libopensyc-plugin-evolution2 = "Aug 26, 2011"
>   CHECK_DATE_pn-libopensync-plugin-evolution2 = "Aug 30, 2012"
> @@ -685,7 +693,7 @@ CHECK_DATE_pn-libpam = "Aug 30, 2012"
>   RECIPE_UPSTREAM_DATE_pn-libpam = "Oct 25, 2011"
>   RECIPE_UPSTREAM_VERSION_pn-libpcap="4.3.0"
>   RECIPE_UPSTREAM_DATE_pn-libpcap="Jun 12, 2012"
> -CHECK_DATE_pn-libpcap = "Aug 30, 2012"
> +CHECK_DATE_pn-libpcap = "Nov 08, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-libpciaccess = "0.13.1"
>   RECIPE_UPSTREAM_DATE_pn-libpciaccess = "Apr 09, 2012"
>   CHECK_DATE_pn-libpciaccess = "Aug 30, 2012"
> @@ -696,8 +704,9 @@ RECIPE_NO_UPDATE_REASON_pn-libpng = "1.4.3 and later changes the API and breaks  RECIPE_UPSTREAM_VERSION_pn-libpng = "1.5.11"
>   RECIPE_UPSTREAM_DATE_pn-libpng = "Jun 14, 2012"
>   CHECK_DATE_pn-libpng = "Jul 05, 2012"
> -RECIPE_UPSTREAM_VERSION_pn-libproxy="0.4.7"
> -CHECK_DATE_pn-libproxy = "Aug 30, 2012"
> +RECIPE_UPSTREAM_VERSION_pn-libproxy = "0.4.10"
> +RECIPE_UPSTREAM_DATE_pn-libproxy = "Oct 15, 2012"
> +CHECK_DATE_pn-libproxy = "Nov 08, 2012"
>   RECIPE_UPSTREAM_DATE_pn-libproxy="Jun 01, 2011"
>   RECIPE_UPSTREAM_DATE_pn-libpthread-stubs = "Oct 14, 2009"
>   RECIPE_UPSTREAM_VERSION_pn-libpthread-stubs = "0.3"
> @@ -707,7 +716,7 @@ RECIPE_UPSTREAM_DATE_pn-librsvg = "Aug 19, 2012"
>   CHECK_DATE_pn-librsvg = "Aug 30, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-libsamplerate0 = "0.1.8"
>   RECIPE_UPSTREAM_DATE_pn-libsamplerate0 = "Aug 15, 2011"
> -CHECK_DATE_pn-libsamplerate0 = "Aug 30, 2012"
> +CHECK_DATE_pn-libsamplerate0 = "Nov 08, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-libsdl = "1.2.15"
>   CHECK_DATE_pn-libsdl = "Mar 14, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-libsm = "1.2.1"
> @@ -732,7 +741,7 @@ CHECK_DATE_pn-libtheora = "Aug 30, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-libtimedate-perl = "1.20"
>   RECIPE_UPSTREAM_VERSION_pn-libtirpc = "0.2.2"
>   RECIPE_UPSTREAM_DATE_pn-libtirpc = "May 02, 2011"
> -CHECK_DATE_pn-libtirpc = "Aug 30, 2012"
> +CHECK_DATE_pn-libtirpc = "Nov 08, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-libtool="2.4.2"
>   CHECK_DATE_pn-libtool = "Aug 30, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-libunique = "2.91.4"
> @@ -905,7 +914,7 @@ RECIPE_UPSTREAM_DATE_pn-loudmouth = "Mar 27, 2012"
>   CHECK_DATE_pn-loudmouth = "Aug 31, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-lrzsz="0.12.20"
>   RECIPE_UPSTREAM_DATE_pn-lrzsz="Dec 31, 1998"
> -CHECK_DATE_pn-lrzsz = "Aug 31, 2012"
> +CHECK_DATE_pn-lrzsz = "Nov 08, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-lsb = "4.1"
>   CHECK_DATE_pn-lsb = "Sep 5, 2012"
>   RECIPE_UPSTREAM_DATE_pn-lsb = "Jan 04, 2001"
> @@ -951,7 +960,7 @@ RECIPE_UPSTREAM_DATE_pn-menu-cache = "May 20, 2012"
>   CHECK_DATE_pn-menu-cache = "Aug 31, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-minicom = "2.6.1"
>   RECIPE_UPSTREAM_DATE_pn-minicom = "Mar 29, 2012"
> -CHECK_DATE_pn-minicom = "Aug 31, 2012"
> +CHECK_DATE_pn-minicom = "Nov 08, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-mesa-dri = "8.0.3"
>   RECIPE_UPSTREAM_DATE_pn-mesa-dri="May 18, 2012"
>   CHECK_DATE_pn-mesa-dri = "Aug 31, 2012"
> @@ -1175,7 +1184,7 @@ RECIPE_UPSTREAM_DATE_pn-quilt = "Feb 29, 2012"
>   CHECK_DATE_pn-quilt = "Sep 03, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-quota = "4.00"
>   RECIPE_UPSTREAM_DATE_pn-quota = "Aug 17, 2011"
> -CHECK_DATE_pn-quota = "Sep 03, 2012"
> +CHECK_DATE_pn-quota = "Nov 08, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-randrproto = "1.4.0"
>   RECIPE_UPSTREAM_DATE_pn-randrproto = "Jul 12, 2012"
>   CHECK_DATE_pn-randrproto = "Sep 03, 2012"
> @@ -1196,7 +1205,7 @@ RECIPE_UPSTREAM_DATE_pn-resourceproto = "May 27, 2011"
>   CHECK_DATE_pn-resourceproto = "Sep 03, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-rpcbind = "0.2.0"
>   RECIPE_UPSTREAM_DATE_pn-rpcbind = "May 29, 2009"
> -CHECK_DATE_pn-rpcbind = "Sep 03, 2012"
> +CHECK_DATE_pn-rpcbind = "Nov 08, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-rpm = "5.4.10"
>   RECIPE_UPSTREAM_DATE_pn-rpm = "Jul 06, 2012"
>   CHECK_DATE_pn-rpm = "Sep 03, 2012"
> @@ -1293,9 +1302,9 @@ RECIPE_UPSTREAM_VERSION_pn-sysvinit = "2.86"
>   RECIPE_UPSTREAM_DATE_pn-sysvinit = "Oct 10, 2006"
>   CHECK_DATE_pn-sysvinit = "Sep 03, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-table = "d42a44938699ee30a998fc42bc149aebf69389db"
> -RECIPE_UPSTREAM_VERSION_pn-taglib = "1.7.2"
> -RECIPE_UPSTREAM_DATE_pn-taglib = "Apr 19, 2010"
> -CHECK_DATE_pn-taglib = "Sep 03, 2012"
> +RECIPE_UPSTREAM_VERSION_pn-taglib = "1.8"
> +RECIPE_UPSTREAM_DATE_pn-taglib = "Sep 05, 2012"
> +CHECK_DATE_pn-taglib = "Nov 08, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-talloc = "2.0.7"
>   RECIPE_UPSTREAM_DATE_pn-talloc = "Sep 16, 2011"
>   CHECK_DATE_pn-talloc = "Sep 03, 2012"
> @@ -1344,7 +1353,7 @@ RECIPE_UPSTREAM_DATE_pn-trapproto = "Jan 01, 2006"
>   CHECK_DATE_pn-trapproto = "Sep 03, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-tremor="20120122"
>   RECIPE_UPSTREAM_DATE_pn-tremor="Jan 22, 2012"
> -CHECK_DATE_pn-tremor = "Sep 03, 2012"
> +CHECK_DATE_pn-tremor = "Nov 08, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-tslib = "1.0"
>   RECIPE_UPSTREAM_DATE_pn-tslib ="Sep 09, 2006"
>   CHECK_DATE_pn-tslib = "Sep 03, 2012"
> @@ -1406,7 +1415,7 @@ RECIPE_UPSTREAM_DATE_pn-which = "Aug 01, 2008"
>   CHECK_DATE_pn-which = "Sep 03, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-wireless-tools = "29"
>   RECIPE_UPSTREAM_DATE_pn-wireless-tools="Sep 18, 2007"
> -CHECK_DATE_pn-wireless-tools = "Sep 03, 2012"
> +CHECK_DATE_pn-wireless-tools = "Nov 08, 2012"
>   RECIPE_UPSTREAM_DATE_pn-wpa-supplicant="Sep 07, 2010"
>   RECIPE_UPSTREAM_VERSION_pn-wpa-supplicant = "1.0"
>   CHECK_DATE_pn-wpa-supplicant = "Sep 03, 2012"
> --
> 1.7.10.4
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
>

