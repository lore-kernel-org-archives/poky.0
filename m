Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 67F9E4C800C0
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 13:36:13 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p13JaDTV005847
	for <poky@yoctoproject.org>; Thu, 3 Feb 2011 11:36:13 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 3 Feb 2011 11:36:12 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 3 Feb 2011 11:36:12 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Thu,  3 Feb 2011 13:32:51 -0600
Message-Id: <07225e653846e9e3c41bc5db36d4afe04dc24887.1296761455.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1296761455.git.mark.hatle@windriver.com>
References: <cover.1296761455.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1296761455.git.mark.hatle@windriver.com>
References: <cover.1296761455.git.mark.hatle@windriver.com>
X-OriginalArrivalTime: 03 Feb 2011 19:36:12.0804 (UTC)
	FILETIME=[9D81CC40:01CBC3D9]
Subject: [PATCH 2/2] Docbook workaround
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
X-List-Received-Date: Thu, 03 Feb 2011 19:36:18 -0000


Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/recipes-devtools/prelink/prelink_git.bb |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/prelink/prelink_git.bb b/meta/recipes-devtools/prelink/prelink_git.bb
index 1601443..8620513 100644
--- a/meta/recipes-devtools/prelink/prelink_git.bb
+++ b/meta/recipes-devtools/prelink/prelink_git.bb
@@ -27,6 +27,11 @@ BBCLASSEXTEND = "native"
 EXTRA_OECONF = "--disable-selinux --with-pkgversion=${PV}-${PR} \
 	--with-bugurl=http://bugzilla.pokylinux.org/"
 
+do_configure_prepend () {
+        # Disable documentation!
+        echo "all:" > ${S}/doc/Makefile.am
+}
+
 do_install_append () {
 	install -d ${D}${sysconfdir}/cron.daily ${D}${sysconfdir}/default
 	install -m 0644 ${WORKDIR}/prelink.conf ${D}${sysconfdir}/prelink.conf
-- 
1.7.3.4


