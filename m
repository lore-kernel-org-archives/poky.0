Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4701EE01469
	for <poky@yoctoproject.org>; Thu,  6 Dec 2012 21:06:27 -0800 (PST)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 12CFF3040D
	for <poky@yoctoproject.org>; Fri,  7 Dec 2012 00:06:17 -0500 (EST)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Thu,  6 Dec 2012 21:05:43 -0800
Message-Id: <aa94489157f937f2443691f549d93adcd3790c6c.1354856621.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1354856621.git.scott.a.garman@intel.com>
References: <cover.1354856621.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1354856621.git.scott.a.garman@intel.com>
References: <cover.1354856621.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 12CFF3040D.6638E
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 10/18] libproxy: Fix for CVE-2012-4504
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
X-List-Received-Date: Fri, 07 Dec 2012 05:06:27 -0000

From: "yanjun.zhu" <yanjun.zhu@windriver.com>

Reference:https://code.google.com/p/libproxy/source/detail?r=853

Stack-based buffer overflow in the url::get_pac function in url.cpp
in libproxy 0.4.x before 0.4.9 allows remote servers to have an
unspecified impact via a large proxy.pac file.

http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2012-4504

[YOCTO #3487]

Fixes denzil [YOCTO #3511]

Signed-off-by: yanjun.zhu <yanjun.zhu@windriver.com>
---
 .../libproxy/libproxy-0.4.7-CVE-2012-4504.patch    |   29 ++++++++++++++++++++
 meta/recipes-support/libproxy/libproxy_0.4.7.bb    |    1 +
 2 files changed, 30 insertions(+)
 create mode 100644 meta/recipes-support/libproxy/libproxy/libproxy-0.4.7-CVE-2012-4504.patch

diff --git a/meta/recipes-support/libproxy/libproxy/libproxy-0.4.7-CVE-2012-4504.patch b/meta/recipes-support/libproxy/libproxy/libproxy-0.4.7-CVE-2012-4504.patch
new file mode 100644
index 0000000..7f2d93a
--- /dev/null
+++ b/meta/recipes-support/libproxy/libproxy/libproxy-0.4.7-CVE-2012-4504.patch
@@ -0,0 +1,29 @@
+Upstream-Status: Backport
+
+libproxy - CVE-2012-4504:
+
+Reference:https://code.google.com/p/libproxy/source/detail?r=853
+
+Stack-based buffer overflow in the url::get_pac function in url.cpp
+in libproxy 0.4.x before 0.4.9 allows remote servers to have an
+unspecified impact via a large proxy.pac file.
+
+http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2012-4504
+
+Signed-off-by: yanjun.zhu <yanjun.zhu@windriver.com> 
+
+diff -urpN a/libproxy/url.cpp b/libproxy/url.cpp
+--- a/libproxy/url.cpp	2012-11-26 10:08:47.000000000 +0800
++++ b/libproxy/url.cpp	2012-11-26 10:05:54.000000000 +0800
+@@ -472,9 +472,10 @@ char* url::get_pac() {
+ 				// Add this chunk to our content length,
+ 				// ensuring that we aren't over our max size
+ 				content_length += chunk_length;
+-				if (content_length >= PAC_MAX_SIZE) break;
+ 			}
+ 
++			if (content_length >= PAC_MAX_SIZE) break;
++
+ 			while (recvd != content_length) {
+ 				int r = recv(sock, buffer + recvd, content_length - recvd, 0);
+ 				if (r < 0) break;
diff --git a/meta/recipes-support/libproxy/libproxy_0.4.7.bb b/meta/recipes-support/libproxy/libproxy_0.4.7.bb
index e3721a8..fc32f57 100644
--- a/meta/recipes-support/libproxy/libproxy_0.4.7.bb
+++ b/meta/recipes-support/libproxy/libproxy_0.4.7.bb
@@ -13,6 +13,7 @@ PR = "r4"
 SRC_URI = "http://libproxy.googlecode.com/files/libproxy-${PV}.tar.gz \
            file://g++-namepace.patch \
            file://libproxy_fix_for_gcc4.7.patch \
+           file://libproxy-0.4.7-CVE-2012-4504.patch \
           "
 
 SRC_URI[md5sum] = "509e03a488a61cd62bfbaf3ab6a2a7a5"
-- 
1.7.9.5


