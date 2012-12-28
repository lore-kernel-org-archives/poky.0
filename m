Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35F09E01462
	for <poky@yoctoproject.org>; Fri, 28 Dec 2012 13:45:29 -0800 (PST)
Received: from localhost (c-50-137-42-92.hsd1.or.comcast.net [50.137.42.92])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 97AAA2FEF2
	for <poky@yoctoproject.org>; Fri, 28 Dec 2012 16:45:20 -0500 (EST)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Fri, 28 Dec 2012 13:44:25 -0800
Message-Id: <d9e72c2db7bf3a16c21fd1604355e85b77bb7985.1356731004.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1356731004.git.scott.a.garman@intel.com>
References: <cover.1356731004.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1356731004.git.scott.a.garman@intel.com>
References: <cover.1356731004.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 97AAA2FEF2.6313A
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 19/23] libxml2: patch for CVE-2012-2871
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
X-List-Received-Date: Fri, 28 Dec 2012 21:45:29 -0000

the patch come from:
http://src.chromium.org/viewvc/chrome/trunk/src/third_party/libxml/ \
src/include/libxml/tree.h?r1=56276&r2=149930

libxml2 2.9.0-rc1 and earlier, as used in Google Chrome before
21.0.1180.89, does not properly support a cast of an unspecified
variable during handling of XSL transforms, which allows remote
attackers to cause a denial of service or possibly have unknown other
impact via a crafted document, related to the _xmlNs data structure in
include/libxml/tree.h.

http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2012-2871

[YOCTO #3580]
[ CQID: WIND00376779 ]

Signed-off-by: Li Wang <li.wang at windriver.com>

This fixes denzil bug [YOCTO #3648]

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../libxml/libxml2/libxml2-CVE-2012-2871.patch     |   36 ++++++++++++++++++++
 meta/recipes-core/libxml/libxml2_2.8.0.bb          |    4 ++-
 2 files changed, 39 insertions(+), 1 deletion(-)
 create mode 100644 meta/recipes-core/libxml/libxml2/libxml2-CVE-2012-2871.patch

diff --git a/meta/recipes-core/libxml/libxml2/libxml2-CVE-2012-2871.patch b/meta/recipes-core/libxml/libxml2/libxml2-CVE-2012-2871.patch
new file mode 100644
index 0000000..41b19d0
--- /dev/null
+++ b/meta/recipes-core/libxml/libxml2/libxml2-CVE-2012-2871.patch
@@ -0,0 +1,36 @@
+libxml2 CVE-2012-2871
+
+the patch come from:
+http://src.chromium.org/viewvc/chrome/trunk/src/third_party/libxml/src \
+/include/libxml/tree.h?r1=56276&r2=149930
+
+libxml2 2.9.0-rc1 and earlier, as used in Google Chrome before 21.0.1180.89,
+does not properly support a cast of an unspecified variable during handling
+of XSL transforms, which allows remote attackers to cause a denial of service
+or possibly have unknown other impact via a crafted document, related to the
+_xmlNs data structure in include/libxml/tree.h.
+
+http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2012-2871
+
+Upstream-Status: Pending
+
+Signed-off-by: Li Wang <li.wang@windriver.com>
+---
+ include/libxml/tree.h |    1 +
+ 1 files changed, 1 insertions(+), 0 deletions(-)
+
+diff --git a/include/libxml/tree.h b/include/libxml/tree.h
+index b733589..5422dda 100644
+--- a/include/libxml/tree.h
++++ b/include/libxml/tree.h
+@@ -351,6 +351,7 @@ struct _xmlNs {
+     struct _xmlNs  *next;	/* next Ns link for this node  */
+     xmlNsType      type;	/* global or local */
+     const xmlChar *href;	/* URL for the namespace */
++    const char *dummy_children;	/* lines up with node->children */
+     const xmlChar *prefix;	/* prefix for the namespace */
+     void           *_private;   /* application data */
+     struct _xmlDoc *context;		/* normally an xmlDoc */
+-- 
+1.7.0.5
+
diff --git a/meta/recipes-core/libxml/libxml2_2.8.0.bb b/meta/recipes-core/libxml/libxml2_2.8.0.bb
index fe9ec05..f2790b3 100644
--- a/meta/recipes-core/libxml/libxml2_2.8.0.bb
+++ b/meta/recipes-core/libxml/libxml2_2.8.0.bb
@@ -1,6 +1,8 @@
 require libxml2.inc
 
-PR = "r1"
+PR = "r2"
 
 SRC_URI[md5sum] = "c62106f02ee00b6437f0fb9d370c1093"
 SRC_URI[sha256sum] = "f2e2d0e322685193d1affec83b21dc05d599e17a7306d7b90de95bb5b9ac622a"
+
+SRC_URI += "file://libxml2-CVE-2012-2871.patch"
-- 
1.7.9.5


