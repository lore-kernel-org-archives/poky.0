Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0DD024C81206
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 03:27:48 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0L9RmdE004786
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 01:27:48 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 21 Jan 2011 01:27:48 -0800
Received: from localhost ([128.224.162.176]) by ala-mail06.corp.ad.wrs.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 21 Jan 2011 01:27:48 -0800
Message-Id: <40a080c3767333f9fdc1e17b0b8fd6dd0f5948d1.1295601800.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1295601800.git.jingdong.lu@windriver.com>
References: <cover.1295601800.git.jingdong.lu@windriver.com>
From: Jingdong Lu <jingdong.lu@windriver.com>
Old-Date: Fri, 21 Jan 2011 17:13:11 +0800
Date: Fri, 21 Jan 2011 17:26:29 +0800
To: poky@yoctoproject.org
CC: 
X-OriginalArrivalTime: 21 Jan 2011 09:27:48.0831 (UTC)
	FILETIME=[7812CEF0:01CBB94D]
Subject: [PATCH 3/4] msmtp: Add msmtp
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
X-List-Received-Date: Fri, 21 Jan 2011 09:27:49 -0000

Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
---
 meta/recipes-extended/msmtp/msmtp_1.4.21.bb |   31 +++++++++++++++++++++++++++
 1 files changed, 31 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-extended/msmtp/msmtp_1.4.21.bb

diff --git a/meta/recipes-extended/msmtp/msmtp_1.4.21.bb b/meta/recipes-extended/msmtp/msmtp_1.4.21.bb
new file mode 100644
index 0000000..ae7c7f9
--- /dev/null
+++ b/meta/recipes-extended/msmtp/msmtp_1.4.21.bb
@@ -0,0 +1,31 @@
+SUMMARY = "msmtp is an SMTP client."
+DESCRIPTION = "msmtp is an SMTP client."
+HOMEPAGE = "http://msmtp.sourceforge.net/"
+SECTION = "console/network"
+
+PRIORITY = "required"
+LICENSE = "GPLv3"
+PR = "r0"
+
+
+#COPYING or Licence
+LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
+
+SRC_URI = "http://sourceforge.net/projects/msmtp/files/msmtp/1.4.21/msmtp-1.4.21.tar.bz2 \
+          "
+
+SRC_URI[md5sum] = "9d764cd9036168f49bc9d6531a7f3dba"
+SRC_URI[sha256sum] = "2fb39be54d793882081d38ec2b709f6dc1aa4c124f5f244e111a0b604df14ffa"
+
+inherit gettext
+
+#S = "${WORKDIR}/msmtp-1.4.21"
+
+do_configure() {
+	${S}/configure --prefix=${prefix}
+}
+
+do_install() {
+	oe_runmake 'DESTDIR=${D}' install
+}
+
-- 
1.7.0.4


