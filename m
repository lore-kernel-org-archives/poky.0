Return-Path: <Qi.Chen@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABF60E0140D
	for <poky@yoctoproject.org>; Thu, 11 Jul 2013 20:17:21 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r6C3HLbA003078
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 11 Jul 2013 20:17:21 -0700 (PDT)
Received: from pek-qchen1-d1.corp.ad.wrs.com (128.224.162.233) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.342.3; Thu, 11 Jul 2013 20:17:21 -0700
From: <Qi.Chen@windriver.com>
To: <poky@yoctoproject.org>
Date: Fri, 12 Jul 2013 11:17:23 +0800
Message-ID: <c1d4ec9c6569e7b97510d809b707147786a18ca1.1373598961.git.Qi.Chen@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1373598961.git.Qi.Chen@windriver.com>
References: <cover.1373598961.git.Qi.Chen@windriver.com>
MIME-Version: 1.0
Cc: qingtao.cao@windriver.com
Subject: [PATCH V4 1/1] local.conf.sample.extended: add example for EXTRA_USERS_PARAMS
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 12 Jul 2013 03:17:22 -0000
Content-Type: text/plain

From: Chen Qi <Qi.Chen@windriver.com>

Add detailed explanation of EXTRA_USERS_PARAMS which is used for
image level user/group configuration.

[YOCTO #4074]

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 meta-yocto/conf/local.conf.sample.extended |   17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/meta-yocto/conf/local.conf.sample.extended b/meta-yocto/conf/local.conf.sample.extended
index 9717439..25f0e38 100644
--- a/meta-yocto/conf/local.conf.sample.extended
+++ b/meta-yocto/conf/local.conf.sample.extended
@@ -218,3 +218,20 @@
 # Use the following line to enable the security compiler and linker flags to your build
 #require conf/distro/include/security_flags.inc
 
+# Image level user/group configuration.
+# Inherit extrausers to make the setting of EXTRA_USERS_PARAMS effective.
+#INHERIT += "extrausers"
+# User / group settings
+# The settings are sperated by ;
+# Each setting has two fields which are separeted by comma.
+# <CMD>: the command used for this setting, possible values are useradd, groupadd,
+#        userdel, groupdel, usermod and groupmod.
+# <OPTS>: options for the command
+#EXTRA_USERS_PARAMS = "\
+#useradd,-p '' tester; \
+#groupadd,developers; \
+#userdel,nobody; \
+#groupdel,-g video; \
+#groupmod,-g 1020 developers; \
+#usermod,-s /bin/sh tester; \
+#"
-- 
1.7.9.5


