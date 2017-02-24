Return-Path: <anton@advancedtelematic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8AA81E00724; Fri, 24 Feb 2017 01:26:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f171.google.com (mail-wr0-f171.google.com
	[209.85.128.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 260D2E00405
	for <poky@yoctoproject.org>; Fri, 24 Feb 2017 01:26:54 -0800 (PST)
Received: by mail-wr0-f171.google.com with SMTP id 89so9119438wrr.3
	for <poky@yoctoproject.org>; Fri, 24 Feb 2017 01:26:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=advancedtelematic.com; s=google;
	h=from:to:cc:subject:date:message-id;
	bh=TZXVffekL+gruZ9i0ttqhPRWo9f59z2uTrkJb8ftPRk=;
	b=iVSehsA6Q5eGytmvDQCb+Ka1OeKTLHcpclWLIYhVpHKrfn2NElOlRAi2BnYP+cT+HA
	1pX9Qtx384h8EDoo7mAwo/1GzZWfe4qxV+HcAXI/1CeXLVJobTebLqsPqzYvxm1CVADE
	vFRuvWhmHhtZB/dhCiHEoxvQ1inYZDBLLslr4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=TZXVffekL+gruZ9i0ttqhPRWo9f59z2uTrkJb8ftPRk=;
	b=Nm6PiWuYJtOxvG0UAlacq5+xRklI44lg/4SV3kBzLDRsPcuTtpIiBRr/s0VpeaF6W3
	ihGngY4ZWG8NITwGiXP4fbbvKxY6gXw9E5Wxiqqg/cr63cEsO0Ah9wxgR7I9ifpupJj/
	3MYlhHIQaxQQc2i+l759fIbng2q0OgruTtGxKq6w3JBNEMWDFGobAncHUXgHJVlRPvb+
	c/8kxq+++eUIX+AyPHxDfzz1/U0klpNUigTDQ5CNSgawkmftXDPoYWQsq3kDd59AOg4o
	d/w5Sm1edUdsuJ/yeRB3/v3EJflK7pWllREDPdzJAF+5YebqEWCIGTXRpCi1xOHAZA0x
	HqhA==
X-Gm-Message-State: AMke39kqR6MFmwhRXDcs1vjT503huUGzM/DFJl2jg14Q8f/bHb4FVgZbi207/DRcsiolDA==
X-Received: by 10.223.130.144 with SMTP id 16mr1636273wrc.32.1487928413430;
	Fri, 24 Feb 2017 01:26:53 -0800 (PST)
Received: from anton-ats.internal.advancedtelematic.com
	(p57bf9f95.dip0.t-ipconnect.de. [87.191.159.149])
	by smtp.gmail.com with ESMTPSA id
	z198sm1553298wmz.24.2017.02.24.01.26.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 24 Feb 2017 01:26:52 -0800 (PST)
From: anton@advancedtelematic.com
To: poky@yoctoproject.org
Date: Fri, 24 Feb 2017 10:20:02 +0100
Message-Id: <20170224092002.1059-1-anton@advancedtelematic.com>
X-Mailer: git-send-email 2.11.1
Cc: seebs@seebs.net
Subject: [PATCH 1/1] Filter out erroneous POSIX ACLs
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
X-List-Received-Date: Fri, 24 Feb 2017 09:26:56 -0000

From: Anton Gerasimov <anton@advancedtelematic.com>

The difference between what we see in pseudo and what happens without
pseudo can be seen by typing:

    mkdir setfattr-test
    setfattr -n system.posix_acl_default -v 0x02000000 setfattr-test
    getfattr -n system.posix_acl_default setfattr-test

Under some kernel configurations this difference leads to annoying
errors, e.g. directories copied with 'cp -a' get broken in a fancy way.

Signed-off-by: Anton Gerasimov <anton@advancedtelematic.com>
---
 ports/linux/xattr/pseudo_wrappers.c | 23 +++++++++++++++++++++--
 1 file changed, 21 insertions(+), 2 deletions(-)

diff --git a/ports/linux/xattr/pseudo_wrappers.c b/ports/linux/xattr/pseudo_wrappers.c
index 46bc053..31a6baf 100644
--- a/ports/linux/xattr/pseudo_wrappers.c
+++ b/ports/linux/xattr/pseudo_wrappers.c
@@ -64,7 +64,7 @@ posix_permissions(const acl_header *header, int entries, int *extra, int *mode)
 	if (le32(header->version) != 2) {
 		pseudo_diag("Fatal: ACL support no available for header version %d.\n",
 			le32(header->version));
-		return 1;
+		return -1;
 	}
 	*mode = 0;
 	*extra = 0;
@@ -140,12 +140,27 @@ static int shared_setxattr(const char *path, int fd, const char *name, const voi
 	pseudo_debug(PDBGF_XATTR, "setxattr(%s [fd %d], %s => '%.*s')\n",
 		path ? path : "<no path>", fd, name, (int) size, (char *) value);
 
+	/* Filter out erroneous sizes for POSIX ACL
+	 *  see posix_acl_xattr_count in include/linux/posix_acl_xattr.h of Linux source code */
+	if (!strcmp(name, "system.posix_acl_access") || !strcmp(name, "system.posix_acl_default")) {
+		// ACL is corrupt, issue an error
+		if(size < sizeof(acl_header) || (size - sizeof(acl_header)) % sizeof(acl_entry) != 0) {
+			errno = EINVAL;
+			return -1;
+		}
+
+		// ACL is empty, do nothing
+		if((size - sizeof(acl_header)) / sizeof(acl_entry) == 0) {
+			return 0;
+		}
+	}
 	/* this may be a plain chmod */
 	if (!strcmp(name, "system.posix_acl_access")) {
 		int extra;
 		int mode;
 		int entries = (size - sizeof(acl_header)) / sizeof(acl_entry);
-		if (!posix_permissions(value, entries, &extra, &mode)) {
+		int res = posix_permissions(value, entries, &extra, &mode);
+		if (res == 0) {
 			pseudo_debug(PDBGF_XATTR, "posix_acl_access translated to mode %04o. Remaining attribute(s): %d.\n",
 				mode, extra);
 			buf.st_mode = mode;
@@ -164,8 +179,12 @@ static int shared_setxattr(const char *path, int fd, const char *name, const voi
 			if (!extra) {
 				return 0;
 			}
+		} else if (res == -1) {
+			errno = EOPNOTSUPP;
+			return -1;
 		}
 	}
+
 	if (!strcmp(name, "user.pseudo_data")) {
 		pseudo_debug(PDBGF_XATTR | PDBGF_XATTRDB, "user.pseudo_data xattribute does not get to go in database.\n");
 		return -1;
-- 
2.11.1


