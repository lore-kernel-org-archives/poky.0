Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id DD48F4C80A90
	for <poky@yoctoproject.org>; Wed, 11 May 2011 03:09:46 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4B89kfb019699
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 11 May 2011 01:09:46 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 11 May 2011 01:09:46 -0700
Message-ID: <d09c56d0d92f2c4722c6647b543ae0b7855de197.1305016641.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1305016641.git.xiaofeng.yan@windriver.com>
References: <cover.1305016641.git.xiaofeng.yan@windriver.com>
Old-Date: Tue, 10 May 2011 16:31:32 +0800
Date: Wed, 11 May 2011 16:09:08 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 3/3] lsbsetup: Add link for sendmail
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
X-List-Received-Date: Wed, 11 May 2011 08:09:47 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

Link /sbin/sendmail/ to /usr/lib/sendmail

Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
---
 meta/recipes-extended/lsb/lsbsetup_0.9.bb |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-extended/lsb/lsbsetup_0.9.bb b/meta/recipes-extended/lsb/lsbsetup_0.9.bb
index 8f7da53..b0d0a3f 100644
--- a/meta/recipes-extended/lsb/lsbsetup_0.9.bb
+++ b/meta/recipes-extended/lsb/lsbsetup_0.9.bb
@@ -17,6 +17,7 @@ do_install() {
         install -d  ${D}/usr/lib/lsb
         ln -sf ${base_sbindir}/chkconfig ${D}/${libdir}/lsb/install_initd
         ln -sf ${base_sbindir}/chkconfig ${D}/${libdir}/lsb/remove_initd
+        ln -sf ${base_sbindir}/sendmail ${D}/${libdir}/lsb/sendmail
 }
 
 FILES_${PN} += "${libdir}/lsb"
-- 
1.7.0.4


