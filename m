Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 768D1E00B9C; Mon, 21 Mar 2016 12:45:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A5EDE0088B
	for <poky@yoctoproject.org>; Mon, 21 Mar 2016 12:44:59 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga103.jf.intel.com with ESMTP; 21 Mar 2016 12:44:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,373,1455004800"; d="scan'208";a="928822340"
Received: from linux.intel.com ([10.23.219.25])
	by fmsmga001.fm.intel.com with ESMTP; 21 Mar 2016 12:44:58 -0700
Received: from vmed.fi.intel.com (vmed.fi.intel.com [10.237.72.51])
	by linux.intel.com (Postfix) with ESMTP id 20AA26A4004;
	Mon, 21 Mar 2016 13:32:40 -0700 (PDT)
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 21 Mar 2016 19:25:06 +0200
Message-Id: <1458581106-14201-1-git-send-email-ed.bartosh@linux.intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH] conf-notes: remove reference to adt-installer
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
X-List-Received-Date: Mon, 21 Mar 2016 19:45:02 -0000

As adt-installer is not supported anymore in 2.1,
removed the reference to it from "Common targets".

[YOCTO #9256]

Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
---
 meta-poky/conf/conf-notes.txt | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-poky/conf/conf-notes.txt b/meta-poky/conf/conf-notes.txt
index 66e6319..2f2932b 100644
--- a/meta-poky/conf/conf-notes.txt
+++ b/meta-poky/conf/conf-notes.txt
@@ -2,7 +2,6 @@ Common targets are:
     core-image-minimal
     core-image-sato
     meta-toolchain
-    adt-installer
     meta-ide-support
 
 You can also run generated qemu images with a command like 'runqemu qemux86'
-- 
2.1.4


