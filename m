Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 56DD04C806DA
	for <poky@yoctoproject.org>; Thu, 17 Mar 2011 20:36:34 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2I1aXYl012256
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 17 Mar 2011 18:36:33 -0700 (PDT)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Thu, 17 Mar 2011 18:36:33 -0700
Message-ID: <3404b336e81764d15f546279aa594bd30587836f.1300411762.git.kai.kang@windriver.com>
In-Reply-To: <cover.1300411762.git.kai.kang@windriver.com>
References: <cover.1300411762.git.kai.kang@windriver.com>
Old-Date: Thu, 17 Mar 2011 17:16:46 +0800
Date: Fri, 18 Mar 2011 09:34:34 +0800
To: <poky@yoctoproject.org>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Subject: [PATCH 1/1] msmtp: add link sendmail for lsb command check
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
X-List-Received-Date: Fri, 18 Mar 2011 01:36:34 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

LSB command check will test the exist of sendmail, so make sendmail
link to msmtp in order to pass the test.

Related to [YOCTO #520]

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 meta/recipes-extended/msmtp/msmtp_1.4.23.bb |   12 +++++++++++-
 1 files changed, 11 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-extended/msmtp/msmtp_1.4.23.bb b/meta/recipes-extended/msmtp/msmtp_1.4.23.bb
index cb3d83c..5fc4060 100644
--- a/meta/recipes-extended/msmtp/msmtp_1.4.23.bb
+++ b/meta/recipes-extended/msmtp/msmtp_1.4.23.bb
@@ -6,7 +6,7 @@ SECTION = "console/network"
 PRIORITY = "required"
 LICENSE = "GPLv3"
 DEPENDS = "zlib gnutls"
-PR = "r0"
+PR = "r1"
 
 
 #COPYING or Licence
@@ -19,3 +19,13 @@ SRC_URI[md5sum] = "5fb7ae88186624cdb125d3efad3fdc16"
 SRC_URI[sha256sum] = "269cd30eeb867167c6a599e23399f4fc24196fcdef3bac5b120d806b3b421810"
 
 inherit gettext autotools
+
+pkg_postinst_${PN} () {
+    if [ "x$D" != "x" ] ; then
+        exit 1
+    fi
+
+    if [ ! -e ${sbindir}/sendmail ]; then
+        ln -sf ${bindir}/msmtp ${sbindir}/sendmail
+    fi
+}
-- 
1.7.1


