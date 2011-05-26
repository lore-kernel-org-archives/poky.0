Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 32DEC4C800AF
	for <poky@yoctoproject.org>; Thu, 26 May 2011 04:31:27 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4Q9VQD7017662
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 26 May 2011 02:31:26 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Thu, 26 May 2011 02:31:26 -0700
Message-ID: <595c61ddb06090bf1b5856f96738839d0b95db0a.1306400756.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1306400756.git.xiaofeng.yan@windriver.com>
References: <cover.1306400756.git.xiaofeng.yan@windriver.com>
Old-Date: Thu, 26 May 2011 17:01:55 +0800
Date: Thu, 26 May 2011 17:29:35 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 1/1] sudo: Add directory "/var/lib" to sudo.inc in the stage of do_install_prepend
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
X-List-Received-Date: Thu, 26 May 2011 09:31:27 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

Fix bug [YOCTO #1092]
Own a directory "/var/lib" before do_install because if there isn't this directory during installing, \
then script "mkinstalldirs" from "sudo package" will create directory "/var/lib/sudo" by recursion with mode "0700" \
which will cause bug [YOCTO #1092].

Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
---
 meta/recipes-extended/sudo/sudo.inc |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-extended/sudo/sudo.inc b/meta/recipes-extended/sudo/sudo.inc
index 6a04a9c..f2631f2 100644
--- a/meta/recipes-extended/sudo/sudo.inc
+++ b/meta/recipes-extended/sudo/sudo.inc
@@ -23,6 +23,10 @@ do_configure_prepend () {
 	fi
 }
 
+do_install_prepend (){
+	mkdir -p ${D}/${localstatedir}/lib
+}
+
 pkg_postinst_${PN} () {
 	if [ "x$D" != "x" ]; then
 		exit 1
-- 
1.7.0.4


