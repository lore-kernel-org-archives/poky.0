Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id DD1124C80A89
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 12:45:22 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 01 Mar 2011 10:45:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,248,1297065600"; d="scan'208";a="395874439"
Received: from unknown (HELO helios) ([10.255.17.4])
	by azsmga001.ch.intel.com with SMTP; 01 Mar 2011 10:45:20 -0800
Received: by helios (sSMTP sendmail emulation); Tue, 01 Mar 2011 18:45:21 +0000
Message-Id: <a39c0384af57791b511793b674874ab868b72b43.1299004921.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1299004921.git.paul.eggleton@linux.intel.com>
References: <cover.1299004921.git.paul.eggleton@linux.intel.com>
Old-Date: Tue, 1 Mar 2011 18:34:53 +0000
Date: Tue, 01 Mar 2011 18:45:21 +0000
To: poky@yoctoproject.org
CC: 
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 2/2] zypper: add util-linux-uuidgen to RRECOMMENDS
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
X-List-Received-Date: Tue, 01 Mar 2011 18:45:23 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

zypper complains if uuidgen is not available, so add it to RRECOMMENDS
for the zypper package.

Addresses [BUGID #749]

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta/recipes-extended/zypper/zypper_git.bb |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-extended/zypper/zypper_git.bb b/meta/recipes-extended/zypper/zypper_git.bb
index 729eabd..af6bd49 100644
--- a/meta/recipes-extended/zypper/zypper_git.bb
+++ b/meta/recipes-extended/zypper/zypper_git.bb
@@ -5,8 +5,8 @@ LICENSE  = "GPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=3201406e350b39e05a82e28b5020f413"
 
 DEPENDS  = "libzypp augeas"
-RRECOMMENDS_${PN} = "procps"
-PR = "r3"
+RRECOMMENDS_${PN} = "procps util-linux-uuidgen"
+PR = "r4"
 
 inherit cmake
 
-- 
1.7.1


