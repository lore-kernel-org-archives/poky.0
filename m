Received: from mail.lineo.co.jp (mail.lineo.co.jp [203.141.200.203])
 by mx.groups.io with SMTP id smtpd.web10.33697.1602479546694279906
 for <poky@lists.yoctoproject.org>;
 Sun, 11 Oct 2020 22:12:26 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: lineo.co.jp, ip: 203.141.200.203, mailfrom: naokihayama@lineo.co.jp)
Received: from naokihayama-desktop (unknown [203.141.200.204])
	by mail.lineo.co.jp (Postfix) with ESMTPSA id 5C8448035CE48;
	Mon, 12 Oct 2020 14:12:24 +0900 (JST)
Received: by naokihayama-desktop (Postfix, from userid 1000)
	id 47BE350040FF; Mon, 12 Oct 2020 14:12:24 +0900 (JST)
From: "Naoki Hayama" <naoki.hayama@lineo.co.jp>
To: poky@lists.yoctoproject.org
Cc: Naoki Hayama <naoki.hayama@lineo.co.jp>
Subject: [meta-yocto][PATCH] local.conf.sample: Fix comment typo
Date: Mon, 12 Oct 2020 14:12:13 +0900
Message-Id: <20201012051213.8944-1-naoki.hayama@lineo.co.jp>
X-Mailer: git-send-email 2.17.1

Fix comment typo.
s/necesary/necessary/

Signed-off-by: Naoki Hayama <naoki.hayama@lineo.co.jp>
---
 meta-poky/conf/local.conf.sample | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
index 032f262..68e71b9 100644
--- a/meta-poky/conf/local.conf.sample
+++ b/meta-poky/conf/local.conf.sample
@@ -191,7 +191,7 @@ PATCHRESOLVE = "noop"
 # shutdown the build. If there is less that 100MB or 1K inodes, perform a hard abort
 # of the build. The reason for this is that running completely out of space can corrupt
 # files and damages the build in ways which may not be easily recoverable.
-# It's necesary to monitor /tmp, if there is no space left the build will fail
+# It's necessary to monitor /tmp, if there is no space left the build will fail
 # with very exotic errors.
 BB_DISKMON_DIRS ??= "\
     STOPTASKS,${TMPDIR},1G,100K \
-- 
2.17.1

