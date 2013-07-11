Return-Path: <Qi.Chen@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75502E013A2
	for <poky@yoctoproject.org>; Thu, 11 Jul 2013 04:21:18 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r6BBLIMe011448
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 11 Jul 2013 04:21:18 -0700 (PDT)
Received: from pek-qchen1-d1.corp.ad.wrs.com (128.224.162.233) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.342.3; Thu, 11 Jul 2013 04:21:18 -0700
From: <Qi.Chen@windriver.com>
To: <poky@yoctoproject.org>
Date: Thu, 11 Jul 2013 19:21:20 +0800
Message-ID: <7941375a6bd2fc0836e6206ad608d6c990d986fc.1373541562.git.Qi.Chen@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1373541562.git.Qi.Chen@windriver.com>
References: <cover.1373541562.git.Qi.Chen@windriver.com>
MIME-Version: 1.0
Cc: qingtao.cao@windriver.com
Subject: [PATCH V3 1/1] local.conf.sample.extended: add USER_GROUP_SETTINGS
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
X-List-Received-Date: Thu, 11 Jul 2013 11:21:19 -0000
Content-Type: text/plain

From: Chen Qi <Qi.Chen@windriver.com>

Add detailed explanation of USER_GROUP_SETTINGS which is used for
image level user/group configuration.

[YOCTO #4074]

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 meta-yocto/conf/local.conf.sample.extended |   18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/meta-yocto/conf/local.conf.sample.extended b/meta-yocto/conf/local.conf.sample.extended
index 9717439..108e883 100644
--- a/meta-yocto/conf/local.conf.sample.extended
+++ b/meta-yocto/conf/local.conf.sample.extended
@@ -218,3 +218,21 @@
 # Use the following line to enable the security compiler and linker flags to your build
 #require conf/distro/include/security_flags.inc
 
+# Inherit usersettings.bbclass to make setting USER_GROUP_SETTINGS effective
+#INHERIT += "usersettings"
+# User / group settings
+# The settings are sperated by ;
+# Each setting has two fields, which are separated by comma.
+# <CMD>: command used to change the user/group settings, possible values are
+#           groupadd, useradd, groupdel, userdel, groupmod and usermod.
+# <OPT>: options for for the command.
+#USER_GROUP_SETTINGS = "\
+#useradd,-p '' tester; \
+#groupadd,testers; \
+#useradd,developer; \
+#groupadd,developers; \
+#userdel,nobody; \
+#groupdel,-g video; \
+#groupmod,-g 1020 developers; \
+#usermod,-s /bin/sh tester; \
+#"
-- 
1.7.9.5


