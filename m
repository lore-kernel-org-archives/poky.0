Return-Path: <kergoth@gmail.com>
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63471E01469
	for <poky@yoctoproject.org>; Mon, 18 Mar 2013 19:04:12 -0700 (PDT)
Received: by mail-ie0-f169.google.com with SMTP id 13so7988592iea.0
	for <poky@yoctoproject.org>; Mon, 18 Mar 2013 19:04:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer;
	bh=x4kpAsNijOlt6bKW98vUH0OSHrjVRzKwS3+YHvrKqe0=;
	b=c5nPl96I/mG6SWviWxS6K7UVKtUTmIzVsS5iKj3ut0nvOJpNfVj06JBvN4byik+y4J
	xtjiWyEsNyUogjRfxB5wlW9baQ3gwBurmO1QdRGCT0wdK4EIGDqCj+gErCquB1lLfjMD
	2iKsi70RmTUt9mr+5PQI76wIvHMeBvK1L/uTJU6R+by70v8vE0SufLML5Rut+TNTG4NR
	j+DjlaUb+lCSQbuyk23PcniwgtIMNzE6CJQ41R7mIka5UCcLCsyExdy/nAmASCdR/Ue9
	n4BtYGpE2R9nMRb+dOhPXu+2Ibg3sTpRqL+la0IxAhwmChEyAGPaZFhDj/6JFA+eWR+e
	oGkA==
X-Received: by 10.50.73.65 with SMTP id j1mr74225igv.49.1363658651958;
	Mon, 18 Mar 2013 19:04:11 -0700 (PDT)
Received: from precise64.alm.mentorg.com (nat-lmt.mentorg.com. [139.181.28.34])
	by mx.google.com with ESMTPS id i10sm12024430igz.9.2013.03.18.19.04.10
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 18 Mar 2013 19:04:11 -0700 (PDT)
From: Christopher Larson <kergoth@gmail.com>
To: poky@yoctoproject.org
Date: Mon, 18 Mar 2013 19:04:06 -0700
Message-Id: <1363658646-26585-1-git-send-email-kergoth@gmail.com>
X-Mailer: git-send-email 1.8.2
Cc: Christopher Larson <chris_larson@mentor.com>
Subject: [meta-yocto][for-danny][PATCH] layer.conf: avoid unnecessary early expansion with :=
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
X-List-Received-Date: Tue, 19 Mar 2013 02:04:12 -0000

From: Christopher Larson <chris_larson@mentor.com>

bitbake handles immediate expansions of LAYERDIR for us automatically.

Signed-off-by: Christopher Larson <chris_larson@mentor.com>
---
 meta-yocto-bsp/conf/layer.conf                               | 6 +++---
 meta-yocto/conf/layer.conf                                   | 6 +++---
 scripts/lib/bsp/substrate/target/arch/common/conf/layer.conf | 6 +++---
 3 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/meta-yocto-bsp/conf/layer.conf b/meta-yocto-bsp/conf/layer.conf
index 49fb135..18544bd 100644
--- a/meta-yocto-bsp/conf/layer.conf
+++ b/meta-yocto-bsp/conf/layer.conf
@@ -1,11 +1,11 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have a packages directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
             ${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "yoctobsp"
-BBFILE_PATTERN_yoctobsp := "^${LAYERDIR}/"
+BBFILE_PATTERN_yoctobsp = "^${LAYERDIR}/"
 BBFILE_PRIORITY_yoctobsp = "5"
 
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


