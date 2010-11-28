Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id B81C64C810B0
	for <poky@yoctoproject.org>; Sun, 28 Nov 2010 07:06:29 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 28 Nov 2010 05:06:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,270,1288594800"; d="scan'208";a="630938371"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by fmsmga002.fm.intel.com with ESMTP; 28 Nov 2010 05:06:11 -0800
Message-Id: <9a4582a0b3227903fd6ae8253bd8bd7eb8faf9c0.1290943560.git.ke.yu@intel.com>
In-Reply-To: <cover.1290943560.git.ke.yu@intel.com>
References: <cover.1290943560.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Sun, 28 Nov 2010 11:33:34 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 10/11] qemugl: upgrade to git commit 33466cd83c2a9d7d3fb9fe437fb6a4d6fbd866b9
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
X-List-Received-Date: Sun, 28 Nov 2010 13:06:29 -0000

qemugl has no update since May 2009. Compared to current SRCREV, there is 3 new commit in upstream. So simply upgrade the SRCREV to the latest commit of May 2009, to include the 3 new commits.

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index c5a0c7f..bcf7164 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -145,8 +145,8 @@ QEMUSRCREV ??= "72bb3c7571226af13cfe9eec020a56add3d30a70"
 SRCREV_pn-qemu-native ??= "${QEMUSRCREV}"
 SRCREV_pn-qemu-nativesdk ??= "${QEMUSRCREV}"
 SRCREV_pn-qemu ??= "${QEMUSRCREV}"
-SRCREV_pn-qemugl ??= "d888bbc723c00d197d34a39b5b7448660ec1b1c0"
-SRCREV_pn-qemugl-nativesdk ??= "d888bbc723c00d197d34a39b5b7448660ec1b1c0"
+SRCREV_pn-qemugl ??= "33466cd83c2a9d7d3fb9fe437fb6a4d6fbd866b9"
+SRCREV_pn-qemugl-nativesdk ??= "33466cd83c2a9d7d3fb9fe437fb6a4d6fbd866b9"
 SRCREV_pn-sat-solver = "aa799f7bae0ec055e0e527203635001bb7346dbc"
 SRCREV_pn-screenshot ??= "292"
 SRCREV_pn-settings-daemon ??= "2059"
-- 
1.7.0.4


