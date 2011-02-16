Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id ADBAB4C8007E
	for <poky@yoctoproject.org>; Tue, 15 Feb 2011 23:14:45 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1G5Eje1023735
	for <poky@yoctoproject.org>; Tue, 15 Feb 2011 21:14:45 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 15 Feb 2011 21:14:44 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 15 Feb 2011 21:14:44 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Tue, 15 Feb 2011 23:12:42 -0600
Message-Id: <232138d14befbc0b106b2092c0e4950082f28f0c.1297832946.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1297832946.git.mark.hatle@windriver.com>
References: <cover.1297832946.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1297832946.git.mark.hatle@windriver.com>
References: <cover.1297832946.git.mark.hatle@windriver.com>
X-OriginalArrivalTime: 16 Feb 2011 05:14:44.0826 (UTC)
	FILETIME=[6C7103A0:01CBCD98]
Subject: [PATCH 3/4] image.bbclass: Disable shell debug messages
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
X-List-Received-Date: Wed, 16 Feb 2011 05:14:45 -0000

By default image had a "set -x" to enable shell debug messages,
this adds a lot of overhead to the system due to logging.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/classes/image.bbclass |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/classes/image.bbclass b/meta/classes/image.bbclass
index 14de3e1..2cc17e1 100644
--- a/meta/classes/image.bbclass
+++ b/meta/classes/image.bbclass
@@ -96,7 +96,7 @@ do_build[nostamp] = "1"
 # Must call real_do_rootfs() from inside here, rather than as a separate
 # task, so that we have a single fakeroot context for the whole process.
 fakeroot do_rootfs () {
-	set -x
+	#set -x
 	rm -rf ${IMAGE_ROOTFS}
 	mkdir -p ${IMAGE_ROOTFS}
 	mkdir -p ${DEPLOY_DIR_IMAGE}
-- 
1.7.3.4


