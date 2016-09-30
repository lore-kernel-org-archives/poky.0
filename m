Return-Path: <anton@advancedtelematic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63E1CE00CBA; Fri, 30 Sep 2016 08:46:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A52AEE00B3A
	for <poky@yoctoproject.org>; Fri, 30 Sep 2016 08:46:52 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id b4so54641447wmb.0
	for <poky@yoctoproject.org>; Fri, 30 Sep 2016 08:46:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=advancedtelematic.com; s=google;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=OcoPbIl8kehcaj2UQ/RwUAQny4+bam0fzwyhEJWBZqo=;
	b=Gt6oH2I4FZZGLqlpD0h5ueHx1RTW0k1KWIbA0/e70AGqxGJfE2obQJ4V0FSForScJx
	Cn64aZz7LzQmwGsrXCceXUGAU6SmLsSnC36cVSUNhuPCz84prlvehKGQLOA1i0lYpKI9
	1Mto661Z93PuBFu1KIfDd079dvMNXMpXA/m+I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=OcoPbIl8kehcaj2UQ/RwUAQny4+bam0fzwyhEJWBZqo=;
	b=HHWk92Vb9rF9eWy3jmDdwmzrsIIFy0BIiBZG18sXpZ47NPq8Yb/ZIlv6zOX20i5lyQ
	GaXAYHKsXk6nSRpdn/k5mThuZpDr9XS6M/ct8VIIC6Cc9xbWDaXluq3KD5t288+sje9j
	2zfkpPW19G+a/QYYe3s7TrfUIQrU4P6d/s/irUssJp9tWUilFv6DV/8rzhSNjomGNJRI
	NJXF/NGWTHL2hf6Uvjq95R39LCzVxcriBE+o2ewzp0+oH0uqZyxcRlL4k3q9i56bAF23
	r28vAgHA1jhNho63ckbn1CKsfXjxyVo5A7uQCS/RuJ8Xsia1cNgTib3rfzymsT5VAKsx
	dyWQ==
X-Gm-Message-State: AA6/9RnZgleDIuUeIuNZNjeT1y5sIbzEYbitkgQYt4aiR67pPNKx19lAW1rNvvIqgiQUuA==
X-Received: by 10.194.234.69 with SMTP id uc5mr6733202wjc.76.1475250411263;
	Fri, 30 Sep 2016 08:46:51 -0700 (PDT)
Received: from anton-ats.internal.advancedtelematic.com
	(p4FC5BB70.dip0.t-ipconnect.de. [79.197.187.112])
	by smtp.gmail.com with ESMTPSA id
	w71sm4754615wmw.17.2016.09.30.08.46.50
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 30 Sep 2016 08:46:50 -0700 (PDT)
From: Anton Gerasimov <anton@advancedtelematic.com>
To: poky@yoctoproject.org
Date: Fri, 30 Sep 2016 17:43:02 +0200
Message-Id: <20160930154302.2901-2-anton@advancedtelematic.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20160930154302.2901-1-anton@advancedtelematic.com>
References: <20160930154302.2901-1-anton@advancedtelematic.com>
Cc: seebs@seebs.net
Subject: [PATCH 1/1] pseudo: Add check for existence of old file to renameat
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
X-List-Received-Date: Fri, 30 Sep 2016 15:46:53 -0000

Signed-off-by: Anton Gerasimov <anton@advancedtelematic.com>
---
 ports/unix/guts/renameat.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/ports/unix/guts/renameat.c b/ports/unix/guts/renameat.c
index ade0509..d5e36fa 100644
--- a/ports/unix/guts/renameat.c
+++ b/ports/unix/guts/renameat.c
@@ -11,6 +11,7 @@
 	int oldrc, newrc;
 	int save_errno;
 	int old_db_entry = 0;
+	int may_unlinked = 0;
 
 	pseudo_debug(PDBGF_FILE, "renameat: %d,%s->%d,%s\n",
 		olddirfd, oldpath ? oldpath : "<nil>",
@@ -44,10 +45,14 @@
 	/* as with unlink, we have to mark that the file may get deleted */
 	msg = pseudo_client_op(OP_MAY_UNLINK, 0, -1, newdirfd, newpath, newrc ? NULL : &newbuf);
 	if (msg && msg->result == RESULT_SUCCEED)
+		may_unlinked = 1;
+	msg = pseudo_client_op(OP_STAT, 0, -1, olddirfd, oldpath, oldrc ? NULL : &oldbuf);
+	if (msg && msg->result == RESULT_SUCCEED)
 		old_db_entry = 1;
+
 	rc = real_renameat(olddirfd, oldpath, newdirfd, newpath);
 	save_errno = errno;
-	if (old_db_entry) {
+	if (may_unlinked) {
 		if (rc == -1) {
 			/* since we failed, that wasn't really unlinked -- put
 			 * it back.
-- 
2.9.3


