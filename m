Return-Path: <Qi.Chen@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9414CE0140D
	for <poky@yoctoproject.org>; Thu,  4 Jul 2013 23:07:16 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r6567Fsg004517
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 4 Jul 2013 23:07:15 -0700 (PDT)
Received: from pek-qchen1-d1.corp.ad.wrs.com (128.224.162.233) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.342.3; Thu, 4 Jul 2013 23:07:15 -0700
From: <Qi.Chen@windriver.com>
To: <poky@yoctoproject.org>
Date: Fri, 5 Jul 2013 14:07:46 +0800
Message-ID: <bd875b766e1605608910cedc115051e445f1e58c.1373003928.git.Qi.Chen@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1373003928.git.Qi.Chen@windriver.com>
References: <cover.1373003928.git.Qi.Chen@windriver.com>
MIME-Version: 1.0
Cc: qingtao.cao@windriver.com
Subject: [PATCH 1/1] local.conf.sample.extended: add USER_GROUP_SETTINGS
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
X-List-Received-Date: Fri, 05 Jul 2013 06:07:17 -0000
Content-Type: text/plain

From: Chen Qi <Qi.Chen@windriver.com>

Add detailed explanation of USER_GROUP_SETTINGS which is used for
image level user/group configuration.

[YOCTO #4074]

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 meta-yocto/conf/local.conf.sample.extended |   16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/meta-yocto/conf/local.conf.sample.extended b/meta-yocto/conf/local.conf.sample.extended
index 07e5cf5..15cbf5e 100644
--- a/meta-yocto/conf/local.conf.sample.extended
+++ b/meta-yocto/conf/local.conf.sample.extended
@@ -214,3 +214,19 @@
 
 # Remove the old image before the new one generated to save disk space
 #RM_OLD_IMAGE = "1"
+
+# Image level user/group settings
+# The settings are sperated by ;
+# Each setting has three fields.
+# <USER/GROUP>: this setting applies for user or group, possible values are USER and GROUP.
+# <ACTION>: possible values are ADD, DELELE and MODIFY
+# <OPT>: options for useradd/groupadd, userdel/groupdel or usermod/groupmod.
+# e.g.
+# USER_GROUP_SETTINGS = "\
+# USER,ADD,-p '' tester; \
+# GROUP,ADD,testers; \
+# USER,DEL,nobody; \
+# GROUP,DEL,-g video; \
+# GROUP,MOD,-g 1020 testers; \
+# USER,MOD,-s /bin/sh tester; \
+# "
-- 
1.7.9.5


