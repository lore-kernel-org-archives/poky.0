Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 903AA4C808B0
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 03:14:14 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 21 Dec 2010 01:14:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,207,1291622400"; d="scan'208";a="870372072"
Received: from unknown (HELO [10.255.13.77]) ([10.255.13.77])
	by fmsmga001.fm.intel.com with ESMTP; 21 Dec 2010 01:13:43 -0800
Message-ID: <4D106FC7.1080509@linux.intel.com>
Date: Tue, 21 Dec 2010 01:13:43 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: [PULL] Consolidated Pull request for poky (12/21)
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
X-List-Received-Date: Tue, 21 Dec 2010 09:14:14 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Richard,

This represent a number of changes for M3 and fixes some build issues 
with F14. There are still about 8 know issues with the world build and I 
am working on addressing those.

I have done both incremental and full builds against this patch set.

Sau!


Pull URL: git://git.pokylinux.org/poky-contrib.git
   Branch: distro/master
   Browse: 
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/master

Thanks,
     Saul Wold <sgw@linux.intel.com>
---


Bruce Ashfield (1):
   linux-yocto: remove or adjust to _ in branch names

Darren Hart (1):
   send-pull-request: Use current date in mail headers

Dongxiao Xu (1):
   connman-gnome: Remove the applet and properties desktop icons

Joshua Lock (3):
   gst-plugins: fix for make 3.82
   gnome-common: add native variant via BBCLASSEXTEND
   gnome-doc-utils: ensure a native variant exists for document
     generation

Saul Wold (8):
   gtk-theme-darkilouche: moved to meta-extras
   web-webkit: Updated SVN Rev to 130 & added LIC_FILES_CHKSUM
   patch: Fix SRC_URI[sha256]
   puzzles: Fix SRC_URI checksums
   python-pygobject: Fix SRC_URI checksums
   python-pygobject: add --disable-introspection
   libacpi: remove patch that is no longer needed by upstream
   task-poky-clutter: remove clutter-box2d from default build

Scott Garman (1):
   gettext: Add source and license checkums

  meta/classes/kernel-yocto.bbclass                  |   12 ++---
  .../conf/distro/include/poky-default-revisions.inc |    4 +-
  meta/recipes-bsp/libacpi/libacpi_0.2.bb            |    4 +-
  .../connman/connman-gnome/connman-applet.desktop   |   10 -----
  .../remove-connman-property-desktop-file.patch     |   42 
++++++++++++++++++++
  .../connman/connman-gnome_0.5.bb                   |    9 +---
  meta/recipes-core/gettext/gettext_0.14.1.bb        |   19 +++++----
  meta/recipes-core/gettext/gettext_0.17.bb          |   35 +++++++++-------
  meta/recipes-devtools/patch/patch_2.6.1.bb         |    2 +-
  .../python/python-pygobject_2.27.0.bb              |   10 ++--
  meta/recipes-gnome/gnome/gnome-common_2.28.0.bb    |    2 +
  .../gnome/gnome-doc-utils-native_0.20.2.bb         |    7 +++
  meta/recipes-gnome/gnome/gnome-doc-utils.inc       |    4 +-
  .../gtk-theme-darkilouche/gtk-theme-darkilouche.bb |   23 -----------
  .../gtk-theme-darkilouche/change-colours.diff      |   13 ------
  meta/recipes-graphics/tasks/task-poky-clutter.bb   |    4 +-
  .../recipes-kernel/linux/linux-yocto-stable_git.bb |   10 +++-
  meta/recipes-kernel/linux/linux-yocto_git.bb       |   18 ++++----
  .../gstreamer/gst-plugins-base_0.10.30.bb          |    5 +-
  meta/recipes-multimedia/gstreamer/gst-plugins.inc  |    2 +
  .../gstreamer/gst-plugins/make-382.patch           |   25 ++++++++++++
  meta/recipes-sato/puzzles/puzzles_r9023.bb         |    4 +-
  meta/recipes-sato/web/web-webkit_svn.bb            |    3 +-
  scripts/send-pull-request                          |    6 ++-
  24 files changed, 157 insertions(+), 116 deletions(-)
  delete mode 100644 
meta/recipes-connectivity/connman/connman-gnome/connman-applet.desktop
  create mode 100644 
meta/recipes-connectivity/connman/connman-gnome/remove-connman-property-desktop-file.patch
  create mode 100644 
meta/recipes-gnome/gnome/gnome-doc-utils-native_0.20.2.bb
  delete mode 100644 
meta/recipes-gnome/gtk-theme-darkilouche/gtk-theme-darkilouche.bb
  delete mode 100644 
meta/recipes-gnome/gtk-theme-darkilouche/gtk-theme-darkilouche/change-colours.diff
  create mode 100644 
meta/recipes-multimedia/gstreamer/gst-plugins/make-382.patch

-- 


-- 
     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System


