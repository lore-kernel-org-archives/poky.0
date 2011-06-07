Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3508D4C80A8F
	for <poky@yoctoproject.org>; Tue,  7 Jun 2011 03:41:43 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 07 Jun 2011 01:41:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,331,1304319600"; d="scan'208";a="10074403"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by orsmga002.jf.intel.com with ESMTP; 07 Jun 2011 01:41:41 -0700
From: y
To: poky@yoctoproject.org
Date: Tue,  7 Jun 2011 16:52:02 +0800
Message-Id: <cover.1307436402.git.dongxiao.xu@intel.com>
X-Mailer: git-send-email 1.7.1
Subject: [PATCH 0/5] 3G network support
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
X-List-Received-Date: Tue, 07 Jun 2011 08:41:43 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Hi Saul,

The following commits enables 3G feature for Yocto Project. Please help to review and pull.

Some notes:
a) 0001.patch: Automatically load some kernel modules which is used to support usb network.
b) 0002.patch: upgrade connman to 0.73, also add ofono plugin.
c) 0003.patch: Remove 0.6.10 versio of wpa-supplicant. (This commit is not related with 3G support).
d) 0004.patch: Add 0.42 version of ofono. Because ofonod after 0.42 would crash on Ericsson 3G module.
e) 0005.patch: Add 3G config UI in connman-gnome. Also upgrade it to latest git head.

The following changes since commit 7f34cd1eb2a459709006ae985a14decd4d2152e6:

  tzcode: Update to 2011g (2011-06-06 15:58:42 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib dxu4/upgrade
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/upgrade

Dongxiao Xu (5):
  kernel.bbclass: Auto load cdc-acm and cdc-wdm
  connman: Upgrade to version 0.73
  wpa-supplicant: remove the 0.6.10 version.
  ofono: add 0.42 version which works OK for Ericsson 3G module.
  connman-gnome: Add 3G configuration support

 meta/classes/kernel.bbclass                        |    2 +
 meta/conf/distro/include/default-versions.inc      |    1 +
 .../connman-0.65/fix-shutdown-ap-disconnect.patch  |   42 -
 .../add_xuser_dbus_permission.patch                |    2 +
 .../connman/{connman-0.65 => connman-0.73}/connman |    0
 .../{connman-0.65 => connman-0.73}/dbusperms.patch |    2 +
 .../connman/connman-gnome/3g.patch                 |  505 +++
 .../connman-gnome/applet_menu_popup_fix.patch      |   19 -
 .../connman/connman-gnome/connman-gnome.patch      | 4162 --------------------
 .../remove-connman-property-desktop-file.patch     |   42 -
 .../connman-gnome/service_name_update.patch        |   36 -
 .../{connman-gnome_0.5.bb => connman-gnome_git.bb} |   17 +-
 meta/recipes-connectivity/connman/connman.inc      |    2 +-
 .../connman/{connman_0.65.bb => connman_0.73.bb}   |    8 +-
 meta/recipes-connectivity/ofono/ofono.inc          |    2 +
 meta/recipes-connectivity/ofono/ofono_0.42.bb      |   13 +
 .../wpa-supplicant-0.6.10/99_wpa_supplicant        |    1 -
 .../wpa-supplicant-0.6.10/defaults-sane            |    8 -
 .../wpa-supplicant-0.6.10/defconfig-0.6.0-gnutls   |  180 -
 .../wpa-supplicant-0.6.10/wpa-supplicant.sh        |   85 -
 .../wpa-supplicant-0.6.10/wpa_supplicant.conf      |  690 ----
 .../wpa-supplicant-0.6.10/wpa_supplicant.conf-sane |    7 -
 .../wpa-supplicant/wpa-supplicant-0.6.inc          |   83 -
 .../wpa-supplicant/wpa-supplicant_0.6.10.bb        |    4 -
 24 files changed, 542 insertions(+), 5371 deletions(-)
 delete mode 100644 meta/recipes-connectivity/connman/connman-0.65/fix-shutdown-ap-disconnect.patch
 rename meta/recipes-connectivity/connman/{connman-0.65 => connman-0.73}/add_xuser_dbus_permission.patch (94%)
 rename meta/recipes-connectivity/connman/{connman-0.65 => connman-0.73}/connman (100%)
 rename meta/recipes-connectivity/connman/{connman-0.65 => connman-0.73}/dbusperms.patch (91%)
 create mode 100644 meta/recipes-connectivity/connman/connman-gnome/3g.patch
 delete mode 100644 meta/recipes-connectivity/connman/connman-gnome/applet_menu_popup_fix.patch
 delete mode 100644 meta/recipes-connectivity/connman/connman-gnome/connman-gnome.patch
 delete mode 100644 meta/recipes-connectivity/connman/connman-gnome/remove-connman-property-desktop-file.patch
 delete mode 100644 meta/recipes-connectivity/connman/connman-gnome/service_name_update.patch
 rename meta/recipes-connectivity/connman/{connman-gnome_0.5.bb => connman-gnome_git.bb} (72%)
 rename meta/recipes-connectivity/connman/{connman_0.65.bb => connman_0.73.bb} (74%)
 create mode 100644 meta/recipes-connectivity/ofono/ofono_0.42.bb
 delete mode 100644 meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.6.10/99_wpa_supplicant
 delete mode 100644 meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.6.10/defaults-sane
 delete mode 100644 meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.6.10/defconfig-0.6.0-gnutls
 delete mode 100644 meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.6.10/wpa-supplicant.sh
 delete mode 100644 meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.6.10/wpa_supplicant.conf
 delete mode 100644 meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.6.10/wpa_supplicant.conf-sane
 delete mode 100644 meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.6.inc
 delete mode 100644 meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.6.10.bb


