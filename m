Return-Path: <Qi.Chen@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42916E013B0
	for <poky@yoctoproject.org>; Tue, 16 Jul 2013 23:13:25 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r6H6DOvo026728
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 16 Jul 2013 23:13:24 -0700 (PDT)
Received: from pek-qchen1-d1.corp.ad.wrs.com (128.224.162.233) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.342.3; Tue, 16 Jul 2013 23:13:24 -0700
From: <Qi.Chen@windriver.com>
To: <poky@yoctoproject.org>
Date: Wed, 17 Jul 2013 14:13:34 +0800
Message-ID: <1c701bf1559dbf7ce28ce8b4159b3347dce3b840.1374041559.git.Qi.Chen@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1374041559.git.Qi.Chen@windriver.com>
References: <cover.1374041559.git.Qi.Chen@windriver.com>
MIME-Version: 1.0
Cc: qingtao.cao@windriver.com
Subject: [PATCH V6 1/1] local.conf.sample.extended: add example for EXTRA_USERS_PARAMS
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
X-List-Received-Date: Wed, 17 Jul 2013 06:13:30 -0000
Content-Type: text/plain

From: Chen Qi <Qi.Chen@windriver.com>

Add detailed explanation of EXTRA_USERS_PARAMS which is used for
image level user/group configuration.

[YOCTO #4074]

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 meta-yocto/conf/local.conf.sample.extended |   15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/meta-yocto/conf/local.conf.sample.extended b/meta-yocto/conf/local.conf.sample.extended
index 9717439..cff79e4 100644
--- a/meta-yocto/conf/local.conf.sample.extended
+++ b/meta-yocto/conf/local.conf.sample.extended
@@ -218,3 +218,18 @@
 # Use the following line to enable the security compiler and linker flags to your build
 #require conf/distro/include/security_flags.inc
 
+# Image level user/group configuration.
+# Inherit extrausers to make the setting of EXTRA_USERS_PARAMS effective.
+#INHERIT += "extrausers"
+# User / group settings
+# The settings are sperated by the ; character.
+# Each setting is actually a command. The supported commands are useradd,
+# groupadd, userdel, groupdel, usermod and groupmod.
+#EXTRA_USERS_PARAMS = "\
+#useradd -p '' tester; \
+#groupadd developers; \
+#userdel nobody; \
+#groupdel -g video; \
+#groupmod -g 1020 developers; \
+#usermod -s /bin/sh tester; \
+#"
-- 
1.7.9.5


