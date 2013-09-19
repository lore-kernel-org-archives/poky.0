Return-Path: <ross.burton@intel.com>
Received: from mail-wg0-f45.google.com (mail-wg0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB67EE015EA
	for <poky@yoctoproject.org>; Thu, 19 Sep 2013 03:04:40 -0700 (PDT)
Received: by mail-wg0-f45.google.com with SMTP id y10so7890933wgg.24
	for <poky@yoctoproject.org>; Thu, 19 Sep 2013 03:04:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=ZRSkh0qxJ2UQictQBiG9nCPeqfZ3MUe4/QlY+X6vlIQ=;
	b=PLLflmkre78WjWqGfOjpfLwUbEhY39Kwh0zD63eJyju+TRAX1zeCLhR2JKIi4Q+h3F
	SNzRGEuwAJXH+rhk4YZYnTlFifIUTQpfDQFrcw9KFxhg0bapB57wUqgrtQo2JA9zCVk7
	tRWXJkf1uGcATVem8pNdgHf6u9r97mMjJBg9GtMgOEdFkoK8yUXl4DLVQSbQfxMP9q6d
	3CZFBCvIEomnIbwKSggkzFJTTMrNmn81mGGpvzkBHpQJjcL6Hrhl1Mat+7kENOO/EbJo
	F/t288+PGMLhQu3jwlYHTZb+eAEWnK3lUI917Gi+5bW6p1C3dyiZwF+RB/LAFBYb0Mhm
	II+A==
X-Gm-Message-State: ALoCoQnhA3ksXn5xHktKA8sEaGD0tf/CQYlymx9QZtYLbyawTYgubiLerAgNGsmRP3rbbYhqocHZ
X-Received: by 10.180.206.5 with SMTP id lk5mr692703wic.10.1379585079213;
	Thu, 19 Sep 2013 03:04:39 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id u15sm17592096wib.5.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 19 Sep 2013 03:04:38 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Thu, 19 Sep 2013 11:04:35 +0100
Message-Id: <1379585075-26548-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH] bblayers.conf.sample: use ##OEROOT## instead of ##COREBASE##
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
X-List-Received-Date: Thu, 19 Sep 2013 10:04:41 -0000

The variable ##COREBASE## has been deprecated, so use ##OEROOT## instead.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/bblayers.conf.sample |   10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta-yocto/conf/bblayers.conf.sample b/meta-yocto/conf/bblayers.conf.sample
index 7fd755d..0eda565 100644
--- a/meta-yocto/conf/bblayers.conf.sample
+++ b/meta-yocto/conf/bblayers.conf.sample
@@ -6,11 +6,11 @@ BBPATH = "${TOPDIR}"
 BBFILES ?= ""
 
 BBLAYERS ?= " \
-  ##COREBASE##/meta \
-  ##COREBASE##/meta-yocto \
-  ##COREBASE##/meta-yocto-bsp \
+  ##OEROOT##/meta \
+  ##OEROOT##/meta-yocto \
+  ##OEROOT##/meta-yocto-bsp \
   "
 BBLAYERS_NON_REMOVABLE ?= " \
-  ##COREBASE##/meta \
-  ##COREBASE##/meta-yocto \
+  ##OEROOT##/meta \
+  ##OEROOT##/meta-yocto \
   "
-- 
1.7.10.4


