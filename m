Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3D20E00C5B; Wed,  6 Apr 2016 03:56:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.60.68.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bes.se.axis.com (bes.se.axis.com [195.60.68.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 615D4E00B37
	for <poky@yoctoproject.org>; Wed,  6 Apr 2016 03:56:05 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bes.se.axis.com (Postfix) with ESMTP id 7D3552E102
	for <poky@yoctoproject.org>; Wed,  6 Apr 2016 12:56:04 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bes.se.axis.com
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from bes.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bes.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id JOtcpvBksTTk for <poky@yoctoproject.org>;
	Wed,  6 Apr 2016 12:56:03 +0200 (CEST)
Received: from boulder.se.axis.com (boulder.se.axis.com [10.0.2.104])
	by bes.se.axis.com (Postfix) with ESMTP id 4241A2E130
	for <poky@yoctoproject.org>; Wed,  6 Apr 2016 12:56:03 +0200 (CEST)
Received: from boulder.se.axis.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 2B35E1753
	for <poky@yoctoproject.org>; Wed,  6 Apr 2016 12:56:03 +0200 (CEST)
Received: from seth.se.axis.com (seth.se.axis.com [10.0.2.172])
	by boulder.se.axis.com (Postfix) with ESMTP id 1E0AC16E6
	for <poky@yoctoproject.org>; Wed,  6 Apr 2016 12:56:03 +0200 (CEST)
Received: from saur-2.se.axis.com (saur-2.se.axis.com [10.92.3.2])
	by seth.se.axis.com (Postfix) with ESMTP id 1C3EF1057
	for <poky@yoctoproject.org>; Wed,  6 Apr 2016 12:56:03 +0200 (CEST)
Received: from saur-2.se.axis.com (localhost [127.0.0.1])
	by saur-2.se.axis.com (8.14.5/8.14.5) with ESMTP id u36Au3Xp004145
	for <poky@yoctoproject.org>; Wed, 6 Apr 2016 12:56:03 +0200
Received: (from pkj@localhost)
	by saur-2.se.axis.com (8.14.5/8.14.5/Submit) id u36Au3kr004144
	for poky@yoctoproject.org; Wed, 6 Apr 2016 12:56:03 +0200
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: poky@yoctoproject.org
Date: Wed,  6 Apr 2016 12:56:01 +0200
Message-Id: <cec373ea4a61d6c2992c008240f65f6fe86f576d.1459940000.git.pkj@axis.com>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <cover.1459940000.git.pkj@axis.com>
References: <cover.1459940000.git.pkj@axis.com>
In-Reply-To: <cover.1459940000.git.pkj@axis.com>
References: <cover.1459940000.git.pkj@axis.com>
Subject: [PATCH 1/1] local.conf.sample: Make it possible to override EXTRA_IMAGE_FEATURES
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
X-List-Received-Date: Wed, 06 Apr 2016 10:56:09 -0000

It should be possible to override EXTRA_IMAGE_FEATURES in auto.conf,
which is read before local.conf.

Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
---
 meta-poky/conf/local.conf.sample | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
index 15dcc48..ede9aab 100644
--- a/meta-poky/conf/local.conf.sample
+++ b/meta-poky/conf/local.conf.sample
@@ -138,7 +138,7 @@ PACKAGE_CLASSES ?= "package_rpm"
 # There are other application targets that can be used here too, see
 # meta/classes/image.bbclass and meta/classes/core-image.bbclass for more details.
 # We default to enabling the debugging tweaks.
-EXTRA_IMAGE_FEATURES = "debug-tweaks"
+EXTRA_IMAGE_FEATURES ?= "debug-tweaks"
 
 #
 # Additional image features
-- 
2.1.0


