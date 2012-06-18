Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14D9CE0141D
	for <poky@yoctoproject.org>; Mon, 18 Jun 2012 12:57:01 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id DE67A30469
	for <poky@yoctoproject.org>; Mon, 18 Jun 2012 15:56:55 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 18 Jun 2012 12:56:40 -0700
Message-Id: <5b5895175b9fcb4da22cb84751e0f40216f29688.1340038494.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1340038493.git.scott.a.garman@intel.com>
References: <cover.1340038493.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1340038493.git.scott.a.garman@intel.com>
References: <cover.1340038493.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: DE67A30469.9BD59
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 8/8] eglibc: added ac_cv_path_ to CACHED_CONFIGUREVARS
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
X-List-Received-Date: Mon, 18 Jun 2012 19:57:01 -0000

From: Saul Wold <sgw@linux.intel.com>

On Fedora 17, bash has moved to /usr/bin/bash and the configure process finds it
on the host machine there, this ensures that it is set correctly for the target.

[YOCTO #2363]

(From OE-Core rev: 133c2a12d13028a3829c87a59a2ff4fe21f57260)

Signed-off-by: Saul Wold <sgw@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Reworked commit to fix merge conflicts with denzil branch.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/recipes-core/eglibc/eglibc.inc     |    2 ++
 meta/recipes-core/eglibc/eglibc_2.13.bb |    2 +-
 meta/recipes-core/eglibc/eglibc_2.15.bb |    2 +-
 3 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-core/eglibc/eglibc.inc b/meta/recipes-core/eglibc/eglibc.inc
index 8e3fe50..51061bc 100644
--- a/meta/recipes-core/eglibc/eglibc.inc
+++ b/meta/recipes-core/eglibc/eglibc.inc
@@ -32,6 +32,8 @@ require eglibc-options.inc
 
 LEAD_SONAME = "libc.so"
 
+CACHED_CONFIGUREVARS += "ac_cv_path_KSH=${base_bindir}/bash \
+                       ac_cv_path_BASH_SHELL=${base_bindir}/bash"
 GLIBC_EXTRA_OECONF ?= ""
 GLIBC_EXTRA_OECONF_virtclass-nativesdk = ""
 INHIBIT_DEFAULT_DEPS = "1"
diff --git a/meta/recipes-core/eglibc/eglibc_2.13.bb b/meta/recipes-core/eglibc/eglibc_2.13.bb
index 73cd0aa..690f99d 100644
--- a/meta/recipes-core/eglibc/eglibc_2.13.bb
+++ b/meta/recipes-core/eglibc/eglibc_2.13.bb
@@ -3,7 +3,7 @@ require eglibc.inc
 SRCREV = "15508"
 
 DEPENDS += "gperf-native"
-PR = "r27"
+PR = "r28"
 PR_append = "+svnr${SRCPV}"
 
 EGLIBC_BRANCH="eglibc-2_13"
diff --git a/meta/recipes-core/eglibc/eglibc_2.15.bb b/meta/recipes-core/eglibc/eglibc_2.15.bb
index 713efc3..f5219d1 100644
--- a/meta/recipes-core/eglibc/eglibc_2.15.bb
+++ b/meta/recipes-core/eglibc/eglibc_2.15.bb
@@ -3,7 +3,7 @@ require eglibc.inc
 SRCREV = "17386"
 
 DEPENDS += "gperf-native"
-PR = "r6"
+PR = "r7"
 PR_append = "+svnr${SRCPV}"
 
 EGLIBC_BRANCH="eglibc-2_15"
-- 
1.7.9.5


