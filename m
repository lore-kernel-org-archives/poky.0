Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id C75104C8057D
	for <poky@yoctoproject.org>; Sat, 21 May 2011 05:13:29 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4LADTAU007355
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Sat, 21 May 2011 03:13:29 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Sat, 21 May 2011 03:13:28 -0700
Message-ID: <d448b57c57fec346230d40fadc08625bd8c83224.1305972143.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1305972143.git.xiaofeng.yan@windriver.com>
References: <cover.1305972143.git.xiaofeng.yan@windriver.com>
Old-Date: Sat, 21 May 2011 17:28:22 +0800
Date: Sat, 21 May 2011 18:12:02 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 1/1] sudo: Modify ownership for directory "/var/lib"
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
X-List-Received-Date: Sat, 21 May 2011 10:13:30 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

[YOCTO #1092]
Solve access permission for directory "/var/lib".
Makefile from package sudo change the ownership incorrectly.

Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
---
 meta/recipes-extended/sudo/sudo.inc |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-extended/sudo/sudo.inc b/meta/recipes-extended/sudo/sudo.inc
index 6a04a9c..5ea089c 100644
--- a/meta/recipes-extended/sudo/sudo.inc
+++ b/meta/recipes-extended/sudo/sudo.inc
@@ -30,4 +30,5 @@ pkg_postinst_${PN} () {
 
 	chmod 4111 /usr/bin/sudo
 	chmod 0440 /etc/sudoers
+	chmod 0755 /var/lib
 }
-- 
1.7.0.4


