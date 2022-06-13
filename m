Received: from smtp.hosts.co.uk (smtp.hosts.co.uk [85.233.160.19])
 by mx.groups.io with SMTP id smtpd.web08.3795.1655111666614101613
 for <poky@lists.yoctoproject.org>;
 Mon, 13 Jun 2022 02:14:27 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arkver.com, ip: 85.233.160.19, mailfrom: ian.dev@arkver.com)
Received: from [78.32.143.231] (helo=devbox3.arkver.dev)
	by smtp.hosts.co.uk with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim)
	(envelope-from <ian.dev@arkver.com>)
	id 1o0g9Q-0008DL-94
	for poky@lists.yoctoproject.org;
	Mon, 13 Jun 2022 10:14:25 +0100
From: ian.dev@arkver.com
To: poky@lists.yoctoproject.org
Subject: [PATCH] [honister] elfutils: Fix null pointer dereference with upstream patch.
Date: Mon, 13 Jun 2022 10:14:23 +0100
Message-Id: <41b44b09b021a586723372c6ab8a5c12bb2f06ee.1655111663.git.ian.dev@arkver.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Compilation with recent gcc flags a null pointer dereference warning
which is promoted to an error and causes failure to build.

Fixed in upstream patch by Mark Wielaard:
3d9f1288: [PATCH] elflint.c: Don't dereference databits if bad
This patch is included in 0.186 release but not in 0.185.

Patchfile here has the Changelog blob removed to allow it to apply.

Signed-off-by: Ian Jamison <ian.dev@arkver.com>
---
 .../elfutils/elfutils_0.185.bb                |  1 +
 ...001-dont-dereference-databits-if-bad.patch | 39 +++++++++++++++++++
 2 files changed, 40 insertions(+)
 create mode 100644 meta/recipes-devtools/elfutils/files/0001-dont-dereference-databits-if-bad.patch

diff --git a/meta/recipes-devtools/elfutils/elfutils_0.185.bb b/meta/recipes-devtools/elfutils/elfutils_0.185.bb
index f4769e3632..64a5038ed3 100644
--- a/meta/recipes-devtools/elfutils/elfutils_0.185.bb
+++ b/meta/recipes-devtools/elfutils/elfutils_0.185.bb
@@ -23,6 +23,7 @@ SRC_URI = "https://sourceware.org/elfutils/ftp/${PV}/${BP}.tar.bz2 \
            file://0001-tests-Makefile.am-compile-test_nlist-with-standard-C.patch \
            file://0001-debuginfod-debuginfod-client.c-correct-string-format.patch \
            file://glibc-2.34-fix.patch \
+           file://0001-dont-dereference-databits-if-bad.patch \
            "
 SRC_URI:append:libc-musl = " \
            file://0002-musl-libs.patch \
diff --git a/meta/recipes-devtools/elfutils/files/0001-dont-dereference-databits-if-bad.patch b/meta/recipes-devtools/elfutils/files/0001-dont-dereference-databits-if-bad.patch
new file mode 100644
index 0000000000..d80c7acad8
--- /dev/null
+++ b/meta/recipes-devtools/elfutils/files/0001-dont-dereference-databits-if-bad.patch
@@ -0,0 +1,39 @@
+From 3d9f12883d0c131bd4ab6045e1f60d3fe6d150ea Mon Sep 17 00:00:00 2001
+From: Mark Wielaard <mark@klomp.org>
+Date: Wed, 6 Oct 2021 23:37:42 +0200
+Subject: [PATCH] elflint.c: Don't dereference databits if bad
+
+elflint.c: In function 'check_sections':
+elflint.c:4105:48: error: null pointer dereference [-Werror=null-dereference]
+4105 |                                  idx < databits->d_size && ! bad;
+     |                                        ~~~~~~~~^~~~~~~~
+
+Fix this by testing for ! bad first.
+
+Reported-by: Jan-Benedict Glaw <jbglaw@lug-owl.de>
+Signed-off-by: Mark Wielaard <mark@klomp.org>
+---
+
+NB: Upstream patch with Changelog blob removed since it doesn't apply cleanly.
+    Diffstat below is the original.
+
+ src/ChangeLog | 4 ++++
+ src/elflint.c | 2 +-
+ 2 files changed, 5 insertions(+), 1 deletion(-)
+
+diff --git a/src/elflint.c b/src/elflint.c
+index 1ce756847..ef7725ce7 100644
+--- a/src/elflint.c
++++ b/src/elflint.c
+@@ -4102,7 +4102,7 @@ section [%2zu] '%s' has type NOBITS but is read from the file in segment of prog
+ 			    bad = (databits == NULL
+ 				   || databits->d_size != shdr->sh_size);
+ 			    for (size_t idx = 0;
+-				 idx < databits->d_size && ! bad;
++				 ! bad && idx < databits->d_size;
+ 				 idx++)
+ 			      bad = ((char *) databits->d_buf)[idx] != 0;
+ 
+-- 
+2.31.1
+
-- 
2.36.1

