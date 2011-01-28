Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9B32C4C81295
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 23:50:34 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0S5oYqF020460
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 21:50:34 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 27 Jan 2011 21:50:34 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 27 Jan 2011 21:50:33 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Thu, 27 Jan 2011 23:46:29 -0600
Message-Id: <25e2b971033f0831a4ba469c8358af5b4e8d0820.1296193457.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1296193457.git.mark.hatle@windriver.com>
References: <cover.1296193457.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1296193457.git.mark.hatle@windriver.com>
References: <cover.1296193457.git.mark.hatle@windriver.com>
X-OriginalArrivalTime: 28 Jan 2011 05:50:33.0919 (UTC)
	FILETIME=[478D54F0:01CBBEAF]
Subject: [PATCH 3/3] rpm: suggested change
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
X-List-Received-Date: Fri, 28 Jan 2011 05:50:34 -0000

From: Qing He <qing.he@intel.com>

Signed-off-by: Qing He <qing.he@intel.com>
Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 .../rpm/rpm/header-include-fix.patch               |   24 ++++++++++++++++++++
 meta/recipes-devtools/rpm/rpm_5.4.0.bb             |    1 +
 2 files changed, 25 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-devtools/rpm/rpm/header-include-fix.patch

diff --git a/meta/recipes-devtools/rpm/rpm/header-include-fix.patch b/meta/recipes-devtools/rpm/rpm/header-include-fix.patch
new file mode 100644
index 0000000..92c534e
--- /dev/null
+++ b/meta/recipes-devtools/rpm/rpm/header-include-fix.patch
@@ -0,0 +1,24 @@
+diff --git a/rpmdb/rpmdb.h b/rpmdb/rpmdb.h
+index 0e1bdd7..8b522bb 100644
+--- a/rpmdb/rpmdb.h
++++ b/rpmdb/rpmdb.h
+@@ -9,6 +9,7 @@
+ 
+ #include <assert.h>
+ #include <mire.h>
++#include <errno.h>
+ 
+ #include <rpmtypes.h>
+ #include <rpmtag.h>	/* XXX Header typedef */
+diff --git a/rpmdb/rpmtag.h b/rpmdb/rpmtag.h
+index 8af6480..2166b4c 100644
+--- a/rpmdb/rpmtag.h
++++ b/rpmdb/rpmtag.h
+@@ -7,6 +7,7 @@
+ 
+ #include <rpmiotypes.h>
+ #include <rpmsw.h>
++#include <stdint.h>
+ 
+ #ifdef __cplusplus
+ extern "C" {
diff --git a/meta/recipes-devtools/rpm/rpm_5.4.0.bb b/meta/recipes-devtools/rpm/rpm_5.4.0.bb
index 541fb60..0f3425f 100644
--- a/meta/recipes-devtools/rpm/rpm_5.4.0.bb
+++ b/meta/recipes-devtools/rpm/rpm_5.4.0.bb
@@ -52,6 +52,7 @@ SRC_URI = "http://www.rpm5.org/files/rpm/rpm-5.4/rpm-5.4.0-0.20101229.src.rpm \
 	   file://perfile_rpmdeps.sh \
 	   file://rpm-autogen.patch \
 	   file://rpm-libsql-fix.patch \
+           file://header-include-fix.patch \
 	  "
 
 #           file://hdraddorappend.patch \
-- 
1.7.3.4


