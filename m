Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3D8194C80050
	for <poky@yoctoproject.org>; Tue,  4 Jan 2011 20:22:51 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 04 Jan 2011 18:22:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,275,1291622400"; d="scan'208";a="643493353"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga002.fm.intel.com with ESMTP; 04 Jan 2011 18:22:49 -0800
Date: Wed, 5 Jan 2011 10:30:55 +0800
From: Yu Ke <ke.yu@intel.com>
To: Yu Ke <ke.yu@intel.com>
Message-ID: <20110105023055.GG20780@kyu3-hedt>
References: <cover.1293457442.git.ke.yu@intel.com>
MIME-Version: 1.0
In-Reply-To: <cover.1293457442.git.ke.yu@intel.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/8] RFC: break fetcher src rev deadlock
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
X-List-Received-Date: Wed, 05 Jan 2011 02:22:51 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Dec 27, 21:57, Yu Ke wrote:
>     Current fetcher has annoying "SRCREVINACTION" deadlock,
>     which occurs when SRCREV=${AUTOREV}=@bb.fetch.get_srcrev():
>     get_srcrev()->setup_localpath()->srcrev_internal_helper()
>     ->evaluate SRCREV->get_srcrev()
> 
>     Current fetcher resolve the deadlock by introducing a
>     "SRCREVINACTION" condition check. Althoguh it works, it is
>     indeed not clean.
> 
>     This patch use Richard's idea to break the deadlock: break
>     the dependency among SRCREV and get_srcrev(), i.e. assign
>     a specific keyword "AUTOINC" to AUTOREV. when Fetcher meet
>     this keyword, it will check and set the latest revision to
>     urldata.revision. get_srcrev later can use the urldata.revision
>     for value evaluation(SRCPV etc). In this case, SRCREV no longer
>     depends on get_srcrev, and there is not deadlock anymore.
> 
>     In implementation side, several things are done:
>     a) set the revision in FetchData:__init__, so that
>        urldata.revision is ready when get_srcrev() need it
>     b) init fetch method specific data in Fetch:supports, so that
>        Fetch.latest_revision() can be conducted when FetchData:
>        __init__ need it to achieve a)
>     c) some recpies still use ${SRCREV} in PV, which is not corect
>        logically, and will cause error in current implementation.
>        so replace the SRCREV with SRCPV for those recpies
> 
> 	in test side, some basic tests are conducted:
>     - fetch the source of world packages from scratch (empty DL_DIR)
>     - bitbake poky-image-sato for qemux86 from sratch (empty DL_DIR)
> 
>      more testing is ongoing, this RFC is just for early patch review
>      and comments are warmly welcome.

The following tests are done, all passed:

- fetch source for world with DISTRO = "poky-bleeding", all passed except
  two broken recpies whose SRC_URI are obsolate, two bugs 623,624 are
  filed for this.
- bitbake poky-image-sdk for qemux86 with empty DL_DIR
- bitbake poky-image-sdk for qemuppc with empty DL_DIR
- bitbake poky-image-sdk for qemumips with empty DL_DIR

BTW, Richard, could you take a look and provide comments on this? I'd like to
revise them accordingly and prepare another submit for code check in.

Regards
Ke

> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: kyu3/srcrev-cleanup
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/srcrev-cleanup
> 
> Thanks,
>     Yu Ke <ke.yu@intel.com>
> ---
> 
> 
> Yu Ke (8):
>   Fetch: fix support-srcrev typo
>   git.py: move git specific url data initialization earlier
>   svn.py: move svn specific url data initialization earlier
>   hg.py: move hg specific url data initialization earlier
>   bzr.py: move bzr specific url data initialization earlier
>   recpies: use SRCPV instead of SRCREV for PV
>   Fetcher: break the "SRCREVINACTION" deadlock
>   Fetcher: only set __BB_DONT_CACHE when SRCREV = "${AUTOREV}"
> 
>  bitbake/lib/bb/fetch/__init__.py                   |   56 ++++++++------------
>  bitbake/lib/bb/fetch/bzr.py                        |   22 ++++----
>  bitbake/lib/bb/fetch/git.py                        |   25 +++++----
>  bitbake/lib/bb/fetch/hg.py                         |   25 +++++----
>  bitbake/lib/bb/fetch/repo.py                       |    2 +-
>  bitbake/lib/bb/fetch/svn.py                        |   25 +++++----
>  .../recipes-connectivity/opensync/libsync_svn.bb   |    2 +-
>  .../matchbox-themes-extra_svn.bb                   |    2 +-
>  meta/conf/bitbake.conf                             |    2 +-
>  .../eee-acpi-scripts/eee-acpi-scripts_git.bb       |    2 +-
>  meta/recipes-bsp/uboot/u-boot-omap3_git.bb         |    2 +-
>  meta/recipes-bsp/x-load/x-load_git.bb              |    2 +-
>  meta/recipes-bsp/zaurusd/zaurusd_svn.bb            |    2 +-
>  meta/recipes-connectivity/gsm/gsmd.inc             |    2 +-
>  meta/recipes-connectivity/gypsy/gypsy_svn.bb       |    2 +-
>  meta/recipes-core/dbus-wait/dbus-wait_svn.bb       |    2 +-
>  meta/recipes-core/psplash/psplash_svn.bb           |    2 +-
>  meta/recipes-devtools/opkg-utils/opkg-utils_svn.bb |    2 +-
>  meta/recipes-devtools/opkg/opkg_svn.bb             |    2 +-
>  meta/recipes-devtools/tcf-agent/tcf-agent_svn.bb   |    2 +-
>  meta/recipes-devtools/ubootchart/ubootchart_svn.bb |    2 +-
>  meta/recipes-gnome/gnome/gconf-dbus_svn.bb         |    2 +-
>  .../gnome/gobject-introspection_git.bb             |    2 +-
>  meta/recipes-gnome/gtkhtml2/gtkhtml2_svn.bb        |    2 +-
>  meta/recipes-graphics/drm/libdrm_git.bb            |    2 +-
>  meta/recipes-graphics/fstests/fstests_svn.bb       |    2 +-
>  meta/recipes-graphics/libfakekey/libfakekey_svn.bb |    2 +-
>  .../libmatchbox/libmatchbox_svn.bb                 |    2 +-
>  .../matchbox-wm-2/matchbox-wm-2_svn.bb             |    2 +-
>  .../matchbox-wm/matchbox-wm_svn.bb                 |    2 +-
>  meta/recipes-graphics/xcb/libxcb_git.bb            |    2 +-
>  meta/recipes-graphics/xcb/xcb-proto_git.bb         |    2 +-
>  .../xvideo-tests/xvideo-tests_svn.bb               |    2 +-
>  .../linux-firmware/linux-firmware_git.bb           |    2 +-
>  meta/recipes-kernel/linux/linux-omap2_git.bb       |    2 +-
>  meta/recipes-kernel/linux/linux-omap3-pm_git.bb    |    2 +-
>  meta/recipes-kernel/linux/linux-omap3_git.bb       |    2 +-
>  meta/recipes-kernel/oprofile/oprofileui-svn.inc    |    2 +-
>  meta/recipes-sato/gaku/gaku_svn.bb                 |    2 +-
>  .../gtk-engines/gtk-sato-engine_svn.bb             |    2 +-
>  meta/recipes-sato/libowl/libowl_svn.bb             |    2 +-
>  .../matchbox-config-gtk/matchbox-config-gtk_svn.bb |    2 +-
>  .../matchbox-desktop-sato_svn.bb                   |    2 +-
>  .../matchbox-desktop/matchbox-desktop_svn.bb       |    2 +-
>  .../matchbox-keyboard/matchbox-keyboard_svn.bb     |    2 +-
>  .../matchbox-panel-2/matchbox-panel-2_svn.bb       |    2 +-
>  .../matchbox-stroke/matchbox-stroke_svn.bb         |    2 +-
>  .../matchbox-terminal/matchbox-terminal_svn.bb     |    2 +-
>  .../matchbox-theme-sato-2_svn.bb                   |    2 +-
>  .../matchbox-theme-sato/matchbox-theme-sato_svn.bb |    2 +-
>  .../recipes-sato/owl-video-widget/libowl-av_svn.bb |    2 +-
>  .../recipes-sato/owl-video-widget/owl-video_svn.bb |    2 +-
>  meta/recipes-sato/puzzles/oh-puzzles_svn.bb        |    2 +-
>  meta/recipes-sato/screenshot/screenshot_svn.bb     |    2 +-
>  .../settings-daemon/settings-daemon_svn.bb         |    2 +-
>  meta/recipes-sato/web/web-webkit_svn.bb            |    2 +-
>  meta/recipes-sato/web/web_svn.bb                   |    2 +-
>  meta/recipes-sato/webkit/webkit-gtk_svn.bb         |    2 +-
>  meta/recipes-support/libgdbus/libgdbus_git.bb      |    2 +-
>  59 files changed, 131 insertions(+), 130 deletions(-)
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

