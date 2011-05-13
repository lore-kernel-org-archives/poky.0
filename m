Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6B6234C8111E
	for <poky@yoctoproject.org>; Fri, 13 May 2011 02:56:48 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4D7ulhC002552
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 13 May 2011 00:56:47 -0700 (PDT)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 13 May 2011 00:56:47 -0700
Message-ID: <7d8bd25d3d5664125484582160518ce857cac2f5.1305266909.git.kai.kang@windriver.com>
In-Reply-To: <cover.1305266909.git.kai.kang@windriver.com>
References: <cover.1305266909.git.kai.kang@windriver.com>
Old-Date: Fri, 13 May 2011 10:06:44 +0800
Date: Fri, 13 May 2011 15:56:01 +0800
To: <sgw@linux.intel.com>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Cc: poky@yoctoproject.org
Subject: [PATCH 2/4] foomatic-filters: add a link to pass LSB printing test
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
X-List-Received-Date: Fri, 13 May 2011 07:56:48 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

LSB printing test will test a foomatic-rip under cups' directory,
so add it as link.
Part fixes [Yocto 904]

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 .../foomatic/foomatic-filters_4.0.7.bb             |    9 ++++++++-
 1 files changed, 8 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-extended/foomatic/foomatic-filters_4.0.7.bb b/meta/recipes-extended/foomatic/foomatic-filters_4.0.7.bb
index 8d70400..43e9c8d 100644
--- a/meta/recipes-extended/foomatic/foomatic-filters_4.0.7.bb
+++ b/meta/recipes-extended/foomatic/foomatic-filters_4.0.7.bb
@@ -10,7 +10,7 @@ format using a printer-specific, but spooler-independent PPD file. \
 "
 
 DEPENDS += "cups perl libxml2"
-PR = "r0"
+PR = "r1"
 
 LICENSE = "GPLv2+"
 LIC_FILES_CHKSUM = "file://${WORKDIR}/foomatic-filters-${PV}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
@@ -20,4 +20,11 @@ SRC_URI = "http://www.openprinting.org/download/foomatic/foomatic-filters-${PV}.
 SRC_URI[md5sum] = "20abd25c1c98b2dae68709062a132a7d"
 SRC_URI[sha256sum] = "090313fae40b177f505d9c9b93d7a4d7188b6d5d18b6ae41ab24903ac983478d"
 
+do_install_append_linuxstdbase() {
+    install -d ${D}${libdir}/cups/filter
+    ln -sf ../../../bin/foomatic-rip ${D}${libdir}/cups/filter
+}
+
+FILES_${PN} += "${libdir}/cups/filter/foomatic-rip"
+
 inherit autotools
-- 
1.7.1


