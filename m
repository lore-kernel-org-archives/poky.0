Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1E1DC4C80A93
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 01:12:26 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p217CPGx012816
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 23:12:25 -0800 (PST)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Mon, 28 Feb 2011 23:12:25 -0800
Message-ID: <582633c7d93aa9d8b601b4c2b7ecfba47615f698.1298961777.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1298961777.git.xiaofeng.yan@windriver.com>
References: <cover.1298961777.git.xiaofeng.yan@windriver.com>
Old-Date: Tue, 1 Mar 2011 14:36:21 +0800
Date: Tue, 1 Mar 2011 15:12:18 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 2/2] qt3: Add two class(qt3e.bbclass and qt3x11.bbclass) files into meta/classess/
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
X-List-Received-Date: Tue, 01 Mar 2011 07:12:26 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

Two files from OE are needed to compile qt3

Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
---
 meta/classes/qt3e.bbclass   |   11 +++++++++++
 meta/classes/qt3x11.bbclass |   15 +++++++++++++++
 2 files changed, 26 insertions(+), 0 deletions(-)
 create mode 100644 meta/classes/qt3e.bbclass
 create mode 100644 meta/classes/qt3x11.bbclass

diff --git a/meta/classes/qt3e.bbclass b/meta/classes/qt3e.bbclass
new file mode 100644
index 0000000..d3d4a14
--- /dev/null
+++ b/meta/classes/qt3e.bbclass
@@ -0,0 +1,11 @@
+#
+# override variables set by qmake_base to compile Qt/X11 apps
+#
+export QTDIR="${STAGING_DIR_HOST}/qte3"
+export QTEDIR="${STAGING_DIR_HOST}/qte3"
+export OE_QMAKE_UIC="${STAGING_BINDIR_NATIVE}/uic3"
+export OE_QMAKE_MOC="${STAGING_BINDIR_NATIVE}/moc3"
+export OE_QMAKE_CXXFLAGS="${CXXFLAGS} "
+export OE_QMAKE_INCDIR_QT="${STAGING_INCDIR}/qte3/include"
+export OE_QMAKE_LIBDIR_QT="${STAGING_LIBDIR}/qte3/lib"
+export OE_QMAKE_LIBS_QT="qte"
diff --git a/meta/classes/qt3x11.bbclass b/meta/classes/qt3x11.bbclass
new file mode 100644
index 0000000..5408b7f
--- /dev/null
+++ b/meta/classes/qt3x11.bbclass
@@ -0,0 +1,15 @@
+DEPENDS_prepend = "${@["qt3x11 ", ""][(bb.data.getVar('PN', d, 1) == 'qt-x11-free')]}"
+EXTRA_QMAKEVARS_POST += "CONFIG+=thread"
+#
+# override variables set by qmake_base to compile Qt/X11 apps
+#
+export QTDIR = "${STAGING_DIR_HOST}/qt3"
+export OE_QMAKE_UIC = "${STAGING_BINDIR_NATIVE}/uic3"
+export OE_QMAKE_MOC = "${STAGING_BINDIR_NATIVE}/moc3"
+export OE_QMAKE_CXXFLAGS = "${CXXFLAGS} -DQT_NO_XIM"
+export OE_QMAKE_INCDIR_QT = "${QTDIR}/include"
+export OE_QMAKE_LIBDIR_QT = "${QTDIR}/lib"
+export OE_QMAKE_LIBS_QT = "qt"
+export OE_QMAKE_LIBS_X11 = "-lXext -lX11 -lm"
+export OE_QMAKE_LIBS_OPENGL = "-lGLU -lGL -lXmu"
+export OE_QMAKE_LIBS_OPENGL_QT = "-lGL -lXmu"
-- 
1.7.0.4


