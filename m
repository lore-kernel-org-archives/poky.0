Return-Path: <scott.a.garman@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 300444C804C2
	for <poky@yoctoproject.org>; Mon, 16 May 2011 19:38:22 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 16 May 2011 17:38:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,222,1304319600"; d="scan'208";a="748196891"
Received: from miles.jf.intel.com (HELO localhost) ([10.7.199.89])
	by orsmga001.jf.intel.com with ESMTP; 16 May 2011 17:38:21 -0700
Message-Id: <cover.1305592601.git.scott.a.garman@intel.com>
Old-Date: Mon, 16 May 2011 17:36:41 -0700
Date: Mon, 16 May 2011 17:38:21 -0700
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
Subject: [PATCH 0/1] More recipe patch Upstream-Status additions
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
X-List-Received-Date: Tue, 17 May 2011 00:38:22 -0000

From: Scott Garman <scott.a.garman@intel.com>

Hi Saul,

Attached are Upstream-Status updates for the following recipes:

    apmd
    insserv
    linuxdoc-tools
    mtools (GPLv3 version)
    openjade
    sgmlspl
    at
    sudo

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgarman/patch-updates2
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/patch-updates2

Thanks,
    Scott Garman <scott.a.garman@intel.com>
---


Scott Garman (1):
  recipes: add Upstream-Status to various recipe	patches

 meta/recipes-bsp/apmd/apmd-3.2.2-14/libtool.patch  |   28 +++++++++++--------
 meta/recipes-bsp/apmd/apmd-3.2.2-14/unlinux.patch  |   20 ++++++++-----
 .../insserv/files/disable_runtests.patch           |   11 +++++---
 meta/recipes-devtools/insserv/files/makefile.patch |   11 +++++---
 .../linuxdoc-tools-native/disable_dvips_doc.patch  |    4 +++
 .../linuxdoc-tools-native/disable_sgml2rtf.patch   |    4 +++
 .../linuxdoc-tools-native/disable_tex_doc.patch    |    4 +++
 .../linuxdoc-tools-native/disable_txt_doc.patch    |    4 +++
 .../mtools/mtools/mtools-makeinfo.patch            |    6 ++++
 .../mtools/mtools/no-x11.gplv3.patch               |   10 +++++--
 .../openjade/openjade-1.3.2/makefile.patch         |    4 +++
 .../user-declared-default-constructor.patch        |    4 +++
 meta/recipes-devtools/sgmlspl/files/combined.patch |    3 ++
 meta/recipes-extended/at/at-3.1.12/configure.patch |    8 ++++-
 .../at/at-3.1.12/fix_parallel_build_error.patch    |    4 +++
 meta/recipes-extended/sudo/files/libtool.patch     |   10 +++++--
 16 files changed, 99 insertions(+), 36 deletions(-)


