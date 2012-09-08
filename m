Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E64F7E0049F
	for <poky@yoctoproject.org>; Sat,  8 Sep 2012 10:02:48 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 08 Sep 2012 10:02:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,392,1344236400"; d="scan'208";a="199652019"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.13.76])
	by orsmga002.jf.intel.com with ESMTP; 08 Sep 2012 10:02:48 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Sat,  8 Sep 2012 10:02:47 -0700
Message-Id: <cover.1347063149.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
Subject: [CONSOLIDATED REQUEST 0/4] meta-yocto updates
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 08 Sep 2012 17:02:49 -0000

The following changes since commit 5343cdb20ee56a8b507733c637dcc2466ae13288:

  bitbake: fetch2: replace double slashes in paths in encodeurl() (2012-09-07 14:50:04 +0100)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib sgw/stage
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgw/stage

Andrei Dinu (1):
  Manual updates to upstream_tracking.inc up to 04 Sep 2012

Kang Kai (1):
  upstream_tracking: update lsb and ltp

Saul Wold (1):
  poky-tiny: Enable x86-64 to build eglibc correctly

Tom Zanussi (1):
  yocto-bsp: remove packagegroup-core-tools-profile.bbappend

 .../conf/distro/include/upstream_tracking.inc      | 1504 +++++++++++++-------
 meta-yocto/conf/distro/poky-tiny.conf              |    1 +
 .../packagegroup-core-tools-profile.bbappend       |    2 -
 3 files changed, 966 insertions(+), 541 deletions(-)
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend

-- 
1.7.7.6


