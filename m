Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id F193E4C80332
	for <poky@yoctoproject.org>; Mon,  7 Feb 2011 19:13:47 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 07 Feb 2011 17:13:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,439,1291622400"; d="scan'208";a="600378686"
Received: from sgarman-ws.jf.intel.com (HELO localhost) ([10.7.199.157])
	by orsmga002.jf.intel.com with ESMTP; 07 Feb 2011 17:13:47 -0800
Message-Id: <cover.1297127616.git.scott.a.garman@intel.com>
Old-Date: Mon, 7 Feb 2011 17:13:36 -0800
Date: Mon, 07 Feb 2011 17:14:55 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
Subject: [PATCH 0/6] transfig recipe and dependencies, v2
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
X-List-Received-Date: Tue, 08 Feb 2011 01:13:48 -0000

From: Scott Garman <scott.a.garman@intel.com>

Hi Saul,

This patch series adds the transfig recipe to Poky and its
dependencies. prelink is the first package I've found which
requires transfig. 

Additionally, these changes will allow us to build other
packages which use Imake / xmkfms (and old build system
used commonly by older X11 utilities).

Re-spun to fix the prelink dependency on transfig-native,
and PR bumps where needed for DEPENDS changes.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgarman/transfig
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/transfig

Thanks,
    Scott Garman <scott.a.garman@intel.com>
---


Scott Garman (6):
  xorg-cf-files: new recipe v1.0.4
  libxext: add native support to recipe
  libxpm: add native support to recipe
  imake: add native support to recipe and update DEPENDS
  transfig: new recipe v3.2.5d
  prelink: add transfig-native to DEPENDS

 meta/recipes-devtools/prelink/prelink_git.bb       |    4 +-
 .../transfig/transfig-native_3.2.5d.bb             |   40 ++++++++++++++++++++
 meta/recipes-graphics/xorg-lib/libxext_1.2.0.bb    |    2 +-
 meta/recipes-graphics/xorg-lib/libxpm_3.5.9.bb     |    2 +
 meta/recipes-graphics/xorg-util/imake_1.0.4.bb     |   10 ++--
 .../xorg-util/xorg-cf-files_1.0.4.bb               |   14 +++++++
 6 files changed, 64 insertions(+), 8 deletions(-)
 create mode 100644 meta/recipes-devtools/transfig/transfig-native_3.2.5d.bb
 create mode 100644 meta/recipes-graphics/xorg-util/xorg-cf-files_1.0.4.bb

-- 
1.7.4


