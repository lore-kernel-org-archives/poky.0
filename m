Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BB18E013FE
	for <poky@yoctoproject.org>; Mon, 16 Apr 2012 00:55:13 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 16 Apr 2012 00:55:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="142174541"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.11])
	by fmsmga001.fm.intel.com with ESMTP; 16 Apr 2012 00:55:12 -0700
From: Dongxiao Xu <dongxiao.xu@intel.com>
To: poky@yoctoproject.org
Date: Mon, 16 Apr 2012 15:52:16 +0800
Message-Id: <4fed98c4af3f78a7c76e92a57f714f4d93b3dd1f.1334562500.git.dongxiao.xu@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1334562500.git.dongxiao.xu@intel.com>
References: <cover.1334562500.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1334562500.git.dongxiao.xu@intel.com>
References: <cover.1334562500.git.dongxiao.xu@intel.com>
Subject: [PATCH 1/1] meta-yocto: Move OELAYOUT_ABI definition to poky.conf
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
X-List-Received-Date: Mon, 16 Apr 2012 07:55:13 -0000

The ABI version definition should go along with the DISTRO variable
since it impact the TMPDIR definition.

Otherwise, if a user used to work with pure OE-Core, and then he/she
added meta-yocto layer, it will report ABI version incompatibility
issue. This is because ABI is changed to "8" by adding meta-yocto layer,
however the DISTRO variable is not defined and TMPDIR is still
"tmp-eglibc".

Defining the OELAYOUT_ABI variable in poky.conf could fix this issue.

This fixes [YOCTO #2303]

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta-yocto/conf/abi_version.conf |    7 -------
 meta-yocto/conf/distro/poky.conf |    7 +++++++
 2 files changed, 7 insertions(+), 7 deletions(-)
 delete mode 100644 meta-yocto/conf/abi_version.conf

diff --git a/meta-yocto/conf/abi_version.conf b/meta-yocto/conf/abi_version.conf
deleted file mode 100644
index 83b668a..0000000
--- a/meta-yocto/conf/abi_version.conf
+++ /dev/null
@@ -1,7 +0,0 @@
-#
-# OELAYOUT_ABI allows us to notify users when the format of TMPDIR changes in 
-# an incompatible way. Such changes should usually be detailed in the commit
-# that breaks the format and have been previously discussed on the mailing list 
-# with general agreement from the core team.
-#
-OELAYOUT_ABI = "8"
diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index e4d7c1d..e51ccdf 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -67,3 +67,10 @@ CONNECTIVITY_CHECK_URIS ?= "git://git.yoctoproject.org/yocto-firewall-test;proto
 
 # Default hash policy for distro
 BB_SIGNATURE_HANDLER ?= 'OEBasicHash'
+#
+# OELAYOUT_ABI allows us to notify users when the format of TMPDIR changes in 
+# an incompatible way. Such changes should usually be detailed in the commit
+# that breaks the format and have been previously discussed on the mailing list 
+# with general agreement from the core team.
+#
+OELAYOUT_ABI = "8"
-- 
1.7.4.1


