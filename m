Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B1CE14C80ABF
	for <poky@yoctoproject.org>; Wed,  2 Mar 2011 12:00:38 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 02 Mar 2011 10:00:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,254,1297065600"; d="scan'208";a="663113271"
Received: from unknown (HELO localhost) ([10.255.12.100])
	by fmsmga002.fm.intel.com with ESMTP; 02 Mar 2011 10:00:37 -0800
Message-Id: <93fbcda210ba931e297205bb5094bce12a2b4666.1299088354.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299088353.git.sgw@linux.intel.com>
References: <cover.1299088353.git.sgw@linux.intel.com>
Old-Date: Tue, 1 Mar 2011 18:34:53 +0000
Date: Wed, 02 Mar 2011 10:00:37 -0800
To: openembedded-core@lists.openembedded.org,poky@yoctoproject.org
From: Saul Wold <sgw@linux.intel.com>
X-Mailman-Approved-At: Wed, 02 Mar 2011 12:01:14 -0600
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 22/26] zypper: add util-linux-uuidgen to RRECOMMENDS
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
X-List-Received-Date: Wed, 02 Mar 2011 18:00:38 -0000

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


