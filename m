Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id E377D4C8006D
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 14:01:38 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 27 Jan 2011 12:01:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,387,1291622400"; d="scan'208";a="701400048"
Received: from unknown (HELO [10.255.14.183]) ([10.255.14.183])
	by orsmga001.jf.intel.com with ESMTP; 27 Jan 2011 12:01:37 -0800
Message-ID: <4D41CF20.3070107@linux.intel.com>
Date: Thu, 27 Jan 2011 12:01:36 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: [PULL] Consolidated Pull Request
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
X-List-Received-Date: Thu, 27 Jan 2011 20:01:39 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


This updates the gtk+ to the stable versions, along with some other 
fixes and package updates.

Sau!


Pull URL: git://git.pokylinux.org/poky-contrib.git
   Branch: distro/master
   Browse: 
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/master

Thanks,
     Saul Wold <sgw@linux.intel.com>
---


Mark Hatle (1):
   BerkleyDB: Uprev db from 4.2 to 5.1.19

Saul Wold (1):
   ofono: Fix missing dependency on udev

Yu Ke (2):
   iputils: upgrade to s20101006
   xf86-video-omapfb: upgrade to 044617665d6737f4909aab96

Zhai Edwin (4):
   gtk+: Update to 2.22.1
   gtk+: clean up old version after upgrading gtk+
   eds-dbus: Do not disable old API after upgrading gtk+
   webkit-gtk: upgrade to 1.3.7

  .../conf/distro/include/poky-default-revisions.inc |    4 +-
  meta/recipes-connectivity/ofono/ofono.inc          |    2 +-
  .../iputils/files/debian/CVE-2010-2529.diff        |   22 -
  .../{iputils_s20100418.bb => iputils_s20101006.bb} |    5 +-
  .../gtk+/gtk+-2.12.7/cellrenderer-cairo.patch      |   32 -
  .../gtk+/gtk+-2.12.7/combo-arrow-size.patch        |   67 -
  .../gtk+/gtk+-2.12.7/disable-print.patch           |   26 -
  .../gtk+/gtk+-2.12.7/filechooser-default.patch     | 9521 
--------------------
  .../gtk+/gtk+-2.12.7/filechooser-props.patch       |   57 -
  .../gtk+/gtk+-2.12.7/filechooser-sizefix.patch     |   35 -
  .../gtk+/gtk+-2.12.7/filesystem-volumes.patch      |  198 -
  .../gtk+/gtk+-2.12.7/gtklabel-resize-patch         |   10 -
  .../gtk+/gtk+-2.12.7/hardcoded_libtool.patch       |   29 -
  .../gtk+/gtk+-2.12.7/menu-deactivate.patch         |   51 -
  meta/recipes-gnome/gtk+/gtk+-2.12.7/no-demos.patch |   10 -
  .../gtk+/gtk+-2.12.7/pangoxft2.10.6.diff           | 2456 -----
  .../gtk+/gtk+-2.12.7/range-no-redraw.patch         |  127 -
  .../gtk+/gtk+-2.12.7/run-iconcache.patch           |   19 -
  .../gtk+/gtk+-2.12.7/scrolled-placement.patch      |   22 -
  .../gtk+/gtk+-2.12.7/toggle-font.diff              |  100 -
  .../recipes-gnome/gtk+/gtk+-2.12.7/xsettings.patch |   16 -
  ...Duplicate-the-exec-string-returned-by-gtk.patch |   31 -
  .../gtk+/gtk+-2.16.6/cellrenderer-cairo.patch      |   32 -
  .../gtk+-2.16.6/disable-gio-png-sniff-test.diff    |   97 -
  .../gtk+/gtk+-2.16.6/entry-cairo.patch             |  103 -
  .../gtk+/gtk+-2.16.6/hardcoded_libtool.patch       |   31 -
  meta/recipes-gnome/gtk+/gtk+-2.16.6/no-demos.patch |   10 -
  .../gtk+/gtk+-2.16.6/run-iconcache.patch           |   19 -
  .../gtk+/gtk+-2.16.6/toggle-font.diff              |  100 -
  .../recipes-gnome/gtk+/gtk+-2.16.6/xsettings.patch |   16 -
  .../gtk+-2.20.1/disable-gio-png-sniff-test.diff    |   97 -
  .../gtk+/gtk+-2.20.1/entry-cairo.patch             |  103 -
  meta/recipes-gnome/gtk+/gtk+-2.20.1/no-demos.patch |   10 -
  ...Duplicate-the-exec-string-returned-by-gtk.patch |    0
  .../cellrenderer-cairo.patch                       |    0
  .../configurefix.patch                             |    0
  .../{gtk+-2.12.7 => gtk+-2.22.1}/entry-cairo.patch |    0
  .../hardcoded_libtool.patch                        |   22 +-
  meta/recipes-gnome/gtk+/gtk+-2.22.1/no-demos.patch |   13 +
  .../run-iconcache.patch                            |    0
  .../{gtk+-2.20.1 => gtk+-2.22.1}/toggle-font.diff  |    0
  .../{gtk+-2.20.1 => gtk+-2.22.1}/xsettings.patch   |    0
  meta/recipes-gnome/gtk+/gtk+.inc                   |   16 +-
  meta/recipes-gnome/gtk+/gtk+_2.12.7.bb             |   50 -
  meta/recipes-gnome/gtk+/gtk+_2.16.6.bb             |   49 -
  .../gtk+/{gtk+_2.20.1.bb => gtk+_2.22.1.bb}        |   18 +-
  meta/recipes-sato/eds/eds-dbus/old-gdk-api.patch   |   17 +
  meta/recipes-sato/eds/eds-dbus_git.bb              |    1 +
  meta/recipes-sato/webkit/files/GNUmakefile.am      |  692 +--
  meta/recipes-sato/webkit/files/Makefile            |    2 +-
  meta/recipes-sato/webkit/files/autogen.sh          |    2 +-
  meta/recipes-sato/webkit/files/configure.ac        |  164 +-
  meta/recipes-sato/webkit/files/nodolt.patch        |   16 +
  meta/recipes-sato/webkit/webkit-gtk_svn.bb         |    8 +-
  meta/recipes-support/db/db/arm-thumb-mutex.patch   |   36 -
  .../db/db/arm-thumb-mutex_db5.patch                |   36 +
  meta/recipes-support/db/db/configure_fixes.patch   |   18 -
  meta/recipes-support/db/db_4.2.52.bb               |  102 -
  .../db/{db_4.3.29.bb => db_5.1.19.bb}              |   39 +-
  59 files changed, 301 insertions(+), 14458 deletions(-)
  delete mode 100644 
meta/recipes-extended/iputils/files/debian/CVE-2010-2529.diff
  rename meta/recipes-extended/iputils/{iputils_s20100418.bb => 
iputils_s20101006.bb} (94%)
  delete mode 100644 
meta/recipes-gnome/gtk+/gtk+-2.12.7/cellrenderer-cairo.patch
  delete mode 100644 
meta/recipes-gnome/gtk+/gtk+-2.12.7/combo-arrow-size.patch
  delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.12.7/disable-print.patch
  delete mode 100644 
meta/recipes-gnome/gtk+/gtk+-2.12.7/filechooser-default.patch
  delete mode 100644 
meta/recipes-gnome/gtk+/gtk+-2.12.7/filechooser-props.patch
  delete mode 100644 
meta/recipes-gnome/gtk+/gtk+-2.12.7/filechooser-sizefix.patch
  delete mode 100644 
meta/recipes-gnome/gtk+/gtk+-2.12.7/filesystem-volumes.patch
  delete mode 100644 
meta/recipes-gnome/gtk+/gtk+-2.12.7/gtklabel-resize-patch
  delete mode 100644 
meta/recipes-gnome/gtk+/gtk+-2.12.7/hardcoded_libtool.patch
  delete mode 100644 
meta/recipes-gnome/gtk+/gtk+-2.12.7/menu-deactivate.patch
  delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.12.7/no-demos.patch
  delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.12.7/pangoxft2.10.6.diff
  delete mode 100644 
meta/recipes-gnome/gtk+/gtk+-2.12.7/range-no-redraw.patch
  delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.12.7/run-iconcache.patch
  delete mode 100644 
meta/recipes-gnome/gtk+/gtk+-2.12.7/scrolled-placement.patch
  delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.12.7/toggle-font.diff
  delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.12.7/xsettings.patch
  delete mode 100644 
meta/recipes-gnome/gtk+/gtk+-2.16.6/0001-bgo-584832-Duplicate-the-exec-string-returned-by-gtk.patch
  delete mode 100644 
meta/recipes-gnome/gtk+/gtk+-2.16.6/cellrenderer-cairo.patch
  delete mode 100644 
meta/recipes-gnome/gtk+/gtk+-2.16.6/disable-gio-png-sniff-test.diff
  delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.16.6/entry-cairo.patch
  delete mode 100644 
meta/recipes-gnome/gtk+/gtk+-2.16.6/hardcoded_libtool.patch
  delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.16.6/no-demos.patch
  delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.16.6/run-iconcache.patch
  delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.16.6/toggle-font.diff
  delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.16.6/xsettings.patch
  delete mode 100644 
meta/recipes-gnome/gtk+/gtk+-2.20.1/disable-gio-png-sniff-test.diff
  delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.20.1/entry-cairo.patch
  delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.20.1/no-demos.patch
  rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 => 
gtk+-2.22.1}/0001-bgo-584832-Duplicate-the-exec-string-returned-by-gtk.patch 
(100%)
  rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 => 
gtk+-2.22.1}/cellrenderer-cairo.patch (100%)
  rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 => 
gtk+-2.22.1}/configurefix.patch (100%)
  rename meta/recipes-gnome/gtk+/{gtk+-2.12.7 => 
gtk+-2.22.1}/entry-cairo.patch (100%)
  rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 => 
gtk+-2.22.1}/hardcoded_libtool.patch (66%)
  create mode 100644 meta/recipes-gnome/gtk+/gtk+-2.22.1/no-demos.patch
  rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 => 
gtk+-2.22.1}/run-iconcache.patch (100%)
  rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 => 
gtk+-2.22.1}/toggle-font.diff (100%)
  rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 => 
gtk+-2.22.1}/xsettings.patch (100%)
  delete mode 100644 meta/recipes-gnome/gtk+/gtk+_2.12.7.bb
  delete mode 100644 meta/recipes-gnome/gtk+/gtk+_2.16.6.bb
  rename meta/recipes-gnome/gtk+/{gtk+_2.20.1.bb => gtk+_2.22.1.bb} (74%)
  create mode 100644 meta/recipes-sato/eds/eds-dbus/old-gdk-api.patch
  create mode 100644 meta/recipes-sato/webkit/files/nodolt.patch
  delete mode 100644 meta/recipes-support/db/db/arm-thumb-mutex.patch
  create mode 100644 meta/recipes-support/db/db/arm-thumb-mutex_db5.patch
  delete mode 100644 meta/recipes-support/db/db/configure_fixes.patch
  delete mode 100644 meta/recipes-support/db/db_4.2.52.bb
  rename meta/recipes-support/db/{db_4.3.29.bb => db_5.1.19.bb} (68%)


-- 
     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System


