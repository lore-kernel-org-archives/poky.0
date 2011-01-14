Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id F2D334C80039
	for <poky@yoctoproject.org>; Fri, 14 Jan 2011 06:10:53 -0600 (CST)
Received: by wwb31 with SMTP id 31so2973690wwb.11
	for <poky@yoctoproject.org>; Fri, 14 Jan 2011 04:10:53 -0800 (PST)
Received: by 10.227.128.21 with SMTP id i21mr633496wbs.136.1295007051943;
	Fri, 14 Jan 2011 04:10:51 -0800 (PST)
Received: from localhost (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id m50sm622984wek.8.2011.01.14.04.10.50
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Fri, 14 Jan 2011 04:10:50 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
To: poky@yoctoproject.org
Date: Fri, 14 Jan 2011 13:10:38 +0100
Message-Id: <1295007038-1119-1-git-send-email-koen@dominion.thruhere.net>
X-Mailer: git-send-email 1.6.6.1
Subject: [PATCH] external-python-tarball: add LIC_FILES_CHKSUM
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
X-List-Received-Date: Fri, 14 Jan 2011 12:10:54 -0000

Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
---
 meta/recipes-core/meta/external-python-tarball.bb |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-core/meta/external-python-tarball.bb b/meta/recipes-core/meta/external-python-tarball.bb
index 494b21c..eef93fd 100644
--- a/meta/recipes-core/meta/external-python-tarball.bb
+++ b/meta/recipes-core/meta/external-python-tarball.bb
@@ -1,5 +1,8 @@
 DESCRIPTION = "Meta package for building a standalone python tarball"
 LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
+                    file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+
 DEPENDS = "opkg-native opkg-utils-native virtual/fakeroot-native sed-native"
 
 inherit meta
-- 
1.6.6.1


