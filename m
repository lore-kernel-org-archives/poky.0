Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id D9D454C80053
	for <poky@yoctoproject.org>; Tue,  8 Feb 2011 10:50:27 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p18GoRgg007458
	for <poky@yoctoproject.org>; Tue, 8 Feb 2011 08:50:27 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 8 Feb 2011 08:50:26 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 8 Feb 2011 08:50:27 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Tue,  8 Feb 2011 10:47:37 -0600
Message-Id: <de9467da936227c679a4efe672185ba4eb7d26c9.1297183506.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1297183506.git.mark.hatle@windriver.com>
References: <cover.1297183506.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1297183506.git.mark.hatle@windriver.com>
References: <cover.1297183506.git.mark.hatle@windriver.com>
X-OriginalArrivalTime: 08 Feb 2011 16:50:27.0207 (UTC)
	FILETIME=[4988E170:01CBC7B0]
Subject: [PATCH 2/2] insane.bbclass: Fix config.log error message
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 08 Feb 2011 16:50:28 -0000

[BUG #702]

The previous error message was confusing.  It was looking for both library and
include host contamination, but the message only indicated include files.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/classes/insane.bbclass |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/classes/insane.bbclass b/meta/classes/insane.bbclass
index 6f06d85..5d3ef92 100644
--- a/meta/classes/insane.bbclass
+++ b/meta/classes/insane.bbclass
@@ -575,7 +575,7 @@ python do_qa_configure() {
                     os.path.join(root,"config.log")
         if "config.log" in files:
             if os.system(statement) == 0:
-                bb.fatal("""This autoconf log indicates errors, it looked at host includes.
+                bb.fatal("""This autoconf log indicates errors, it looked at host include and/or library paths while determining system capabilities.
 Rerun configure task after fixing this. The path was '%s'""" % root)
 
         if "configure.ac" in files:
-- 
1.7.3.4


