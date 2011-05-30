Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id CAF664C80861
	for <poky@yoctoproject.org>; Mon, 30 May 2011 03:38:09 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4U8c9lE009774
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 30 May 2011 01:38:09 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Mon, 30 May 2011 01:38:09 -0700
Message-ID: <1d9291438f384a61e668e0464d180db83792456c.1306726421.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1306726421.git.xiaofeng.yan@windriver.com>
References: <cover.1306726421.git.xiaofeng.yan@windriver.com>
Old-Date: Mon, 30 May 2011 11:29:26 +0800
Date: Mon, 30 May 2011 16:35:59 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 1/1] sudo.inc: Add do_install_prepend () to sudo.inc
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
X-List-Received-Date: Mon, 30 May 2011 08:38:10 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

Fix bug [YOCTO #1092]
Own a directory "/var/lib" before do_install() because if there isn't this directory during installing, \
then script "mkinstalldirs" from "sudo package" will create directory "/var/lib/sudo" by recursion with mode "0700" \
which will cause bug [YOCTO #1092]. So I add do_install_prepend() to create a "/var/lib" which can be accessed \
by common user before installing files.

Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
---
 meta/recipes-extended/sudo/sudo.inc |   11 +++++++++++
 1 files changed, 11 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-extended/sudo/sudo.inc b/meta/recipes-extended/sudo/sudo.inc
index 6a04a9c..d96cbd9 100644
--- a/meta/recipes-extended/sudo/sudo.inc
+++ b/meta/recipes-extended/sudo/sudo.inc
@@ -23,6 +23,17 @@ do_configure_prepend () {
 	fi
 }
 
+#The script "mkinstalldirs" from package "sudo" will create directory "/var/lib/sudo"
+#by recursion with mode "0700" during installing files.That is to say,
+#"var" "var/lib", and "var/lib/sudo" will have access authority with mode "0700".
+#It cause that directory "var" and "var/lib" can't be accessed by common user.
+#Creating directory "/var/lib" before installing files can resolve this problem.
+
+do_install_prepend (){
+	mkdir -p ${D}/${localstatedir}/lib
+}
+ 
+
 pkg_postinst_${PN} () {
 	if [ "x$D" != "x" ]; then
 		exit 1
-- 
1.7.0.4


