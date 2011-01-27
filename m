Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6E5384C811BE
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 11:12:00 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 27 Jan 2011 09:12:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,386,1291622400"; d="scan'208";a="651794587"
Received: from unknown (HELO localhost) ([10.255.16.153])
	by fmsmga002.fm.intel.com with ESMTP; 27 Jan 2011 09:11:59 -0800
Message-Id: <292977fcb5a2b0ac5e91ca3d6dd617072da5ade0.1296147101.git.josh@linux.intel.com>
In-Reply-To: <cover.1296147101.git.josh@linux.intel.com>
References: <cover.1296147101.git.josh@linux.intel.com>
Old-Date: Thu, 27 Jan 2011 16:41:07 +0000
Date: Thu, 27 Jan 2011 17:11:53 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 1/1] nativesdk: ensure packages can be split
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
X-List-Received-Date: Thu, 27 Jan 2011 17:12:00 -0000

From: Joshua Lock <josh@linux.intel.com>

By setting FILES_${PN} += "${prefix}" we force most files to be included in
the base package for -nativesdk.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 meta/classes/nativesdk.bbclass |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/meta/classes/nativesdk.bbclass b/meta/classes/nativesdk.bbclass
index 587a907..5c76d60 100644
--- a/meta/classes/nativesdk.bbclass
+++ b/meta/classes/nativesdk.bbclass
@@ -45,7 +45,6 @@ base_prefix = "${SDKPATHNATIVE}"
 prefix = "${SDKPATHNATIVE}${prefix_nativesdk}"
 exec_prefix = "${SDKPATHNATIVE}${prefix_nativesdk}"
 
-FILES_${PN} += "${prefix}"
 FILES_${PN}-dbg += "${prefix}/.debug \
                     ${prefix}/bin/.debug \
                    "
-- 
1.7.3.5


