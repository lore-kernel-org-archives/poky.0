Return-Path: <lei.mei@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id F19CA4C81216
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 01:19:16 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 28 Nov 2010 23:19:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,275,1288594800"; d="scan'208";a="862221286"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by fmsmga001.fm.intel.com with ESMTP; 28 Nov 2010 23:19:08 -0800
Message-Id: <5520a1f8b6c4b768286267e2df4500f1dcf578ce.1291014682.git.lei.mei@intel.com>
In-Reply-To: <cover.1291014682.git.lei.mei@intel.com>
References: <cover.1291014682.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Mon, 29 Nov 2010 15:02:41 +0800
To: poky@yoctoproject.org
Subject: [PATCH 1/6] insane.bbclass: Add local file checksum condition for 'n/a'
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
X-List-Received-Date: Mon, 29 Nov 2010 07:19:17 -0000

Add local license file checksum condition 'n/a' for local recipe

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 meta/classes/insane.bbclass |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/classes/insane.bbclass b/meta/classes/insane.bbclass
index b06d021..ccc3496 100644
--- a/meta/classes/insane.bbclass
+++ b/meta/classes/insane.bbclass
@@ -343,6 +343,10 @@ def package_qa_check_license(workdir, d):
     sane = True
 
     lic_files = bb.data.getVar('LIC_FILES_CHKSUM', d, True)
+    
+    if lic_files.lower() == 'n/a':
+	return True
+
     pn = bb.data.getVar('PN', d, True)
 
     if not lic_files:
-- 
1.6.3.3


