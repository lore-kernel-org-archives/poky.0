Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4D7DE4C800A3
	for <poky@yoctoproject.org>; Sat,  5 Mar 2011 00:21:04 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 04 Mar 2011 22:21:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,268,1297065600"; d="scan'208";a="716529658"
Received: from unknown (HELO localhost) ([10.255.12.181])
	by orsmga001.jf.intel.com with ESMTP; 04 Mar 2011 22:20:51 -0800
Message-Id: <cover.1299305989.git.sgw@linux.intel.com>
Old-Date: Fri, 4 Mar 2011 22:19:49 -0800
Date: Fri, 04 Mar 2011 22:20:51 -0800
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 0/3] 3 Fixes for RC2 (LSB, Docs, and ADT)
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
X-List-Received-Date: Sat, 05 Mar 2011 06:21:04 -0000

From: Saul Wold <sgw@linux.intel.com>

Richard:

These 3 fixes would like to get into bernard for RC2
build and stability.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: distro/oe-core
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/oe-core

Thanks,
    Saul Wold <sgw@linux.intel.com>
---


Lianhao Lu (1):
  toolchain-script.bbclass: Added --sysroot to LDFLAGS.

Saul Wold (1):
  task-poky-lsb: Remove new eglibc-* packages

Scott Garman (1):
  linuxdoc-tools-native: Fix build error with txt documentation

 meta/classes/toolchain-scripts.bbclass             |    2 +
 meta/recipes-core/meta/meta-environment.bb         |    2 +-
 meta/recipes-core/meta/meta-toolchain.bb           |    2 +-
 .../linuxdoc-tools-native/disable_txt_doc.patch    |   32 ++++++++++++++++++++
 .../linuxdoc-tools/linuxdoc-tools-native_0.9.66.bb |    3 +-
 meta/recipes-extended/tasks/task-poky-lsb.bb       |   13 ++++----
 6 files changed, 45 insertions(+), 9 deletions(-)
 create mode 100644 meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_txt_doc.patch


