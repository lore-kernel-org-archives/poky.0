Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 526E34C8090B
	for <poky@yoctoproject.org>; Wed,  9 Mar 2011 22:36:17 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 09 Mar 2011 20:36:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,294,1297065600"; d="scan'208";a="665782167"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.64])
	by fmsmga002.fm.intel.com with ESMTP; 09 Mar 2011 20:36:11 -0800
Message-Id: <456a96f9cb494c4625c5364237ee9138ef8527c6.1299731632.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1299731632.git.dongxiao.xu@intel.com>
References: <cover.1299731632.git.dongxiao.xu@intel.com>
Old-Date: Thu, 10 Mar 2011 12:33:26 +0800
Date: Thu, 10 Mar 2011 12:35:56 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 1/1] tinylogin: Fix rotate passwd check logic
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
X-List-Received-Date: Thu, 10 Mar 2011 04:36:17 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Fix rotate passwd check logic which will write data into un-allocated
memory.

This fixes [YOCTO #735]

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../tinylogin-1.4/passwd_rotate_check.patch        |   39 ++++++++++++++++++++
 meta/recipes-core/tinylogin/tinylogin_1.4.bb       |    5 ++-
 2 files changed, 42 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-core/tinylogin/tinylogin-1.4/passwd_rotate_check.patch

diff --git a/meta/recipes-core/tinylogin/tinylogin-1.4/passwd_rotate_check.patch b/meta/recipes-core/tinylogin/tinylogin-1.4/passwd_rotate_check.patch
new file mode 100644
index 0000000..c602493
--- /dev/null
+++ b/meta/recipes-core/tinylogin/tinylogin-1.4/passwd_rotate_check.patch
@@ -0,0 +1,39 @@
+Fix rotate check logic
+
+Rotate passwd checking code has logic error, which writes data into
+un-allocated memory. This patch fixes the issue.
+
+Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
+
+diff --git a/libbb/obscure.c b/libbb/obscure.c
+index 750b611..4a07b5f 100644
+--- a/libbb/obscure.c
++++ b/libbb/obscure.c
+@@ -135,7 +135,7 @@ password_check(const char *old, const char *newval, const struct passwd *pwdp)
+ {
+ 	const char *msg;
+ 	char *newmono, *wrapped;
+-	int lenwrap;
++	int lenold, lenwrap;
+ 
+ 	if (strcmp(newval, old) == 0)
+ 		return "no change";
+@@ -144,7 +144,8 @@ password_check(const char *old, const char *newval, const struct passwd *pwdp)
+ 
+ 	msg = NULL;
+ 	newmono = str_lower(xstrdup(newval));
+-	lenwrap = strlen(old) * 2 + 1;
++	lenold = strlen(old);
++	lenwrap = lenold * 2 + 1;
+ 	wrapped = (char *) xmalloc(lenwrap);
+ 	str_lower(strcpy(wrapped, old));
+ 
+@@ -158,7 +159,7 @@ password_check(const char *old, const char *newval, const struct passwd *pwdp)
+ 		msg = "too similiar";
+ 
+ 	else {
+-		safe_strncpy(wrapped + lenwrap, wrapped, lenwrap + 1);
++		safe_strncpy(wrapped + lenold, wrapped, lenold + 1);
+ 		if (strstr(wrapped, newmono))
+ 			msg = "rotated";
+ 	}
diff --git a/meta/recipes-core/tinylogin/tinylogin_1.4.bb b/meta/recipes-core/tinylogin/tinylogin_1.4.bb
index df626cf..0b51b25 100644
--- a/meta/recipes-core/tinylogin/tinylogin_1.4.bb
+++ b/meta/recipes-core/tinylogin/tinylogin_1.4.bb
@@ -7,14 +7,15 @@ and groups on an embedded system."
 HOMEPAGE = "http://tinylogin.busybox.net/"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM="file://LICENSE;md5=f1060fa3a366f098b5b1d8c2077ba269"
-PR = "r5"
+PR = "r6"
 
 SRC_URI = "http://tinylogin.busybox.net/downloads/tinylogin-${PV}.tar.bz2 \
 	file://cvs-20040608.patch;patch=1;pnum=1 \
 	file://add-system.patch;patch=1;pnum=1 \
 	file://adduser-empty_pwd.patch;patch=1 \
 	file://remove-index.patch;patch=1 \
-	file://use_O2_option.patch"
+	file://use_O2_option.patch \
+	file://passwd_rotate_check.patch"
 
 SRC_URI[md5sum] = "44da0ff2b727455669890b24305e351d"
 SRC_URI[sha256sum] = "5e542e4b7825305a3678bf73136c392feb0d44b8bbf926e8eda5453eea7ddd6b"
-- 
1.7.1


