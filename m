Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98E46E01353
	for <poky@yoctoproject.org>; Tue,  7 Feb 2012 14:50:20 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 07 Feb 2012 14:50:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="107498281"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.14.116])
	by orsmga002.jf.intel.com with ESMTP; 07 Feb 2012 14:50:20 -0800
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue,  7 Feb 2012 14:50:18 -0800
Message-Id: <d72afeede9fae3a9702754eb2c1eda68ee3d2a6c.1328654906.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.6.5
In-Reply-To: <cover.1328654906.git.sgw@linux.intel.com>
References: <cover.1328654906.git.sgw@linux.intel.com>
In-Reply-To: <cover.1328654906.git.sgw@linux.intel.com>
References: <cover.1328654906.git.sgw@linux.intel.com>
Subject: [PATCH 2/2] poky.conf: Fix the MIRROR URI
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
X-List-Received-Date: Tue, 07 Feb 2012 22:50:20 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta-yocto/conf/distro/poky.conf |   22 +++++++++++-----------
 1 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 596336e..1bf35b1 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -44,19 +44,19 @@ QEMU_TARGETS ?= "arm i386 mips mipsel ppc x86_64"
 # Other QEMU_TARGETS "mips64 mips64el sh4"
 
 PREMIRRORS ?= "\
-bzr://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n \
-cvs://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n \
-git://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n \
-hg://.*/.*    http://autobuilder.yoctoproject.org/sources/ \n \
-osc://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n \
-p4://.*/.*    http://autobuilder.yoctoproject.org/sources/ \n \
-svk://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n \
-svn://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n"
+bzr://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n \
+cvs://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n \
+git://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n \
+hg://.*/.*    http://downloads.yoctoproject.org/mirror/sources/ \n \
+osc://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n \
+p4://.*/.*    http://downloads.yoctoproject.org/mirror/sources/ \n \
+svk://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n \
+svn://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n"
 
 MIRRORS =+ "\
-ftp://.*/.*      http://autobuilder.yoctoproject.org/sources/ \n \
-http://.*/.*     http://autobuilder.yoctoproject.org/sources/ \n \
-https://.*/.*    http://autobuilder.yoctoproject.org/sources/ \n"
+ftp://.*/.*      http://downloads.yoctoproject.org/mirror/sources/ \n \
+http://.*/.*     http://downloads.yoctoproject.org/mirror/sources/ \n \
+https://.*/.*    http://downloads.yoctoproject.org/mirror/sources/ \n"
 
 # The CONNECTIVITY_CHECK_URI's are used to test whether we can succesfully
 # fetch from the network (and warn you if not). To disable the test set
-- 
1.7.6.5


