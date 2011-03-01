Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id F1EB14C80546
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 21:34:37 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 28 Feb 2011 19:34:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,245,1297065600"; d="scan'208";a="714436942"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga001.jf.intel.com with ESMTP; 28 Feb 2011 19:34:28 -0800
From: Yu Ke <ke.yu@intel.com>
To: poky@yoctoproject.org
Date: Tue,  1 Mar 2011 11:39:42 +0800
Message-Id: <c9235efeccc8b8d54a08fc1d35eb5087352722f9.1298950650.git.ke.yu@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1298950650.git.ke.yu@intel.com>
References: <cover.1298950650.git.ke.yu@intel.com>
Subject: [PATCH 1/1] shadow: upgrade to 4.1.4.3 to fix security vulnerability
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
X-List-Received-Date: Tue, 01 Mar 2011 03:34:38 -0000

For CVE-2011-0721: http://lists.debian.org/debian-security-announce/2011/msg00030.html

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../{shadow-4.1.4.2 => files}/login_defs_pam.sed   |    0
 .../shadow/{shadow-4.1.4.2 => files}/pam.d/chfn    |    0
 .../{shadow-4.1.4.2 => files}/pam.d/chpasswd       |    0
 .../shadow/{shadow-4.1.4.2 => files}/pam.d/chsh    |    0
 .../shadow/{shadow-4.1.4.2 => files}/pam.d/login   |    0
 .../{shadow-4.1.4.2 => files}/pam.d/newusers       |    0
 .../shadow/{shadow-4.1.4.2 => files}/pam.d/passwd  |    0
 .../shadow/{shadow-4.1.4.2 => files}/pam.d/su      |    0
 .../shadow/{shadow-4.1.4.2 => files}/securetty     |    0
 .../shadow-4.1.3-dots-in-usernames.patch           |    0
 .../shadow-4.1.4.2-env-reset-keep-locale.patch     |    0
 .../shadow-4.1.4.2-groupmod-pam-check.patch        |    0
 .../shadow-4.1.4.2-su_no_sanitize_env.patch        |    0
 .../shadow.automake-1.11.patch                     |    0
 .../{shadow_4.1.4.2.bb => shadow_4.1.4.3.bb}       |    4 ++--
 15 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-extended/shadow/{shadow-4.1.4.2 => files}/login_defs_pam.sed (100%)
 rename meta/recipes-extended/shadow/{shadow-4.1.4.2 => files}/pam.d/chfn (100%)
 rename meta/recipes-extended/shadow/{shadow-4.1.4.2 => files}/pam.d/chpasswd (100%)
 rename meta/recipes-extended/shadow/{shadow-4.1.4.2 => files}/pam.d/chsh (100%)
 rename meta/recipes-extended/shadow/{shadow-4.1.4.2 => files}/pam.d/login (100%)
 rename meta/recipes-extended/shadow/{shadow-4.1.4.2 => files}/pam.d/newusers (100%)
 rename meta/recipes-extended/shadow/{shadow-4.1.4.2 => files}/pam.d/passwd (100%)
 rename meta/recipes-extended/shadow/{shadow-4.1.4.2 => files}/pam.d/su (100%)
 rename meta/recipes-extended/shadow/{shadow-4.1.4.2 => files}/securetty (100%)
 rename meta/recipes-extended/shadow/{shadow-4.1.4.2 => files}/shadow-4.1.3-dots-in-usernames.patch (100%)
 rename meta/recipes-extended/shadow/{shadow-4.1.4.2 => files}/shadow-4.1.4.2-env-reset-keep-locale.patch (100%)
 rename meta/recipes-extended/shadow/{shadow-4.1.4.2 => files}/shadow-4.1.4.2-groupmod-pam-check.patch (100%)
 rename meta/recipes-extended/shadow/{shadow-4.1.4.2 => files}/shadow-4.1.4.2-su_no_sanitize_env.patch (100%)
 rename meta/recipes-extended/shadow/{shadow-4.1.4.2 => files}/shadow.automake-1.11.patch (100%)
 rename meta/recipes-extended/shadow/{shadow_4.1.4.2.bb => shadow_4.1.4.3.bb} (70%)

diff --git a/meta/recipes-extended/shadow/shadow-4.1.4.2/login_defs_pam.sed b/meta/recipes-extended/shadow/files/login_defs_pam.sed
similarity index 100%
rename from meta/recipes-extended/shadow/shadow-4.1.4.2/login_defs_pam.sed
rename to meta/recipes-extended/shadow/files/login_defs_pam.sed
diff --git a/meta/recipes-extended/shadow/shadow-4.1.4.2/pam.d/chfn b/meta/recipes-extended/shadow/files/pam.d/chfn
similarity index 100%
rename from meta/recipes-extended/shadow/shadow-4.1.4.2/pam.d/chfn
rename to meta/recipes-extended/shadow/files/pam.d/chfn
diff --git a/meta/recipes-extended/shadow/shadow-4.1.4.2/pam.d/chpasswd b/meta/recipes-extended/shadow/files/pam.d/chpasswd
similarity index 100%
rename from meta/recipes-extended/shadow/shadow-4.1.4.2/pam.d/chpasswd
rename to meta/recipes-extended/shadow/files/pam.d/chpasswd
diff --git a/meta/recipes-extended/shadow/shadow-4.1.4.2/pam.d/chsh b/meta/recipes-extended/shadow/files/pam.d/chsh
similarity index 100%
rename from meta/recipes-extended/shadow/shadow-4.1.4.2/pam.d/chsh
rename to meta/recipes-extended/shadow/files/pam.d/chsh
diff --git a/meta/recipes-extended/shadow/shadow-4.1.4.2/pam.d/login b/meta/recipes-extended/shadow/files/pam.d/login
similarity index 100%
rename from meta/recipes-extended/shadow/shadow-4.1.4.2/pam.d/login
rename to meta/recipes-extended/shadow/files/pam.d/login
diff --git a/meta/recipes-extended/shadow/shadow-4.1.4.2/pam.d/newusers b/meta/recipes-extended/shadow/files/pam.d/newusers
similarity index 100%
rename from meta/recipes-extended/shadow/shadow-4.1.4.2/pam.d/newusers
rename to meta/recipes-extended/shadow/files/pam.d/newusers
diff --git a/meta/recipes-extended/shadow/shadow-4.1.4.2/pam.d/passwd b/meta/recipes-extended/shadow/files/pam.d/passwd
similarity index 100%
rename from meta/recipes-extended/shadow/shadow-4.1.4.2/pam.d/passwd
rename to meta/recipes-extended/shadow/files/pam.d/passwd
diff --git a/meta/recipes-extended/shadow/shadow-4.1.4.2/pam.d/su b/meta/recipes-extended/shadow/files/pam.d/su
similarity index 100%
rename from meta/recipes-extended/shadow/shadow-4.1.4.2/pam.d/su
rename to meta/recipes-extended/shadow/files/pam.d/su
diff --git a/meta/recipes-extended/shadow/shadow-4.1.4.2/securetty b/meta/recipes-extended/shadow/files/securetty
similarity index 100%
rename from meta/recipes-extended/shadow/shadow-4.1.4.2/securetty
rename to meta/recipes-extended/shadow/files/securetty
diff --git a/meta/recipes-extended/shadow/shadow-4.1.4.2/shadow-4.1.3-dots-in-usernames.patch b/meta/recipes-extended/shadow/files/shadow-4.1.3-dots-in-usernames.patch
similarity index 100%
rename from meta/recipes-extended/shadow/shadow-4.1.4.2/shadow-4.1.3-dots-in-usernames.patch
rename to meta/recipes-extended/shadow/files/shadow-4.1.3-dots-in-usernames.patch
diff --git a/meta/recipes-extended/shadow/shadow-4.1.4.2/shadow-4.1.4.2-env-reset-keep-locale.patch b/meta/recipes-extended/shadow/files/shadow-4.1.4.2-env-reset-keep-locale.patch
similarity index 100%
rename from meta/recipes-extended/shadow/shadow-4.1.4.2/shadow-4.1.4.2-env-reset-keep-locale.patch
rename to meta/recipes-extended/shadow/files/shadow-4.1.4.2-env-reset-keep-locale.patch
diff --git a/meta/recipes-extended/shadow/shadow-4.1.4.2/shadow-4.1.4.2-groupmod-pam-check.patch b/meta/recipes-extended/shadow/files/shadow-4.1.4.2-groupmod-pam-check.patch
similarity index 100%
rename from meta/recipes-extended/shadow/shadow-4.1.4.2/shadow-4.1.4.2-groupmod-pam-check.patch
rename to meta/recipes-extended/shadow/files/shadow-4.1.4.2-groupmod-pam-check.patch
diff --git a/meta/recipes-extended/shadow/shadow-4.1.4.2/shadow-4.1.4.2-su_no_sanitize_env.patch b/meta/recipes-extended/shadow/files/shadow-4.1.4.2-su_no_sanitize_env.patch
similarity index 100%
rename from meta/recipes-extended/shadow/shadow-4.1.4.2/shadow-4.1.4.2-su_no_sanitize_env.patch
rename to meta/recipes-extended/shadow/files/shadow-4.1.4.2-su_no_sanitize_env.patch
diff --git a/meta/recipes-extended/shadow/shadow-4.1.4.2/shadow.automake-1.11.patch b/meta/recipes-extended/shadow/files/shadow.automake-1.11.patch
similarity index 100%
rename from meta/recipes-extended/shadow/shadow-4.1.4.2/shadow.automake-1.11.patch
rename to meta/recipes-extended/shadow/files/shadow.automake-1.11.patch
diff --git a/meta/recipes-extended/shadow/shadow_4.1.4.2.bb b/meta/recipes-extended/shadow/shadow_4.1.4.3.bb
similarity index 70%
rename from meta/recipes-extended/shadow/shadow_4.1.4.2.bb
rename to meta/recipes-extended/shadow/shadow_4.1.4.3.bb
index 224ae5e..c8aa223 100644
--- a/meta/recipes-extended/shadow/shadow_4.1.4.2.bb
+++ b/meta/recipes-extended/shadow/shadow_4.1.4.3.bb
@@ -8,7 +8,7 @@ SRC_URI += "file://shadow.automake-1.11.patch \
 	    file://shadow-4.1.4.2-groupmod-pam-check.patch \
 	    file://shadow-4.1.4.2-su_no_sanitize_env.patch"
 
-SRC_URI[md5sum] = "d593a9cab93c48ee0a6ba056db8c1997"
-SRC_URI[sha256sum] = "97987f6a7967a85e6aa0dba2a1d52db8bd69af5a717391de5693db768fb78990"
+SRC_URI[md5sum] = "b8608d8294ac88974f27b20f991c0e79"
+SRC_URI[sha256sum] = "633f5bb4ea0c88c55f3642c97f9d25cbef74f82e0b4cf8d54e7ad6f9f9caa778"
 
 EXTRA_OECONF_libc-uclibc += " --with-nscd=no "
-- 
1.7.0.4


