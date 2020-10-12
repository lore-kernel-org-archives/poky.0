Received: from mail.lineo.co.jp (mail.lineo.co.jp [203.141.200.203])
 by mx.groups.io with SMTP id smtpd.web12.34012.1602479904052761446
 for <poky@lists.yoctoproject.org>;
 Sun, 11 Oct 2020 22:18:24 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: lineo.co.jp, ip: 203.141.200.203, mailfrom: naokihayama@lineo.co.jp)
Received: from naokihayama-desktop (unknown [203.141.200.204])
	by mail.lineo.co.jp (Postfix) with ESMTPSA id 6A1158035CE48;
	Mon, 12 Oct 2020 14:18:22 +0900 (JST)
Received: by naokihayama-desktop (Postfix, from userid 1000)
	id 1FFF050040FF; Mon, 12 Oct 2020 14:18:22 +0900 (JST)
From: "Naoki Hayama" <naoki.hayama@lineo.co.jp>
To: poky@lists.yoctoproject.org
Cc: Naoki Hayama <naoki.hayama@lineo.co.jp>
Subject: [meta-yocto][PATCH] local.conf.sample.extended: Fix comment typo
Date: Mon, 12 Oct 2020 14:18:20 +0900
Message-Id: <20201012051820.13184-1-naoki.hayama@lineo.co.jp>
X-Mailer: git-send-email 2.17.1

Fix comment typo.
s/overriden/overridden/
s/spefying/specifying/

Signed-off-by: Naoki Hayama <naoki.hayama@lineo.co.jp>
---
 meta-poky/conf/local.conf.sample.extended | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/local.conf.sample.extended b/meta-poky/conf/local.conf.sample.extended
index 44a0169..62415a4 100644
--- a/meta-poky/conf/local.conf.sample.extended
+++ b/meta-poky/conf/local.conf.sample.extended
@@ -301,7 +301,7 @@ DISTRO_FEATURES_remove = "x11"
 # will correct this condition.
 #
 # By default the system looks in the BBPATH for files/passwd and files/group
-# the default can be overriden by spefying USERADD_UID/GID_TABLES.
+# the default can be overridden by specifying USERADD_UID/GID_TABLES.
 #
 #USERADDEXTENSION = "useradd-staticids"
 #USERADD_UID_TABLES = "files/passwd"
-- 
2.17.1

