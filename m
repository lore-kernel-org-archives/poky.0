Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (li38-254.members.linode.com
	[207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 138C44C80B70
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 12:00:13 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 3A6C43052D
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 13:00:06 -0500 (EST)
Message-Id: <cover.1294250102.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Old-Date: Wed, 5 Jan 2011 09:55:02 -0800
Date: Wed, 05 Jan 2011 10:00:02 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 3A6C43052D.F0DD0
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 0/8] Handful 'o recipe updates
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
X-List-Received-Date: Wed, 05 Jan 2011 18:00:13 -0000

Hi Saul,

This pull request includes all of the recipe upgrades Yu Ke recently
gave me except icu, which I'm still working on. Most of them do not
involve any upstream upgrades, but there were some recipe cleanups
that were needed anyway. 

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgarman/recipe-upgrades3
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/recipe-upgrades3

Thanks,
    Scott Garman <scott.a.garman@intel.com>
---


Scott Garman (8):
  pax-utils: upgrade to version 2.2.2
  apmd: delete unused patch
  apmd: added HOMEPAGE, minor formatting changes
  blktool: minor formatting changes
  libgdbus_git: metadata fixes and minor formatting changes
  dbus-glib: delete unused patch
  dbus-glib: upgrade to version 0.92
  distro_tracking_fields.inc: update apmd, blktool, dbus-glib,
    libgdbus, and pax-utils

 .../conf/distro/include/distro_tracking_fields.inc |   45 ++++++++-------
 .../apmd/apmd-3.2.2-14/workaround.patch            |   59 --------------------
 meta/recipes-bsp/apmd/apmd_3.2.2-14.bb             |    9 ++-
 .../dbus/dbus-glib-0.88/fix_asneeded.patch         |   17 ------
 .../no-examples.patch                              |    0
 meta/recipes-core/dbus/dbus-glib.inc               |   12 ++--
 meta/recipes-core/dbus/dbus-glib_0.88.bb           |    6 --
 meta/recipes-core/dbus/dbus-glib_0.92.bb           |    6 ++
 meta/recipes-devtools/pax-utils/pax-utils_0.2.1.bb |   19 ------
 meta/recipes-devtools/pax-utils/pax-utils_0.2.2.bb |   21 +++++++
 meta/recipes-extended/blktool/blktool_4-6.bb       |    9 ++-
 meta/recipes-support/libgdbus/libgdbus_git.bb      |   22 +++++---
 12 files changed, 83 insertions(+), 142 deletions(-)
 delete mode 100644 meta/recipes-bsp/apmd/apmd-3.2.2-14/workaround.patch
 delete mode 100644 meta/recipes-core/dbus/dbus-glib-0.88/fix_asneeded.patch
 rename meta/recipes-core/dbus/{dbus-glib-0.88 => dbus-glib-0.92}/no-examples.patch (100%)
 delete mode 100644 meta/recipes-core/dbus/dbus-glib_0.88.bb
 create mode 100644 meta/recipes-core/dbus/dbus-glib_0.92.bb
 delete mode 100644 meta/recipes-devtools/pax-utils/pax-utils_0.2.1.bb
 create mode 100644 meta/recipes-devtools/pax-utils/pax-utils_0.2.2.bb


