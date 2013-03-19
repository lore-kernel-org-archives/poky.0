Return-Path: <kergoth@gmail.com>
Received: from mail-pb0-f51.google.com (mail-pb0-f51.google.com
	[209.85.160.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1608E01469
	for <poky@yoctoproject.org>; Mon, 18 Mar 2013 19:03:26 -0700 (PDT)
Received: by mail-pb0-f51.google.com with SMTP id un15so6850540pbc.24
	for <poky@yoctoproject.org>; Mon, 18 Mar 2013 19:03:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer;
	bh=tiu3jsq6E8Nsd9h9Tz6GMwI1BLDFyJSh7B8wU0sWRQM=;
	b=cmI98lLJawPUFr49UdssKPZ/SjkbCCfsV1yDcHHoImbMpaqb0030YkFPAuZ+GDemKb
	/pplupsztqHD6CXVBsJPEI8bDd+sK/gMo/hBbeBaOLtxCk70I24UjkptJRLvUZDrE7in
	CAqFzUzYDRnNw0Rx4nrtv0iJ2MwbTqvKMqsD4ZXZ9qjkMomx+XaQ+snGObVfufj46hFJ
	f7PE3RZGPyvLKIVvXNGAuOXqX9HBf3g6jTtEAZXisfbqk+SoxphBD+7+IcN4J32ijzZ8
	I245ehMPoMSDX2D1zRzpnqSad5/GUG1Cc2m33TzH/FG2HL3T767PBQgJzFw220CA2gCm
	/60w==
X-Received: by 10.66.84.10 with SMTP id u10mr531523pay.199.1363658606762;
	Mon, 18 Mar 2013 19:03:26 -0700 (PDT)
Received: from precise64.alm.mentorg.com (nat-lmt.mentorg.com. [139.181.28.34])
	by mx.google.com with ESMTPS id qd8sm22149399pbc.29.2013.03.18.19.03.24
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 18 Mar 2013 19:03:25 -0700 (PDT)
From: Christopher Larson <kergoth@gmail.com>
To: poky@yoctoproject.org
Date: Mon, 18 Mar 2013 19:03:20 -0700
Message-Id: <1363658600-26362-1-git-send-email-kergoth@gmail.com>
X-Mailer: git-send-email 1.8.2
Cc: Christopher Larson <chris_larson@mentor.com>
Subject: [meta-yocto][PATCH] layer.conf: avoid unnecessary early expansion with :=
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
X-List-Received-Date: Tue, 19 Mar 2013 02:03:27 -0000

From: Christopher Larson <chris_larson@mentor.com>

bitbake handles immediate expansions of LAYERDIR for us automatically.

Signed-off-by: Christopher Larson <chris_larson@mentor.com>
---
 meta-yocto-bsp/conf/layer.conf                               | 6 +++---
 meta-yocto/conf/layer.conf                                   | 6 +++---
 scripts/lib/bsp/substrate/target/arch/common/conf/layer.conf | 6 +++---
 scripts/lib/bsp/substrate/target/arch/layer/conf/layer.conf  | 6 +++---
 4 files changed, 12 insertions(+), 12 deletions(-)

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
diff --git a/scripts/lib/bsp/substrate/target/arch/layer/conf/layer.conf b/scripts/lib/bsp/substrate/target/arch/layer/conf/layer.conf
index 84a9abb..76153f3 100644
--- a/scripts/lib/bsp/substrate/target/arch/layer/conf/layer.conf
+++ b/scripts/lib/bsp/substrate/target/arch/layer/conf/layer.conf
@@ -1,10 +1,10 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have a recipes directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "{{=layer_name}}"
-BBFILE_PATTERN_{{=layer_name}} := "^${LAYERDIR}/"
+BBFILE_PATTERN_{{=layer_name}} = "^${LAYERDIR}/"
 BBFILE_PRIORITY_{{=layer_name}} = "{{=layer_priority}}"
-- 
1.8.2


