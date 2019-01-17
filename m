Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 010C7E00C5F; Wed, 16 Jan 2019 19:04:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
X-Greylist: delayed 550 seconds by postgrey-1.32 at yocto-www;
	Wed, 16 Jan 2019 19:04:18 PST
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82C22E00AC5
	for <poky@yoctoproject.org>; Wed, 16 Jan 2019 19:04:18 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id B0BE218553
	for <poky@yoctoproject.org>; Thu, 17 Jan 2019 03:55:07 +0100 (CET)
X-Axis-User: NO
X-Axis-NonUser: YES
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id hvE8MMIMbRlS for <poky@yoctoproject.org>;
	Thu, 17 Jan 2019 03:55:07 +0100 (CET)
Received: from boulder02.se.axis.com (boulder02.se.axis.com [10.0.8.16])
	by bastet.se.axis.com (Postfix) with ESMTPS id 1E28318524
	for <poky@yoctoproject.org>; Thu, 17 Jan 2019 03:55:07 +0100 (CET)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 026FD1A097
	for <poky@yoctoproject.org>; Thu, 17 Jan 2019 03:55:07 +0100 (CET)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id EA5951A08C
	for <poky@yoctoproject.org>; Thu, 17 Jan 2019 03:55:06 +0100 (CET)
Received: from seth.se.axis.com (unknown [10.0.2.172])
	by boulder02.se.axis.com (Postfix) with ESMTP
	for <poky@yoctoproject.org>; Thu, 17 Jan 2019 03:55:06 +0100 (CET)
Received: from saur-2.se.axis.com (saur-2.se.axis.com [10.92.3.2])
	by seth.se.axis.com (Postfix) with ESMTP id DECD32FE5
	for <poky@yoctoproject.org>; Thu, 17 Jan 2019 03:55:06 +0100 (CET)
Received: from saur-2.se.axis.com (localhost [127.0.0.1])
	by saur-2.se.axis.com (8.14.5/8.14.5) with ESMTP id x0H2t6a5010977
	for <poky@yoctoproject.org>; Thu, 17 Jan 2019 03:55:06 +0100
Received: (from pkj@localhost)
	by saur-2.se.axis.com (8.14.5/8.14.5/Submit) id x0H2t6Jj010975
	for poky@yoctoproject.org; Thu, 17 Jan 2019 03:55:06 +0100
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: poky@yoctoproject.org
Date: Thu, 17 Jan 2019 03:55:00 +0100
Message-Id: <20190117025500.10922-1-pkj@axis.com>
X-Mailer: git-send-email 2.12.0
X-TM-AS-GCONF: 00
Subject: [PATCH] local.conf.sample.extended: Use IMAGE_CLASSES to inherit extrausers
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
X-List-Received-Date: Thu, 17 Jan 2019 03:04:20 -0000

Since the extrausers class is only useful for image recipes, it is
better to suggest adding it via IMAGE_CLASSES instead of INHERIT in the
example.

Also make the example a bit more readable by indenting the variable
values.

Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
---
 meta-poky/conf/local.conf.sample.extended | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/meta-poky/conf/local.conf.sample.extended b/meta-poky/conf/local.conf.sample.extended
index 3ba99f4896..696275b4af 100644
--- a/meta-poky/conf/local.conf.sample.extended
+++ b/meta-poky/conf/local.conf.sample.extended
@@ -290,18 +290,18 @@
 
 # Image level user/group configuration.
 # Inherit extrausers to make the setting of EXTRA_USERS_PARAMS effective.
-#INHERIT += "extrausers"
+#IMAGE_CLASSES += "extrausers"
 # User / group settings
-# The settings are sperated by the ; character.
+# The settings are separated by the ; character.
 # Each setting is actually a command. The supported commands are useradd,
 # groupadd, userdel, groupdel, usermod and groupmod.
 #EXTRA_USERS_PARAMS = "\
-#useradd -p '' tester; \
-#groupadd developers; \
-#userdel nobody; \
-#groupdel video; \
-#groupmod -g 1020 developers; \
-#usermod -s /bin/sh tester; \
+#    useradd -p '' tester; \
+#    groupadd developers; \
+#    userdel nobody; \
+#    groupdel video; \
+#    groupmod -g 1020 developers; \
+#    usermod -s /bin/sh tester; \
 #"
 
 # Various packages dynamically add users and groups to the system at package
-- 
2.12.0


