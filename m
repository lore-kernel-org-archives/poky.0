Return-Path: <kergoth@gmail.com>
Received: from mail-ia0-f177.google.com (mail-ia0-f177.google.com
	[209.85.210.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97476E01469
	for <poky@yoctoproject.org>; Mon, 18 Mar 2013 19:04:34 -0700 (PDT)
Received: by mail-ia0-f177.google.com with SMTP id y25so5912037iay.36
	for <poky@yoctoproject.org>; Mon, 18 Mar 2013 19:04:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer;
	bh=1sb6z8YFKr2w9BFc8FI37bt3ZmdGEsAj37top+25uRI=;
	b=cGOaJI9oBX3zHj+iCCSTZdcACO0Sf8MOKJ0XJSa+Wj14pwYy0OUa9Xpq0nDZhCE0V6
	5KY5WaBiJT+XemfVGr6w4ScWFBAHkU5BqlC2wZbuC2r5N+bIIrCyTnmVIdQLQss2DCY5
	tkAOZS8s+8wqjZMBYtBePaqdpebfjyOcxhbgEQ6FNIBnby2O1DS8D7bSQ2gKr9ndHE/0
	Lb5P4IdMlW3CqfGG6pTrmjREYtPiM0aVBwQob8mCy/8vT+DeDZVJU1LC/DSwjuXd/hUw
	Nvq+rbfVTS+oNHK+NzYgkak5cMuqTLudCAuDoej2GM09lnWsPhpYQpijFN6KVMR7jlvp
	jJGw==
X-Received: by 10.50.13.208 with SMTP id j16mr57380igc.73.1363658674272;
	Mon, 18 Mar 2013 19:04:34 -0700 (PDT)
Received: from precise64.alm.mentorg.com (nat-lmt.mentorg.com. [139.181.28.34])
	by mx.google.com with ESMTPS id dy5sm13818360igc.1.2013.03.18.19.04.32
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 18 Mar 2013 19:04:33 -0700 (PDT)
From: Christopher Larson <kergoth@gmail.com>
To: poky@yoctoproject.org
Date: Mon, 18 Mar 2013 19:04:29 -0700
Message-Id: <1363658669-26786-1-git-send-email-kergoth@gmail.com>
X-Mailer: git-send-email 1.8.2
Cc: Christopher Larson <chris_larson@mentor.com>
Subject: [meta-yocto][for-denzil][PATCH] layer.conf: avoid unnecessary early expansion with :=
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
X-List-Received-Date: Tue, 19 Mar 2013 02:04:34 -0000

From: Christopher Larson <chris_larson@mentor.com>

bitbake handles immediate expansions of LAYERDIR for us automatically.

Signed-off-by: Christopher Larson <chris_larson@mentor.com>
---
 meta-yocto/conf/layer.conf                                   | 6 +++---
 scripts/lib/bsp/substrate/target/arch/common/conf/layer.conf | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/meta-yocto/conf/layer.conf b/meta-yocto/conf/layer.conf
index 7917962..89ed171 100644
--- a/meta-yocto/conf/layer.conf
+++ b/meta-yocto/conf/layer.conf
@@ -1,11 +1,11 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${LAYERDIR}:${BBPATH}"
+BBPATH =. "${LAYERDIR}:"
 
 # We have a packages directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
             ${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "yocto"
-BBFILE_PATTERN_yocto := "^${LAYERDIR}/"
+BBFILE_PATTERN_yocto = "^${LAYERDIR}/"
 BBFILE_PRIORITY_yocto = "5"
 
diff --git a/scripts/lib/bsp/substrate/target/arch/common/conf/layer.conf b/scripts/lib/bsp/substrate/target/arch/common/conf/layer.conf
index 921d976..97029dd 100644
--- a/scripts/lib/bsp/substrate/target/arch/common/conf/layer.conf
+++ b/scripts/lib/bsp/substrate/target/arch/common/conf/layer.conf
@@ -1,10 +1,10 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have a recipes directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "{{=machine}}"
-BBFILE_PATTERN_{{=machine}} := "^${LAYERDIR}/"
+BBFILE_PATTERN_{{=machine}} = "^${LAYERDIR}/"
 BBFILE_PRIORITY_{{=machine}} = "6"
-- 
1.8.2


