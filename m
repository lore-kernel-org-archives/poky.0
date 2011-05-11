Return-Path: <dexuan.cui@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 517CC4C803D6
	for <poky@yoctoproject.org>; Wed, 11 May 2011 01:29:22 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 May 2011 23:29:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,350,1301900400"; d="scan'208";a="745544658"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.51])
	by orsmga001.jf.intel.com with ESMTP; 10 May 2011 23:29:21 -0700
Message-Id: <cover.1305094351.git.dexuan.cui@intel.com>
Old-Date: Wed, 11 May 2011 14:12:31 +0800
Date: Wed, 11 May 2011 14:26:45 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [PATCH 00/24] Upstream-Status Updates
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
X-List-Received-Date: Wed, 11 May 2011 06:29:22 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Hi Saul,

These commits update the Upstream-Status field.

For "Inappropriate", I added the reason "configuration" or a specific reason.

Some are "Pending": I will further update them later.

I also removed some patches since they're not used at all now.

Please help to review and pull.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dcui/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dcui/distro

Thanks,
    Dexuan Cui <dexuan.cui@intel.com>
---


Dexuan Cui (24):
  tcf-agent: update its patch's Upstream-Status
  screen: update its patch's Upstream-Status
  which (GPLv2): update its patch's Upstream-Status
  gnome-vfs: update its patch's Upstream-Status
  libart-lgpl: update its patch's Upstream-Status
  librsvg: update its patch's Upstream-Status
  fontconfig: update its patch's Upstream-Status
  freetype: update its patch's Upstream-Status
  libxsettings-client: update its patch's Upstream-Status
  libxcb: update its patch's Upstream-Status
  libx11: update its patch's Upstream-Status
  libx11-trim: update its patch's Upstream-Status
  libxcalibrate: update its patch's Upstream-Status
  libxcomposite: update its patch's Upstream-Status
  libxfont: update its patch's Upstream-Status
  xtrans: update its patch's Upstream-Status
  calibrateproto: update its patch's Upstream-Status
  latencytop: update its patch's Upstream-Status
  oprofile: update its patch's Upstream-Status and remove an unused
    patch
  powertop: update its patch's Upstream-Status
  settings-daemon: update its patch's Upstream-Status
  gnome-settings-daemon: update its patch's Upstream-Status
  libxklavier: update its patch's Upstream-Status
  liblbxutil: update its patch's Upstream-Status

 .../gnome/gnome-settings-daemon/configurefix.patch |    2 +
 .../gnome-settings-daemon/desktop-moblin.patch     |    2 +
 ...-settings-daemon-2.24.0-catch-deviceadded.patch |    2 +
 .../gnome-settings-daemon-fix-gthread.patch        |    2 +
 .../gnome-settings-daemon/mojito-cleanup.patch     |    2 +
 .../gnome/gnome-settings-daemon/mount-plugin.patch |    2 +
 .../libxklavier/libxklavier/pkgconfigfix.patch     |    2 +
 .../xorg-lib/liblbxutil/mkg3states.patch           |    2 +
 .../tcf-agent/tcf-agent/fix_tcf-agent.init.patch   |    2 +
 .../tcf-agent/tcf-agent/terminals_agent.patch      |    2 +
 .../screen/screen-4.0.3/configure.patch            |    2 +
 .../fix_name_conflict_group_member.patch           |    2 +
 .../gnome/gnome-vfs-2.24.4/gconftool-lossage.patch |    2 +
 .../gnome-vfs-2.24.4/gnome-vfs-no-kerberos.patch   |    2 +
 .../gnome/libart-lgpl/Makefile.am.patch            |    2 +
 .../librsvg/librsvg-2.32.1/doc_Makefile.patch      |    2 +
 .../fontconfig-2.8.0/fix-pkgconfig.patch           |    2 +
 .../freetype/freetype-2.4.4/no-hardcode.patch      |    2 +
 .../libxsettings-client/disable_Os_option.patch    |    2 +
 .../libxsettings-client/link-x11.patch             |    2 +
 .../xcb/libxcb/xcbincludedir.patch                 |    2 +
 .../xorg-lib/libx11-1.3.4/include_fix.patch        |    2 +
 .../xorg-lib/libx11-1.3.4/nodolt.patch             |    2 +
 .../libx11-1.3.4/x11_disable_makekeys.patch        |    2 +
 .../xorg-lib/libx11-git/X18NCMSstubs.diff          |    2 +
 .../xorg-lib/libx11-git/fix-disable-xlocale.diff   |    2 +
 .../libx11-git/fix-utf8-wrong-define.patch         |    1 +
 .../xorg-lib/libx11-git/include_fix.patch          |    2 +
 .../xorg-lib/libx11-git/nodolt.patch               |    2 +
 .../xorg-lib/libx11-git/x11_disable_makekeys.patch |    2 +
 .../recipes-graphics/xorg-lib/libx11-git/xim.patch |   55 -----
 .../xorg-lib/libx11-trim/include_fix.patch         |    2 +
 .../xorg-lib/libx11-trim/nodolt.patch              |    2 +
 .../libx11-trim/x11_disable_makekeys.patch         |    2 +
 .../xorg-lib/libx11/X18NCMSstubs.diff              |    2 +
 .../xorg-lib/libx11/fix-disable-xlocale.diff       |    2 +
 .../xorg-lib/libx11/fix-utf8-wrong-define.patch    |    1 +
 .../xorg-lib/libx11/include_fix.patch              |    2 +
 meta/recipes-graphics/xorg-lib/libx11/nodolt.patch |    2 +
 .../xorg-lib/libx11/x11_disable_makekeys.patch     |    2 +
 meta/recipes-graphics/xorg-lib/libx11/xim.patch    |   55 -----
 .../xorg-lib/libxcalibrate/fix-xcb.patch           |    2 +
 .../libxcomposite/change-include-order.patch       |    2 +
 .../xorg-lib/libxfont/no-scalable-crash.patch      |    2 +
 .../xorg-lib/xtrans/abstract_socket_fix.patch      |   58 -----
 .../xorg-proto/calibrateproto/fix.patch            |    2 +
 .../latencytop-0.5/latencytop-makefile.patch       |    2 +
 .../recipes-kernel/oprofile/oprofile/opstart.patch |    2 +
 .../oprofile/oprofile/xml_callgraph_details.patch  |  232 --------------------
 .../stub_out_the_ncurses_calls_in_dump_mode.patch  |    2 +
 .../settings-daemon/files/addsoundkeys.patch       |    2 +
 .../files/dso_linking_change_build_fix.patch       |    2 +
 52 files changed, 94 insertions(+), 400 deletions(-)
 delete mode 100644 meta/recipes-graphics/xorg-lib/libx11-git/xim.patch
 delete mode 100644 meta/recipes-graphics/xorg-lib/libx11/xim.patch
 delete mode 100644 meta/recipes-graphics/xorg-lib/xtrans/abstract_socket_fix.patch
 delete mode 100644 meta/recipes-kernel/oprofile/oprofile/xml_callgraph_details.patch

-- 
1.7.2


