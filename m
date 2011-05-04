Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id E1E3A4C80FBB
	for <poky@yoctoproject.org>; Wed,  4 May 2011 05:56:24 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p44AuO8t016665
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 4 May 2011 03:56:24 -0700 (PDT)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 4 May 2011 03:56:23 -0700
Message-ID: <929beade6790c0f4ddbebe2109a0873a510eee62.1304503987.git.kai.kang@windriver.com>
In-Reply-To: <cover.1304503987.git.kai.kang@windriver.com>
References: <cover.1304503987.git.kai.kang@windriver.com>
Old-Date: Tue, 3 May 2011 16:45:21 +0800
Date: Wed, 4 May 2011 18:56:19 +0800
To: <saul.wold@intel.com>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Cc: poky@yoctoproject.org
Subject: [PATCH 1/2] foomatic-filters: added to pass LSB commands check
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
X-List-Received-Date: Wed, 04 May 2011 10:56:25 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

foomatic-filters provided foomatic-rip to pass LSB commands check
Part fixes [Yocto 520]

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 .../foomatic/foomatic-filters_4.0.7.bb             |   23 ++++++++++++++++++++
 1 files changed, 23 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-extended/foomatic/foomatic-filters_4.0.7.bb

diff --git a/meta/recipes-extended/foomatic/foomatic-filters_4.0.7.bb b/meta/recipes-extended/foomatic/foomatic-filters_4.0.7.bb
new file mode 100644
index 0000000..8d70400
--- /dev/null
+++ b/meta/recipes-extended/foomatic/foomatic-filters_4.0.7.bb
@@ -0,0 +1,23 @@
+SUMMARY = "OpenPrinting printer support - filters"
+DESCRIPTION = "Foomatic is a printer database designed to make it easier to set up \
+common printers for use with UNIX-like operating systems.\
+It provides the "glue" between a print spooler (like CUPS or lpr) and \
+the printer, by processing files sent to the printer. \
+ \
+This package consists of filters used by the printer spoolers \
+to convert the incoming PostScript data into the printer's native \
+format using a printer-specific, but spooler-independent PPD file. \
+"
+
+DEPENDS += "cups perl libxml2"
+PR = "r0"
+
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://${WORKDIR}/foomatic-filters-${PV}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
+
+SRC_URI = "http://www.openprinting.org/download/foomatic/foomatic-filters-${PV}.tar.gz"
+
+SRC_URI[md5sum] = "20abd25c1c98b2dae68709062a132a7d"
+SRC_URI[sha256sum] = "090313fae40b177f505d9c9b93d7a4d7188b6d5d18b6ae41ab24903ac983478d"
+
+inherit autotools
-- 
1.7.1


