Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7760A4C804D4
	for <poky@yoctoproject.org>; Wed, 20 Apr 2011 10:09:30 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 20 Apr 2011 08:09:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,247,1301900400"; d="scan'208";a="736073723"
Received: from unknown (HELO [10.255.12.227]) ([10.255.12.227])
	by orsmga001.jf.intel.com with ESMTP; 20 Apr 2011 08:09:09 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Dongxiao Xu <dongxiao.xu@intel.com>
In-Reply-To: <cover.1302845703.git.dongxiao.xu@intel.com>
References: <cover.1302845703.git.dongxiao.xu@intel.com>
Date: Wed, 20 Apr 2011 08:09:13 -0700
Message-ID: <1303312153.23006.5.camel@doubt>
Mime-Version: 1.0
X-Mailer: Evolution 2.30.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 00/14][PULL] connectivity/multimedia recipe upgrade, Dongxiao, 2011/04/15
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
X-List-Received-Date: Wed, 20 Apr 2011 15:09:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-04-15 at 13:36 +0800, Dongxiao Xu wrote:
> From: Dongxiao Xu <dongxiao.xu@intel.com>
> 
> Hi Saul,
> 
> This pull request upgrades some connectivity and multimedia recipes, please help to review and pull.

How have these upgrades been tested? In particular, has rygel from
meta-demo been shown to work using the updated libraries?

--
Darren

> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: dxu4/upgrade
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/upgrade
> 
> Thanks,
>     Dongxiao Xu <dongxiao.xu@intel.com>
> ---
> 
> 
> Dongxiao Xu (14):
>   gstreamer: upgrade to vesion 0.10.32
>   gst-plugins-base: upgrade to version 0.10.32
>   gst-plugins-good: upgrade to version 0.10.28
>   gst-plugins-bad: upgrade to version 0.10.21
>   gst-plugins-ugly: upgrade to version 0.10.17
>   ofono: upgrade to version 0.45
>   alsa-lib: upgrade to version 1.0.24.1
>   alsa-utils: upgrade to version 1.0.24.2
>   telepathy-glib: upgrade to version 0.14.3
>   telepathy-idle: upgrade to version 0.1.8
>   telepathy-mission-control: upgrade to version 5.7.9
>   gssdp: upgrade to version 0.10.0
>   gupnp: upgrade to version 0.16.0
>   distro_tracking_fields: update for gstreamer, gupnp, telepathy-glib,
>     etc
> 
>  .../conf/distro/include/distro_tracking_fields.inc |  106 ++++++++++----------
>  .../{files => gssdp-0.10.0}/introspection.patch    |    5 +-
>  .../gupnp/{gssdp_0.9.0.bb => gssdp_0.10.0.bb}      |    4 +-
>  .../gupnp/{gupnp_0.14.0.bb => gupnp_0.16.0.bb}     |    7 +-
>  meta/recipes-connectivity/ofono/ofono_0.37.bb      |    9 --
>  meta/recipes-connectivity/ofono/ofono_0.45.bb      |    9 ++
>  ...thy-glib_0.13.6.bb => telepathy-glib_0.14.3.bb} |    4 +-
>  ...pathy-idle_0.1.7.bb => telepathy-idle_0.1.8.bb} |    4 +-
>  ...5.7.1.bb => telepathy-mission-control_5.7.9.bb} |    4 +-
>  .../fix-tstamp-declaration.patch                   |    2 +
>  .../unbreak_plugindir.patch                        |    2 +
>  .../{alsa-lib_1.0.23.bb => alsa-lib_1.0.24.1.bb}   |    4 +-
>  .../ncursesfix.patch                               |   22 ++--
>  ...alsa-utils_1.0.23.bb => alsa-utils_1.0.24.2.bb} |    4 +-
>  ...s-bad_0.10.20.bb => gst-plugins-bad_0.10.21.bb} |    6 +-
>  .../gst-plugins-base-tremor.patch                  |    2 +
>  ...base_0.10.31.bb => gst-plugins-base_0.10.32.bb} |    6 +-
>  ...good_0.10.26.bb => gst-plugins-good_0.10.28.bb} |    6 +-
>  ...ugly_0.10.16.bb => gst-plugins-ugly_0.10.17.bb} |    3 +
>  .../check_fix.patch                                |    2 +
>  .../gst-inspect-check-error.patch                  |    2 +
>  .../gstregistrybinary.c                            |    0
>  .../gstregistrybinary.h                            |    0
>  .../{gstreamer_0.10.31.bb => gstreamer_0.10.32.bb} |    4 +-
>  24 files changed, 116 insertions(+), 101 deletions(-)
>  rename meta/recipes-connectivity/gupnp/{files => gssdp-0.10.0}/introspection.patch (97%)
>  rename meta/recipes-connectivity/gupnp/{gssdp_0.9.0.bb => gssdp_0.10.0.bb} (83%)
>  rename meta/recipes-connectivity/gupnp/{gupnp_0.14.0.bb => gupnp_0.16.0.bb} (85%)
>  delete mode 100644 meta/recipes-connectivity/ofono/ofono_0.37.bb
>  create mode 100644 meta/recipes-connectivity/ofono/ofono_0.45.bb
>  rename meta/recipes-connectivity/telepathy/{telepathy-glib_0.13.6.bb => telepathy-glib_0.14.3.bb} (80%)
>  rename meta/recipes-connectivity/telepathy/{telepathy-idle_0.1.7.bb => telepathy-idle_0.1.8.bb} (81%)
>  rename meta/recipes-connectivity/telepathy/{telepathy-mission-control_5.7.1.bb => telepathy-mission-control_5.7.9.bb} (92%)
>  rename meta/recipes-multimedia/alsa/{alsa-lib-1.0.23 => alsa-lib-1.0.24.1}/fix-tstamp-declaration.patch (95%)
>  rename meta/recipes-multimedia/alsa/{alsa-lib-1.0.23 => alsa-lib-1.0.24.1}/unbreak_plugindir.patch (91%)
>  rename meta/recipes-multimedia/alsa/{alsa-lib_1.0.23.bb => alsa-lib_1.0.24.1.bb} (91%)
>  rename meta/recipes-multimedia/alsa/{alsa-utils-1.0.23 => alsa-utils-1.0.24.2}/ncursesfix.patch (70%)
>  rename meta/recipes-multimedia/alsa/{alsa-utils_1.0.23.bb => alsa-utils_1.0.24.2.bb} (95%)
>  rename meta/recipes-multimedia/gstreamer/{gst-plugins-bad_0.10.20.bb => gst-plugins-bad_0.10.21.bb} (86%)
>  rename meta/recipes-multimedia/gstreamer/{gst-plugins-base-0.10.31 => gst-plugins-base-0.10.32}/gst-plugins-base-tremor.patch (94%)
>  rename meta/recipes-multimedia/gstreamer/{gst-plugins-base_0.10.31.bb => gst-plugins-base_0.10.32.bb} (86%)
>  rename meta/recipes-multimedia/gstreamer/{gst-plugins-good_0.10.26.bb => gst-plugins-good_0.10.28.bb} (82%)
>  rename meta/recipes-multimedia/gstreamer/{gst-plugins-ugly_0.10.16.bb => gst-plugins-ugly_0.10.17.bb} (85%)
>  rename meta/recipes-multimedia/gstreamer/{gstreamer-0.10.31 => gstreamer-0.10.32}/check_fix.patch (93%)
>  rename meta/recipes-multimedia/gstreamer/{gstreamer-0.10.31 => gstreamer-0.10.32}/gst-inspect-check-error.patch (96%)
>  rename meta/recipes-multimedia/gstreamer/{gstreamer-0.10.31 => gstreamer-0.10.32}/gstregistrybinary.c (100%)
>  rename meta/recipes-multimedia/gstreamer/{gstreamer-0.10.31 => gstreamer-0.10.32}/gstregistrybinary.h (100%)
>  rename meta/recipes-multimedia/gstreamer/{gstreamer_0.10.31.bb => gstreamer_0.10.32.bb} (91%)
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
Darren Hart
Yocto Linux Kernel


