Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.910.1577090107210370617
 for <poky@lists.yoctoproject.org>;
 Mon, 23 Dec 2019 00:35:07 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: liezhi.yang@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFFD1E01227; Mon, 23 Dec 2019 00:35:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A95C7E01162
	for <poky@yoctoproject.org>; Mon, 23 Dec 2019 00:35:05 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id xBN8Z2Pu017417
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Mon, 23 Dec 2019 00:35:03 -0800 (PST)
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
 ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
 14.3.468.0; Mon, 23 Dec 2019 00:35:02 -0800
From: "Robert Yang" <liezhi.yang@windriver.com>
To: <seebs@seebs.net>
CC: <poky@yoctoproject.org>
Subject: [PATCH V2] realpath.c: Remove trailing slashes
Date: Mon, 23 Dec 2019 16:36:13 +0800
Message-ID: <1577090173-25295-1-git-send-email-liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain

Linux system's realpath() remove trailing slashes, but pseudo's doesn't, need
make them identical.

E.g., the following code (rel.c) prints '/tmp' with system's realpath, but
pseudo's realpath prints '/tmp/':

    #include <stdio.h>
    #include <limits.h>
    #include <stdlib.h>

    int main() {
        char out[PATH_MAX];
        printf("%s\n", realpath("/tmp/", out));
        return 0;
    }

$ bitbake base-passwd -cdevshell # For pseudo env
$ gcc rel.c
$ ./a.out
/tmp/ (but should be /tmp)

This patch fixes the problem.

Upstream-Status: Submitted

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 ports/unix/guts/realpath.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/ports/unix/guts/realpath.c b/ports/unix/guts/realpath.c
index 085d2cb..8d8118b 100644
--- a/ports/unix/guts/realpath.c
+++ b/ports/unix/guts/realpath.c
@@ -14,7 +14,14 @@
 		errno = ENAMETOOLONG;
 		return NULL;
 	}
-	if ((len = strlen(rname)) >= pseudo_sys_path_max()) {
+		len = strlen(rname);
+		char *ep = rname + len - 1;
+		while (ep > rname && *ep == '/') {
+			--len;
+			*(ep--) = '\0';
+		}
+
+		if (len >= pseudo_sys_path_max()) {
 		errno = ENAMETOOLONG;
 		return NULL;
 	}
-- 
2.7.4

