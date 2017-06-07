Return-Path: <richard@rpsys.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB13FE00BE9; Wed,  7 Jun 2017 05:42:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,KHOP_DYNAMIC
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 KHOP_DYNAMIC Relay looks like a dynamic address
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 790EEE00BE2
	for <poky@lists.yoctoproject.org>; Wed,  7 Jun 2017 05:42:58 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	v57Ce80f014626
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Wed, 7 Jun 2017 13:40:09 +0100
Received: from richard by hex with local (Exim 4.86_2)
	(envelope-from <richard@rpsys.net>)
	id 1dIaFs-0000nJ-IU; Wed, 07 Jun 2017 13:40:08 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Date: Wed,  7 Jun 2017 13:40:07 +0100
Message-Id: <1496839207-3014-1-git-send-email-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.7.4
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.11
	(dan.rpsys.net [192.168.3.1]);
	Wed, 07 Jun 2017 13:40:09 +0100 (BST)
X-Virus-Scanned: clamav-milter 0.99.2 at dan
X-Virus-Status: Clean
Subject: [PATCH] meta-yocto: Add LAYERSERIES_COMPAT markup to layer.conf
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
X-List-Received-Date: Wed, 07 Jun 2017 12:42:59 -0000

This means mismatched layers are more clearly identified to the user in
cases where compatibility has not been tested.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/layer.conf      | 2 ++
 meta-yocto-bsp/conf/layer.conf | 1 +
 2 files changed, 3 insertions(+)

diff --git a/meta-poky/conf/layer.conf b/meta-poky/conf/layer.conf
index 8b7b33d..26d7c3b 100644
--- a/meta-poky/conf/layer.conf
+++ b/meta-poky/conf/layer.conf
@@ -9,6 +9,8 @@ BBFILE_COLLECTIONS += "yocto"
 BBFILE_PATTERN_yocto = "^${LAYERDIR}/"
 BBFILE_PRIORITY_yocto = "5"
 
+LAYERSERIES_COMPAT_yocto = "rocko"
+
 # This should only be incremented on significant changes that will
 # cause compatibility issues with other layers
 LAYERVERSION_yocto = "3"
diff --git a/meta-yocto-bsp/conf/layer.conf b/meta-yocto-bsp/conf/layer.conf
index 44dbca6..7b565f2 100644
--- a/meta-yocto-bsp/conf/layer.conf
+++ b/meta-yocto-bsp/conf/layer.conf
@@ -9,3 +9,4 @@ BBFILE_COLLECTIONS += "yoctobsp"
 BBFILE_PATTERN_yoctobsp = "^${LAYERDIR}/"
 BBFILE_PRIORITY_yoctobsp = "5"
 LAYERVERSION_yoctobsp = "3"
+LAYERSERIES_COMPAT_yoctobsp = "rocko"
-- 
2.7.4


