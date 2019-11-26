Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.6201.1574735699896343212
 for <poky@lists.yoctoproject.org>;
 Mon, 25 Nov 2019 18:35:00 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: liezhi.yang@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68055E00F78; Mon, 25 Nov 2019 18:34:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04219E00DAE
	for <poky@yoctoproject.org>; Mon, 25 Nov 2019 18:34:58 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id xAQ2Yux7021042
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Mon, 25 Nov 2019 18:34:57 -0800 (PST)
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
 ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
 14.3.468.0; Mon, 25 Nov 2019 18:34:56 -0800
From: "Robert Yang" <liezhi.yang@windriver.com>
To: <seebs@seebs.net>
CC: <poky@yoctoproject.org>
Subject: [pseudo][PATCH] realpath.c: Remove trailing slashes
Date: Tue, 26 Nov 2019 10:35:45 +0800
Message-ID: <1574735745-54723-1-git-send-email-liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain

Linux system's realpath() remove trailing slashes, but pseudo's doesn't, need
make them identical.

E.g., the following code prints '/tmp' with system's realpath, but pseudo's
realpath prints '/tmp/':

    #include <stdio.h>
    #include <limits.h>
    #include <stdlib.h>

    int main() {
        char out[PATH_MAX];
        printf("out %s\n", realpath("/tmp////", out));
        return 0;
    }

This patch fixes the problem.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 ports/unix/guts/realpath.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/ports/unix/guts/realpath.c b/ports/unix/guts/realpath.c
index 085d2cb..4642e66 100644
--- a/ports/unix/guts/realpath.c
+++ b/ports/unix/guts/realpath.c
@@ -25,6 +25,13 @@
 		rc = strdup(rname);
 	}
 
+	if (rc) {
+		char *ep = rc;
+		ep += strlen (rc) - 1;
+		while (ep > rc && ep[0] == '/')
+			*(ep--) = '\0';
+	}
+
 /*	return rc;
  * }
  */
-- 
2.7.4

