Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61EEAE007CB
	for <poky@yoctoproject.org>; Fri, 20 Dec 2013 07:36:12 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 20 Dec 2013 07:36:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,521,1384329600"; d="scan'208";a="453359957"
Received: from unknown (HELO localhost) ([10.255.12.25])
	by fmsmga002.fm.intel.com with ESMTP; 20 Dec 2013 07:36:07 -0800
From: tom.zanussi@intel.com
To: poky@yoctoproject.org
Date: Fri, 20 Dec 2013 10:39:08 -0600
Message-Id: <cover.1387557270.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 0/1] yocto-bsp bugfix
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
X-List-Received-Date: Fri, 20 Dec 2013 15:36:12 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This is a fix for [YOCTO #5636].  Please pull into poky/master.

The following changes since commit 3ada51f7aa26fc95d5f9ba4498c0ea54acc6e42e:

  sstate/sstatesig: Add populate_lic to list of arch invariant sstate tasks (2013-12-20 12:26:32 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bsp-interfaces-fix
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-bsp-interfaces-fix

Tom Zanussi (1):
  yocto-bsp: Add missing interfaces file for qemu BSP templates

 .../init-ifupdown/{{=machine}}/interfaces          |    5 +++++
 .../init-ifupdown/init-ifupdown_1.0.bbappend       |    1 +
 2 files changed, 6 insertions(+)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-core/init-ifupdown/init-ifupdown/{{=machine}}/interfaces
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-core/init-ifupdown/init-ifupdown_1.0.bbappend

-- 
1.7.9.5


