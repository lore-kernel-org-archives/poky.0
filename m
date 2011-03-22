Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id B4E924C80132
	for <poky@yoctoproject.org>; Tue, 22 Mar 2011 04:21:03 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2M9L3A3010209
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 22 Mar 2011 02:21:03 -0700 (PDT)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Tue, 22 Mar 2011 02:21:02 -0700
Message-ID: <63e287c79eb652707fb451234dc2094b6ffad5c0.1300785298.git.kai.kang@windriver.com>
In-Reply-To: <cover.1300785298.git.kai.kang@windriver.com>
References: <cover.1300785298.git.kai.kang@windriver.com>
Old-Date: Tue, 22 Mar 2011 16:55:10 +0800
Date: Tue, 22 Mar 2011 17:18:18 +0800
To: <poky@yoctoproject.org>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Subject: [PATCH 1/1] xdg-utils: add xdg-utils to pass the lsb test
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
X-List-Received-Date: Tue, 22 Mar 2011 09:21:03 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

xdg-utils provides xdg-* scripts to pass the LSB 4.1 command check
Merge from OE and add DESCRIPTION, PR and LIC_FILES_CHKSUM.

(From OE-Core rev: 44985d56bc556786812a0a02d6219afd31a7381d)

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 meta/recipes-extended/xdg-utils/xdg-utils_1.0.2.bb |   26 ++++++++++++++++++++
 1 files changed, 26 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-extended/xdg-utils/xdg-utils_1.0.2.bb

diff --git a/meta/recipes-extended/xdg-utils/xdg-utils_1.0.2.bb b/meta/recipes-extended/xdg-utils/xdg-utils_1.0.2.bb
new file mode 100644
index 0000000..695e4f3
--- /dev/null
+++ b/meta/recipes-extended/xdg-utils/xdg-utils_1.0.2.bb
@@ -0,0 +1,26 @@
+SUMMARY = "Basic desktop integration functions"
+
+DESCRIPTION = "The xdg-utils package is a set of simple scripts that provide basic \
+desktop integration functions for any Free Desktop, such as Linux. \
+They are intended to provide a set of defacto standards. \
+The following scripts are provided at this time: \
+xdg-desktop-icon \     
+xdg-desktop-menu \  
+xdg-email \ 
+xdg-icon-resource \
+xdg-mime \       
+xdg-open \     
+xdg-screensaver \ 
+"
+
+PR="r0"
+
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=a5367a90934098d6b05af3b746405014"
+
+SRC_URI = "http://portland.freedesktop.org/download/${PN}-${PV}.tgz"
+
+inherit autotools
+
+SRC_URI[md5sum] = "348a5b91dc66426505022c74a64b2940"
+SRC_URI[sha256sum] = "21aeb7d16b2529b8d3975118f59eec09953e09f9a68d718159e98c90474b01ac"
-- 
1.7.1


