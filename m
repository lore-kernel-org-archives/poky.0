Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCB67E0159B
	for <poky@yoctoproject.org>; Tue, 20 Aug 2013 01:40:08 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 20 Aug 2013 01:37:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,918,1367996400"; d="scan'208";a="390032287"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga002.jf.intel.com with ESMTP; 20 Aug 2013 01:40:08 -0700
Received: from localhost.localdomain (unknown [10.237.112.161])
	by linux.intel.com (Postfix) with ESMTP id E15976A4007;
	Tue, 20 Aug 2013 01:40:05 -0700 (PDT)
From: Stoicescu Cornel <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 20 Aug 2013 11:44:51 +0200
Message-Id: <afd80c05691efff43bdee86b5fba7f6cb1adfedc.1376923556.git.corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
References: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
In-Reply-To: <cover.1376923556.git.corneliux.stoicescu@intel.com>
References: <cover.1376923556.git.corneliux.stoicescu@intel.com>
Subject: [PATCH 009/186] separatebuilddir: add comments
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
X-List-Received-Date: Tue, 20 Aug 2013 08:40:08 -0000

From: Ross Burton <ross.burton@intel.com>

Add a comment explaining the libproxy failure, and note that wpa-supplicant doesn't support B!=S.

(From OE-Core rev: ba9b3465bcd639a78328e9d2540c14cddf53cae5)

Signed-off-by: Ross Burton <ross.burton@intel.com>
Signed-off-by: Saul Wold <sgw@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta/conf/distro/include/seperatebuilddir.inc |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/meta/conf/distro/include/seperatebuilddir.inc b/meta/conf/distro/include/seperatebuilddir.inc
index 979f44b..fbd5bdb 100644
--- a/meta/conf/distro/include/seperatebuilddir.inc
+++ b/meta/conf/distro/include/seperatebuilddir.inc
@@ -323,6 +323,7 @@ B_pn-libpcre = "${SEPB}"
 B_pn-libpcre-native = "${SEPB}"
 B_pn-libpng = "${SEPB}"
 B_pn-libpng-native = "${SEPB}"
+# Needs automatic support in cmake.bbclass
 #B_pn-libproxy = "${SEPB}"
 B_pn-libpthread-stubs = "${SEPB}"
 B_pn-libpthread-stubs-native = "${SEPB}"
@@ -773,3 +774,6 @@ B_pn-xz-native = "${SEPB}"
 B_pn-yasm = "${SEPB}"
 B_pn-yasm-native = "${SEPB}"
 B_pn-zaurusd = "${SEPB}"
+
+# Recipes that cannot by design use a separate build directory:
+# wpa-supplicant
-- 
1.7.9.5


