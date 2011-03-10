Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id D2CDB4C80050
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 10:50:54 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 Mar 2011 08:50:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,297,1297065600"; d="scan'208";a="665978152"
Received: from unknown (HELO localhost) ([10.255.17.57])
	by fmsmga002.fm.intel.com with ESMTP; 10 Mar 2011 08:50:44 -0800
Message-Id: <cover.1299775598.git.sgw@linux.intel.com>
Old-Date: Thu, 10 Mar 2011 08:46:38 -0800
Date: Thu, 10 Mar 2011  8:50:39 -0800
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 0/8] Consolidated Pull Request
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
X-List-Received-Date: Thu, 10 Mar 2011 16:50:55 -0000

From: Saul Wold <sgw@linux.intel.com>


Richard,

This is a batch request of changes to address issues found as
part of Bernard testing.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: distro/oe-core
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/oe-core

Thanks,
    Saul Wold <sgw@linux.intel.com>
---


Dexuan Cui (2):
  oprofileui: upgrade to the latest version maintained by the Yocto
    project
  distro_tracking_fields.inc: update the info for oprofileui

Dongxiao Xu (3):
  telepathy-python: Fix parallel make issue.
  tinylogin: Fix rotate passwd check logic
  gst-plugins-bad: add missing dependency librsvg

Lianhao Lu (1):
  gcc/collect2: Added --sysroot support into collect2 in gcc.

Liping Ke (1):
  Disable wget server side cache

Mark Hatle (1):
  gcc-runtime: Ensure that gcc-runtime builds a debug package

 .../conf/distro/include/distro_tracking_fields.inc |   11 +++--
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 .../telepathy-python-0.15.19/parallel_make.patch   |   40 ++++++++++++++++++++
 .../telepathy/telepathy-python_0.15.19.bb          |    5 +-
 .../tinylogin-1.4/passwd_rotate_check.patch        |   39 +++++++++++++++++++
 meta/recipes-core/tinylogin/tinylogin_1.4.bb       |    5 +-
 meta/recipes-devtools/gcc/gcc-4.5.1.inc            |    1 +
 .../gcc/gcc-4.5.1/COLLECT_GCC_OPTIONS.patch        |   22 +++++++++++
 .../gcc/gcc-cross-canadian_4.5.1.bb                |    2 +-
 .../gcc/gcc-cross-initial_4.5.1.bb                 |    2 +-
 .../gcc/gcc-cross-intermediate_4.5.1.bb            |    2 +-
 meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb       |    2 +-
 .../gcc/gcc-crosssdk-initial_4.5.1.bb              |    2 +-
 .../gcc/gcc-crosssdk-intermediate_4.5.1.bb         |    2 +-
 meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb    |    2 +-
 meta/recipes-devtools/gcc/gcc-package-runtime.inc  |    3 +
 meta/recipes-devtools/gcc/gcc_4.5.1.bb             |    2 +-
 .../installer/adt-installer_1.0.bb                 |    3 +-
 .../installer/files/wget_cache.patch               |   10 +++++
 meta/recipes-kernel/oprofile/oprofileui-git.inc    |   10 +++++
 meta/recipes-kernel/oprofile/oprofileui-svn.inc    |    9 ----
 meta/recipes-kernel/oprofile/oprofileui_git.bb     |    2 +
 meta/recipes-kernel/oprofile/oprofileui_svn.bb     |    2 -
 .../gstreamer/gst-plugins-bad_0.10.20.bb           |    4 +-
 24 files changed, 152 insertions(+), 32 deletions(-)
 create mode 100644 meta/recipes-connectivity/telepathy/telepathy-python-0.15.19/parallel_make.patch
 create mode 100644 meta/recipes-core/tinylogin/tinylogin-1.4/passwd_rotate_check.patch
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.1/COLLECT_GCC_OPTIONS.patch
 create mode 100644 meta/recipes-devtools/installer/files/wget_cache.patch
 create mode 100644 meta/recipes-kernel/oprofile/oprofileui-git.inc
 delete mode 100644 meta/recipes-kernel/oprofile/oprofileui-svn.inc
 create mode 100644 meta/recipes-kernel/oprofile/oprofileui_git.bb
 delete mode 100644 meta/recipes-kernel/oprofile/oprofileui_svn.bb


