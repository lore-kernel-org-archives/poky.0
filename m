Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 725EFE0032E
	for <poky@yoctoproject.org>; Tue, 13 Nov 2012 07:44:43 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 13 Nov 2012 07:44:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,767,1344236400"; d="scan'208";a="246373624"
Received: from unknown (HELO [10.255.12.71]) ([10.255.12.71])
	by fmsmga001.fm.intel.com with ESMTP; 13 Nov 2012 07:44:42 -0800
Message-ID: <50A26AEA.4060602@linux.intel.com>
Date: Tue, 13 Nov 2012 07:44:42 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120911 Thunderbird/15.0.1
MIME-Version: 1.0
To: Bogdan Marinescu <bogdan.a.marinescu@intel.com>
References: <1352390847-32403-1-git-send-email-bogdan.a.marinescu@intel.com>
In-Reply-To: <1352390847-32403-1-git-send-email-bogdan.a.marinescu@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] upstream_tracking.inc: update for 1.4 planning
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
X-List-Received-Date: Tue, 13 Nov 2012 15:44:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/08/2012 08:07 AM, Bogdan Marinescu wrote:
> Updated upstream_tracking.inc with the corresponding manually
> checked packages.
> ---
>   .../conf/distro/include/upstream_tracking.inc      |   36 ++++++++++----------
>   1 file changed, 18 insertions(+), 18 deletions(-)
>
Merged into Poky Master

Thanks
	Sau!

> diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
> index fd422cf..e71cc6a 100644
> --- a/meta-yocto/conf/distro/include/upstream_tracking.inc
> +++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
> @@ -190,7 +190,7 @@ RECIPE_UPSTREAM_VERSION_pn-directfb = "1.6.1"
>   CHECK_DATE_pn-directfb = "Aug 28, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-distcc="3.1.1"
>   RECIPE_UPSTREAM_DATE_pn-distcc="Dec 10, 2008"
> -CHECK_DATE_pn-distcc="Aug 28, 2012"
> +CHECK_DATE_pn-distcc="Nov 8, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-dmxproto = "2.3.1"
>   RECIPE_UPSTREAM_DATE_pn-dmxproto = "Jan 5, 2011"
>   CHECK_DATE_pn-dmxproto = "Aug 28, 2012"
> @@ -266,7 +266,7 @@ CHECK_DATE_pn-flac = "Aug 28, 2012"
>   RECIPE_UPSTREAM_DATE_pn-flac="Sep 16, 2007"
>   RECIPE_UPSTREAM_VERSION_pn-flex = "2.5.37"
>   RECIPE_UPSTREAM_DATE_pn-flex = "Aug 08, 2012"
> -CHECK_DATE_pn-flex = "Aug 28, 2012"
> +CHECK_DATE_pn-flex = "Nov 8, 2012"
>   RECIPE_UPSTREAM_DATE_pn-font-alias = "Oct 01, 2009"
>   RECIPE_UPSTREAM_VERSION_pn-fontcacheproto = "0.1.3"
>   RECIPE_UPSTREAM_DATE_pn-fontcacheproto = "Oct 01, 2009"
> @@ -320,16 +320,16 @@ CHECK_DATE_pn-gdbm = "Aug 29, 2012"
>   RECIPE_UPSTREAM_DATE_pn-gdk-pixbuf-csource-native = "May 01, 2010"
>   RECIPE_UPSTREAM_VERSION_pn-genext2fs = "1.4.1"
>   RECIPE_UPSTREAM_DATE_pn-genext2fs = "Apr 01, 2007"
> -CHECK_DATE_pn-genext2fs = "Aug 29, 2012"
> +CHECK_DATE_pn-genext2fs = "Nov 8, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-gettext = "0.18.1.1"
>   RECIPE_UPSTREAM_DATE_pn-gettext = "Jun 06, 2010"
>   CHECK_DATE_pn-gettext = "Aug 29, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-ghostscript = "9.06"
>   RECIPE_UPSTREAM_DATE_pn-ghostscript = "Aug 8, 2012"
>   CHECK_DATE_pn-ghostscript = "Aug 29, 2012"
> -RECIPE_UPSTREAM_VERION_pn-git = "1.7.12"
> -RECIPE_UPSTREAM_DATE_pn-git = "Aug 20, 2012"
> -CHECK_DATE_pn-git = "Aug 29, 2012"
> +RECIPE_UPSTREAM_VERION_pn-git = "1.8.0"
> +RECIPE_UPSTREAM_DATE_pn-git = "unknown"
> +CHECK_DATE_pn-git = "Nov 8, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-glew = "1.9.0"
>   RECIPE_UPSTREAM_DATE_pn-glew = "Jun 08, 2012"
>   CHECK_DATE_pn-glew = "Aug 29, 2012"
> @@ -443,7 +443,7 @@ CHECK_DATE_pn-insserv = "Aug 29, 2012"
>   RECIPE_UPSTREAM_DATE_pn-insserv = "unknown"
>   RECIPE_UPSTREAM_VERSION_pn-intltool="0.50.2"
>   RECIPE_UPSTREAM_DATE_pn-intltool = "Feb 26, 2012"
> -CHECK_DATE_pn-intltool = "Aug 29, 2012"
> +CHECK_DATE_pn-intltool = "Nov 8, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-iproute2 = "3.5.1"
>   RECIPE_UPSTREAM_DATE_pn-iproute2 = "Aug 13, 2012"
>   CHECK_DATE_pn-iproute2 = "Aug 29, 2012"
> @@ -492,7 +492,7 @@ RECIPE_UPSTREAM_VERSION_pn-lame = "3.99.5"
>   RECIPE_UPSTREAM_DATE_pn-lame = "Feb 28, 2012"
>   CHECK_DATE_pn-lame = "Aug 29, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-latencytop = "0.5"
> -CHECK_DATE_pn-latencytop = "Aug 29, 2011"
> +CHECK_DATE_pn-latencytop = "Nov 8, 2012"
>   RECIPE_UPSTREAM_DATE_pn-latencytop = "Apr 28, 2009"
>   RECIPE_UPSTREAM_VERSION_pn-leafpad = "0.8.18.1"
>   RECIPE_UPSTREAM_DATE_pn-leafpad = "Dec 01, 2010"
> @@ -640,9 +640,9 @@ RECIPE_UPSTREAM_DATE_pn-libmad = "Apr 04, 2004"
>   RECIPE_UPSTREAM_VERSION_pn-libmatchbox = "1.9"
>   RECIPE_UPSTREAM_DATE_pn-libmatchbox = "Aug 01, 2006"
>   CHECK_DATE_pn-libmatchbox = "Aug 30, 2012"
> -RECIPE_UPSTREAM_VERSION_pn-libmpc="0.9"
> +RECIPE_UPSTREAM_VERSION_pn-libmpc="1.0.1"
>   RECIPE_UPSTREAM_DATE_pn-libmpc = "unknown"
> -CHECK_DATE_pn-libmpc = "Jan 25, 2011"
> +CHECK_DATE_pn-libmpc = "Nov 8, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-libmusicbrainz="5.0.1"
>   RECIPE_UPSTREAM_DATE_pn-libmusicbrainz="unknown"
>   CHECK_DATE_pn-libmusicbrainz = "Aug 30, 2012"
> @@ -691,7 +691,7 @@ RECIPE_UPSTREAM_DATE_pn-libpciaccess = "Apr 09, 2012"
>   CHECK_DATE_pn-libpciaccess = "Aug 30, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-libpcre = "8.31"
>   RECIPE_UPSTREAM_DATE_pn-libpcre = "Jul 23, 2012"
> -CHECK_DATE_pn-libpcre = "Aug 30, 2012"
> +CHECK_DATE_pn-libpcre = "Nov 8, 2012"
>   RECIPE_NO_UPDATE_REASON_pn-libpng = "1.4.3 and later changes the API and breaks libmatchbox. Sticking with the 1.2.x series instead"
>   RECIPE_UPSTREAM_VERSION_pn-libpng = "1.5.11"
>   RECIPE_UPSTREAM_DATE_pn-libpng = "Jun 14, 2012"
> @@ -985,7 +985,7 @@ CHECK_DATE_pn-mpeg2dec = "Aug 31, 2012"
>   RECIPE_NO_UPDATE_REASON_pn-mpeg2dec = "Why are we currently at 0.4.1?"
>   RECIPE_UPSTREAM_VERSION_pn-mpfr="3.1.1"
>   RECIPE_UPSTREAM_DATE_pn-mpfr = "Jul 04, 2012"
> -CHECK_DATE_pn-mpfr = "Aug 31, 2012"
> +CHECK_DATE_pn-mpfr = "Nov 8, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-msynctool = "0.38"
>   RECIPE_UPSTREAM_DATE_pn-msynctool = "Nov 11, 2008"
>   CHECK_DATE_pn-msynctool = "Aug 31, 2012"
> @@ -1049,7 +1049,7 @@ RECIPE_UPSTREAM_DATE_pn-opkg_nogpg = "Feb 01, 2010"
>   CHECK_DATE_pn-opkg_nogpg = "Aug 31, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-oprofile = "0.9.8"
>   RECIPE_UPSTREAM_DATE_pn-oprofile = "Aug 27, 2011"
> -CHECK_DATE_pn-oprofile = "Aug 31, 2012"
> +CHECK_DATE_pn-oprofile = "Nov 8, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-oprofileui = "0.0+git0+82ecf8c6b53b84f80682a8312f9defa83a95f2a3"
>   CHECK_DATE_pn-oprofileui = "Aug 31, 2011"
>   RECIPE_UPSTREAM_DATE_pn-oprofileui = "Nov 14, 2011"
> @@ -1112,8 +1112,8 @@ RECIPE_UPSTREAM_VERSION_pn-portmap = "6.0"
>   RECIPE_UPSTREAM_DATE_pn-portmap = "May 01, 2007"
>   CHECK_DATE_pn-portmap = "Aug 31, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-postinsts="1.0"
> -RECIPE_UPSTREAM_VERSION_pn-powertop = "1.97"
> -CHECK_DATE_pn-powertop = "Aug 31, 2012"
> +RECIPE_UPSTREAM_VERSION_pn-powertop = "2.1"
> +CHECK_DATE_pn-powertop = "Nov 8, 2012"
>   RECIPE_NO_UPDATE_REASON_pn-powertop = "Do not upgrade to version 1.97 since it's a beta release of the comming PowerTOP 2.0"
>   RECIPE_UPSTREAM_DATE_pn-powertop = "Jan 5, 2011"
>   RECIPE_UPSTREAM_VERSION_pn-ppp-dialin = "check"
> @@ -1149,7 +1149,7 @@ RECIPE_UPSTREAM_VERSION_pn-python-pycurl = "7.19.0"
>   CHECK_DATE_pn-python-pycurl = "Aug 31, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-python-scons = "2.2.0"
>   RECIPE_UPSTREAM_DATE_pn-python-scons = "Aug 05, 2012"
> -CHECK_DATE_pn-python-scons = "Sep 11, 2012"
> +CHECK_DATE_pn-python-scons = "Nov 8, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-python="3.2.3"
>   RECIPE_UPSTREAM_DATE_pn-python = "Apr 10, 2012"
>   CHECK_DATE_pn-python = "Aug 31, 2012"
> @@ -1266,7 +1266,7 @@ RECIPE_UPSTREAM_VERSION_pn-stat = "3.3"
>   CHECK_DATE_pn-stat = "Dec 30, 2011"
>   RECIPE_UPSTREAM_VERSION_pn-strace = "4.7"
>   RECIPE_UPSTREAM_DATE_pn-strace = "May 02, 2012"
> -CHECK_DATE_pn-strace = "Sep 03, 2012"
> +CHECK_DATE_pn-strace = "Nov 8, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-subversion = "1.7.6"
>   RECIPE_UPSTREAM_DATE_pn-subversion = "Aug 15, 2012"
>   CHECK_DATE_pn-subversion = "Sep 03, 2012"
> @@ -1306,7 +1306,7 @@ RECIPE_UPSTREAM_DATE_pn-task-base="n/a"
>   RECIPE_UPSTREAM_DATE_pn-tcf-agent = "Jul 07, 2011"
>   RECIPE_UPSTREAM_VERSION_pn-tcl="8.5.12"
>   RECIPE_UPSTREAM_DATE_pn-tcl = "Jul 27, 2012"
> -CHECK_DATE_pn-tcl = "Sep 03, 2012"
> +CHECK_DATE_pn-tcl = "Nov 8, 2012"
>   RECIPE_UPSTREAM_DATE_pn-tcp-wrappers = "Apr 08, 1997"
>   RECIPE_UPSTREAM_DATE_pn-telepathy-glib = "Aug 31, 2012"
>   RECIPE_UPSTREAM_VERSION_pn-telepathy-glib = "0.19.8"
>

