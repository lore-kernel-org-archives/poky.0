Return-Path: <kergoth@gmail.com>
Received: from mail-ia0-f179.google.com (mail-ia0-f179.google.com
	[209.85.210.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60DDCE01469
	for <poky@yoctoproject.org>; Mon, 18 Mar 2013 18:16:59 -0700 (PDT)
Received: by mail-ia0-f179.google.com with SMTP id x24so5773816iak.38
	for <poky@yoctoproject.org>; Mon, 18 Mar 2013 18:16:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer;
	bh=Rmp/NZ6b4pITkOnMaod0ExL7u41Va45lbI0A8tA9baI=;
	b=VKPwU1AnijV5uz56w7YyELEM6H4EPYSIy0N58nosiBcH7/7b40xX6C2jwrb+KlLyNl
	R/wZocBp3MD5813K/oBsXIP1XCUoAdePE2eN7UXldCNQhaTP5HvwI+WVAlLbayqkunc2
	YefcJAqmoKKOSTffo7ZmswSNsZTZx8ICDb+vBVoAEfiO9Ev+gjs95ojere/wzczv+k7r
	0PYH5jW/6Ye1eXuGlUtAMEFi98j+ihF5BTC3rqZGDsI0CyhD7kmRTBwy5pmLNpPvLr6C
	1LwIbXhyQvhPgW+rnx8p36EsFiGQD97TUu7+Pgs5IHMhFSIcamjir3CchXSnexzFwyFj
	USIQ==
X-Received: by 10.50.208.101 with SMTP id md5mr538889igc.60.1363655819090;
	Mon, 18 Mar 2013 18:16:59 -0700 (PDT)
Received: from precise64.alm.mentorg.com (nat-lmt.mentorg.com. [139.181.28.34])
	by mx.google.com with ESMTPS id a3sm13614945igq.5.2013.03.18.18.16.57
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 18 Mar 2013 18:16:58 -0700 (PDT)
From: Christopher Larson <kergoth@gmail.com>
To: poky@yoctoproject.org
Date: Mon, 18 Mar 2013 18:16:54 -0700
Message-Id: <1363655814-12889-1-git-send-email-kergoth@gmail.com>
X-Mailer: git-send-email 1.8.2
Cc: Christopher Larson <chris_larson@mentor.com>
Subject: [meta-extras][PATCH] layer.conf: avoid unnecessary early expansion with :=
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
X-List-Received-Date: Tue, 19 Mar 2013 01:16:59 -0000

From: Christopher Larson <chris_larson@mentor.com>

bitbake handles immediate expansions of LAYERDIR for us automatically.

Signed-off-by: Christopher Larson <chris_larson@mentor.com>
---
 conf/layer.conf | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 66af06d..ed52705 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -1,11 +1,11 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have a packages directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes*/*/*.bb"
+BBFILES += "${LAYERDIR}/recipes*/*/*.bb"
 
 BBFILE_COLLECTIONS += "extras"
-BBFILE_PATTERN_extras := "^${LAYERDIR}/"
+BBFILE_PATTERN_extras = "^${LAYERDIR}/"
 BBFILE_PRIORITY_extras = "5"
 
 require conf/distro/include/poky-extras-src-revisions.inc
-- 
1.8.2


