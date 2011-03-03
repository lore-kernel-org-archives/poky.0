Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5242C4C80479
	for <poky@yoctoproject.org>; Wed,  2 Mar 2011 23:15:34 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p235FXGt009136
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 2 Mar 2011 21:15:33 -0800 (PST)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 2 Mar 2011 21:15:33 -0800
Message-ID: <9f99aa42abf4d0e7cf19837366cba1d64e213c3a.1299127174.git.kai.kang@windriver.com>
In-Reply-To: <cover.1299127174.git.kai.kang@windriver.com>
References: <cover.1299127174.git.kai.kang@windriver.com>
Old-Date: Thu, 3 Mar 2011 10:24:37 +0800
Date: Thu, 3 Mar 2011 13:15:29 +0800
To: <poky@yoctoproject.org>
CC: 
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Subject: [PATCH 1/3] recipe: add chkconfig for LSB command test
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
X-List-Received-Date: Thu, 03 Mar 2011 05:15:34 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

chkconfig is a system tool for maintaining the /etc/rc*.d hierarchy,
and LSB command test will check 2 links point to command  chkconfig

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 .../recipes-extended/chkconfig/chkconfig_1.3.49.bb |   27 ++++++++++++++++++++
 1 files changed, 27 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-extended/chkconfig/chkconfig_1.3.49.bb

diff --git a/meta/recipes-extended/chkconfig/chkconfig_1.3.49.bb b/meta/recipes-extended/chkconfig/chkconfig_1.3.49.bb
new file mode 100644
index 0000000..bbaba71
--- /dev/null
+++ b/meta/recipes-extended/chkconfig/chkconfig_1.3.49.bb
@@ -0,0 +1,27 @@
+SUMMARY = "A system tool for maintaining the /etc/rc*.d hierarchy"
+
+DESCRIPTION = "Chkconfig is a basic system utility.  It updates and queries runlevel \
+information for system services.  Chkconfig manipulates the numerous \
+symbolic links in /etc/rc.d, to relieve system administrators of some \
+of the drudgery of manually editing the symbolic links."
+
+HOMEPAGE = "http://fedorahosted.org/releases/c/h/chkconfig"
+
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=5574c6965ae5f583e55880e397fbb018"
+
+DEPENDS = "libnewt gettext popt"
+
+PR = "r0"
+
+SRC_URI = "http://fedorahosted.org/releases/c/h/chkconfig/${P}.tar.bz2"
+SRC_URI[md5sum] = "9b5e91d25f4f3b21f4c0bdf55a721431"
+SRC_URI[sha256sum] = "775100a9d6f70fbd8f33ed24b560b6842161fc496c21b1fc6d2aed646f9d855f"
+
+inherit autotools
+
+do_install_append() {
+#    mkdir -p ${D}/etc/rc.d/init.d
+#   mkdir -p  ${D}/etc/rc.d/rc{0,1,2,3,4,5,6}.d
+    mkdir -p ${D}/etc/chkconfig.d
+}
-- 
1.7.1


