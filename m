Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9F2654C80132
	for <poky@yoctoproject.org>; Sun, 20 Mar 2011 22:02:26 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2L32QED029166
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Sun, 20 Mar 2011 20:02:26 -0700 (PDT)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Sun, 20 Mar 2011 20:02:25 -0700
Message-ID: <3d02489147dda8426471cfbb9c5f17464d67e201.1300676026.git.kai.kang@windriver.com>
In-Reply-To: <cover.1300676026.git.kai.kang@windriver.com>
References: <cover.1300676026.git.kai.kang@windriver.com>
Old-Date: Mon, 21 Mar 2011 10:46:11 +0800
Date: Mon, 21 Mar 2011 10:59:54 +0800
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
X-List-Received-Date: Mon, 21 Mar 2011 03:02:26 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

LSB command check will test the exist of sendmail, so make sendmail
link to msmtp using update-alternatives class in order to pass the test.

Related to [YOCTO #520]

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 meta/recipes-extended/msmtp/msmtp_1.4.23.bb |    9 +++++++--
 1 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-extended/msmtp/msmtp_1.4.23.bb b/meta/recipes-extended/msmtp/msmtp_1.4.23.bb
index cb3d83c..d48881a 100644
--- a/meta/recipes-extended/msmtp/msmtp_1.4.23.bb
+++ b/meta/recipes-extended/msmtp/msmtp_1.4.23.bb
@@ -6,7 +6,7 @@ SECTION = "console/network"
 PRIORITY = "required"
 LICENSE = "GPLv3"
 DEPENDS = "zlib gnutls"
-PR = "r0"
+PR = "r1"
 
 
 #COPYING or Licence
@@ -18,4 +18,9 @@ SRC_URI = "http://sourceforge.net/projects/msmtp/files/msmtp/${PV}/${BPN}-${PV}.
 SRC_URI[md5sum] = "5fb7ae88186624cdb125d3efad3fdc16"
 SRC_URI[sha256sum] = "269cd30eeb867167c6a599e23399f4fc24196fcdef3bac5b120d806b3b421810"
 
-inherit gettext autotools
+inherit gettext autotools update-alternatives
+
+ALTERNATIVE_NAME = "sendmail"
+ALTERNATIVE_PATH = "${bindir}/msmtp"
+ALTERNATIVE_LINK = "${sbindir}/sendmail"
+ALTERNATIVE_PRIORITY = "100"
-- 
1.7.1


