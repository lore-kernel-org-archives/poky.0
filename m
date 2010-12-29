Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2F5F64C811D1
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 14:35:24 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 29 Dec 2010 12:35:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,245,1291622400"; d="scan'208";a="872833235"
Received: from unknown (HELO localhost) ([10.255.13.209])
	by fmsmga001.fm.intel.com with ESMTP; 29 Dec 2010 12:35:22 -0800
Message-Id: <cover.1293654518.git.tom.zanussi@intel.com>
From: Tom Zanussi <tom.zanussi@intel.com>
Old-Date: Wed, 29 Dec 2010 14:28:38 -0600
Date: Wed, 29 Dec 2010 14:34:36 -0600
To: poky@yoctoproject.org
Subject: [PATCH 0/2] Fix blktrace Makefile problem and re-enable blktrace recipe
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
X-List-Received-Date: Wed, 29 Dec 2010 20:35:29 -0000

This patchset fixes the build problem seen recently with blktrace;
with that fixed, the blktrace recipe can then be re-enabled, which
this patchset also does.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: tzanussi/blktrace-build-fixes
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tzanussi/blktrace-build-fixes

Thanks,
    Tom Zanussi <tom.zanussi@intel.com>
---


Tom Zanussi (2):
  blktrace: Fix parallel make issue
  task-poky-tools.bb: re-enable blktrace

 meta/recipes-core/tasks/task-poky-tools.bb         |    1 +
 .../blktrace/blktrace/blktrace-makefile.patch      |    4 ++--
 meta/recipes-kernel/blktrace/blktrace_git.bb       |    2 +-
 3 files changed, 4 insertions(+), 3 deletions(-)


