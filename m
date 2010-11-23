Return-Path: <lei.mei@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 865274C811DF
	for <poky@yoctoproject.org>; Tue, 23 Nov 2010 04:07:22 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 23 Nov 2010 02:07:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,241,1288594800"; d="scan'208";a="860503660"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by fmsmga001.fm.intel.com with ESMTP; 23 Nov 2010 02:07:21 -0800
Message-Id: <8e5dca2f3419009606671caa3e881537b25d9af0.1290506494.git.lei.mei@intel.com>
In-Reply-To: <cover.1290506494.git.lei.mei@intel.com>
References: <cover.1290506494.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Tue, 23 Nov 2010 14:10:45 +0800
To: poky@yoctoproject.org
Subject: [PATCH 12/25] lttng:Add license file checksum and update the GPL information
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
X-List-Received-Date: Tue, 23 Nov 2010 10:07:22 -0000

Add COPYING checksum to bb file and update the "GPL" to "GPLv3" according to COPYING

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-kernel/lttng/lttng-control_0.87.bb |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-kernel/lttng/lttng-control_0.87.bb b/meta/recipes-kernel/lttng/lttng-control_0.87.bb
index da6a6c6..4bf4f13 100644
--- a/meta/recipes-kernel/lttng/lttng-control_0.87.bb
+++ b/meta/recipes-kernel/lttng/lttng-control_0.87.bb
@@ -2,8 +2,8 @@ SECTION = "devel"
 DESCRIPTION = "The Linux trace toolkit is a suite of tools designed to \
 extract program execution details from the Linux operating system and  \
 interpret them."
-LICENSE = "GPL"
-
+LICENSE = "GPLv3"
+LIC_FILES_CHKSUM = "file://COPYING;md5=id32239bcb673463ab874e80d47fae504"
 PR = "r0"
 
 LTTDATE = "09062010"
-- 
1.6.3.3


