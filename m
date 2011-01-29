Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 18ECE4C81224
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 20:30:33 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 28 Jan 2011 18:30:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,395,1291622400"; d="scan'208";a="652317623"
Received: from unknown (HELO helios) ([10.255.16.169])
	by fmsmga002.fm.intel.com with SMTP; 28 Jan 2011 18:30:31 -0800
Received: by helios (sSMTP sendmail emulation); Sat, 29 Jan 2011 02:30:30 +0000
Message-Id: <bd465ae0fd1d03d1d21fa80144d82e2763214cf1.1296267951.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1296267951.git.paul.eggleton@linux.intel.com>
References: <cover.1296267951.git.paul.eggleton@linux.intel.com>
Old-Date: Fri, 28 Jan 2011 16:47:17 +0000
Date: Sat, 29 Jan 2011  2:30:30 +0000
To: poky@yoctoproject.org
CC: 
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 12/12] qt4: set RRECOMMENDS correctly for qt4 demos and examples packages
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
X-List-Received-Date: Sat, 29 Jan 2011 02:30:33 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

The demos and examples require a few optional plugins to operate correctly
(e.g. SQLite and JPEG support). The demos package requires the documentation
package to show descriptions for each demo/example, and assistant to show
the documentation.

Fixes [BUGID #492] and [BUGID #452].

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta/recipes-qt/qt4/qt4.inc |   10 ++++++++++
 1 files changed, 10 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-qt/qt4/qt4.inc b/meta/recipes-qt/qt4/qt4.inc
index f0957db..32dee4c 100644
--- a/meta/recipes-qt/qt4/qt4.inc
+++ b/meta/recipes-qt/qt4/qt4.inc
@@ -113,6 +113,16 @@ RRECOMMENDS_${QT_BASE_NAME}-fonts = " \
              ${QT_BASE_NAME}-fonts-pfa \
              ${QT_BASE_NAME}-fonts-pfb \
              ${QT_BASE_NAME}-fonts-qpf"
+RRECOMMENDS_${QT_BASE_NAME}-demos += " \
+            ${QT_BASE_NAME}-fonts \
+            ${QT_BASE_NAME}-examples \
+            ${QT_BASE_NAME}-plugin-sqldriver-sqlite \
+            ${QT_BASE_NAME}-plugin-imageformat-jpeg \
+            ${QT_BASE_NAME}-assistant \
+            ${PN}-doc"
+RRECOMMENDS_${QT_BASE_NAME}-examples += " \
+            ${QT_BASE_NAME}-plugin-sqldriver-sqlite \
+            ${QT_BASE_NAME}-plugin-imageformat-jpeg"
 
 FILES_${QT_BASE_NAME}-tools                = "${bindir}/uic* ${bindir}/moc ${bindir}/rcc ${bindir}/qttracereplay ${bindir}/qdoc*"
 FILES_${QT_BASE_NAME}-tools-dbg            = "${bindir}/.debug/uic* ${bindir}/.debug/moc ${bindir}/.debug/rcc ${bindir}/.debug/qttracereplay ${bindir}/.debug/qdoc*"
-- 
1.7.1


