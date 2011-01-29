Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id AB45E4C81146
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 19:45:39 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 28 Jan 2011 17:45:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,394,1291622400"; d="scan'208";a="701843324"
Received: from sgarman-ws.jf.intel.com (HELO localhost) ([10.7.199.157])
	by orsmga001.jf.intel.com with ESMTP; 28 Jan 2011 17:45:39 -0800
Message-Id: <cover.1296265268.git.scott.a.garman@intel.com>
Old-Date: Fri, 28 Jan 2011 17:41:08 -0800
Date: Fri, 28 Jan 2011 17:46:32 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
Subject: [PATCH 0/9] docbook-utils and related recipes, v2
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
X-List-Received-Date: Sat, 29 Jan 2011 01:45:39 -0000

From: Scott Garman <scott.a.garman@intel.com>

Hello,

This is a second iteration of my docbook-utils pull request based on
feedback from Josh and Saul.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgarman/docbook-utils
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/docbook-utils

Thanks,
    Scott Garman <scott.a.garman@intel.com>
---


Scott Garman (9):
  sgml-common: new recipe v0.6.3
  docbook-sgml-dtd: new recipes - v3.1, v4.1, v4.5
  docbook-dsssl-stylesheets: new recipe v1.79
  sgmlspl: new recipe, v1.03ii
  opensp: new recipe v1.5
  openjade: new recipe v1.3.2
  docbook-utils: new recipe v0.6.14
  iputils: enable generation of man pages
  distro_tracking_fields.inc: added docbook-utils and dependencies

 .../conf/distro/include/distro_tracking_fields.inc |   69 +
 .../docbook-dsssl-stylesheets-native_1.79.bb       |   52 +
 .../docbook-sgml-dtd-3.1-native.bb                 |   23 +
 .../docbook-sgml-dtd-4.1-native.bb                 |   23 +
 .../docbook-sgml-dtd-4.5-native.bb                 |   17 +
 .../docbook-sgml-dtd/docbook-sgml-dtd-native.inc   |   53 +
 .../docbook-sgml-dtd/files/LICENSE-OASIS           |   16 +
 .../docbook-utils/docbook-utils_0.6.14.bb          |   20 +
 .../openjade/openjade-1.3.2/autoconf.patch         |  173 ++
 .../openjade/openjade-1.3.2/configure.patch        |   68 +
 .../openjade/openjade-1.3.2/makefile.patch         |   34 +
 .../openjade-1.3.2/oj-native-libosp-fix.patch      |   15 +
 meta/recipes-devtools/openjade/openjade_1.3.2.bb   |   66 +
 .../opensp/opensp/attributevalue.patch             |   62 +
 .../opensp/opensp/fix-docdir.patch                 |   14 +
 meta/recipes-devtools/opensp/opensp/m4.patch       | 1925 ++++++++++++++++++++
 .../opensp/opensp/rangmap-fix.patch                |   15 +
 meta/recipes-devtools/opensp/opensp_1.5.bb         |   27 +
 .../sgml-common/sgml-common-0.6.3/autohell.patch   |   58 +
 .../sgml-common/sgml-common-0.6.3/license.patch    |   26 +
 .../sgml-common/sgml-common-native_0.6.3.bb        |   50 +
 .../sgml-common/sgml-common_0.6.3.bb               |   52 +
 meta/recipes-devtools/sgmlspl/files/combined.patch |  457 +++++
 .../sgmlspl/sgmlspl-native_1.03ii.bb               |   17 +
 meta/recipes-extended/iputils/iputils_s20101006.bb |   10 +-
 25 files changed, 3337 insertions(+), 5 deletions(-)
 create mode 100644 meta/recipes-devtools/docbook-dsssl-stylesheets/docbook-dsssl-stylesheets-native_1.79.bb
 create mode 100644 meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-3.1-native.bb
 create mode 100644 meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-4.1-native.bb
 create mode 100644 meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-4.5-native.bb
 create mode 100644 meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-native.inc
 create mode 100644 meta/recipes-devtools/docbook-sgml-dtd/files/LICENSE-OASIS
 create mode 100644 meta/recipes-devtools/docbook-utils/docbook-utils_0.6.14.bb
 create mode 100644 meta/recipes-devtools/openjade/openjade-1.3.2/autoconf.patch
 create mode 100644 meta/recipes-devtools/openjade/openjade-1.3.2/configure.patch
 create mode 100644 meta/recipes-devtools/openjade/openjade-1.3.2/makefile.patch
 create mode 100644 meta/recipes-devtools/openjade/openjade-1.3.2/oj-native-libosp-fix.patch
 create mode 100644 meta/recipes-devtools/openjade/openjade_1.3.2.bb
 create mode 100644 meta/recipes-devtools/opensp/opensp/attributevalue.patch
 create mode 100644 meta/recipes-devtools/opensp/opensp/fix-docdir.patch
 create mode 100644 meta/recipes-devtools/opensp/opensp/m4.patch
 create mode 100644 meta/recipes-devtools/opensp/opensp/rangmap-fix.patch
 create mode 100644 meta/recipes-devtools/opensp/opensp_1.5.bb
 create mode 100644 meta/recipes-devtools/sgml-common/sgml-common-0.6.3/autohell.patch
 create mode 100644 meta/recipes-devtools/sgml-common/sgml-common-0.6.3/license.patch
 create mode 100644 meta/recipes-devtools/sgml-common/sgml-common-native_0.6.3.bb
 create mode 100644 meta/recipes-devtools/sgml-common/sgml-common_0.6.3.bb
 create mode 100644 meta/recipes-devtools/sgmlspl/files/combined.patch
 create mode 100644 meta/recipes-devtools/sgmlspl/sgmlspl-native_1.03ii.bb

-- 
1.7.3.5


