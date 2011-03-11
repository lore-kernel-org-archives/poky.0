Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6732F4C804B8
	for <poky@lists.pokylinux.org>; Thu, 10 Mar 2011 18:03:40 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2B03ZHK021577
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@lists.pokylinux.org>; Thu, 10 Mar 2011 16:03:35 -0800 (PST)
Received: from localhost.localdomain (172.25.34.61) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Thu, 10 Mar 2011 16:03:34 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: <poky@lists.pokylinux.org>
Date: Thu, 10 Mar 2011 18:03:54 -0600
Message-ID: <466cc2565c4497bd56351049186543b9bf53fc0d.1299801529.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1299801529.git.mark.hatle@windriver.com>
References: <cover.1299801529.git.mark.hatle@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [172.25.34.61]
Subject: [PATCH 4/4] gcc-runtime: Fix dbg files
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
X-List-Received-Date: Fri, 11 Mar 2011 00:03:40 -0000
Content-Type: text/plain

In order to debug certain C++ items, you need the helper python
components.  These components should live in the -dbg package, ensure
they are added to the recipe.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/recipes-devtools/gcc/gcc-package-runtime.inc |    5 +++++
 meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb    |    2 +-
 2 files changed, 6 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/gcc/gcc-package-runtime.inc b/meta/recipes-devtools/gcc/gcc-package-runtime.inc
index 04c70c0..51483f9 100644
--- a/meta/recipes-devtools/gcc/gcc-package-runtime.inc
+++ b/meta/recipes-devtools/gcc/gcc-package-runtime.inc
@@ -15,6 +15,11 @@ PACKAGES = "\
 # The base package doesn't exist, so we clear the recommends.
 RRECOMMENDS_${PN}-dbg = ""
 
+# include python debugging scripts
+FILES_${PN}-dbg += "\
+  ${libdir}/libstdc++.so.*-gdb.py \
+  ${datadir}/gcc-${PV}/python/libstdcxx"
+
 FILES_libg2c = "${target_libdir}/libg2c.so.*"
 FILES_libg2c-dev = "\
   ${libdir}/libg2c.so \
diff --git a/meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb
index c1e680d..9eb658b 100644
--- a/meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb
@@ -1,4 +1,4 @@
-PR = "r3"
+PR = "r4"
 
 require gcc-${PV}.inc
 require gcc-configure-runtime.inc
-- 
1.7.3.4


