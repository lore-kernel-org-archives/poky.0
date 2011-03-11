Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 635D04C800A7
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 18:59:57 -0600 (CST)
Received: from localhost (unknown [209.216.169.162])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 31027308C4
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 19:59:53 -0500 (EST)
Message-Id: <ba57b7500dde13b41db8c4959aa2e8be97f19903.1299804498.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1299804498.git.scott.a.garman@intel.com>
References: <cover.1299804498.git.scott.a.garman@intel.com>
Old-Date: Sat, 5 Mar 2011 19:32:03 -0800
Date: Thu, 10 Mar 2011 16:59:50 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 31027308C4.9F8F4
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 5/6] poky-image-sato.bb: add ssh-server to IMAGE_FEATURES
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
X-List-Received-Date: Fri, 11 Mar 2011 00:59:57 -0000

From: Scott Garman <scott.a.garman@intel.com>

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/recipes-sato/images/poky-image-sato-dev.bb |    2 +-
 meta/recipes-sato/images/poky-image-sato-sdk.bb |    2 +-
 meta/recipes-sato/images/poky-image-sato.bb     |    2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-sato/images/poky-image-sato-dev.bb b/meta/recipes-sato/images/poky-image-sato-dev.bb
index 429095e..71d44e2 100644
--- a/meta/recipes-sato/images/poky-image-sato-dev.bb
+++ b/meta/recipes-sato/images/poky-image-sato-dev.bb
@@ -2,7 +2,7 @@
 # Copyright (C) 2007 OpenedHand Ltd.
 #
 
-IMAGE_FEATURES += "apps-console-core ${SATO_IMAGE_FEATURES} dev-pkgs"
+IMAGE_FEATURES += "apps-console-core ${SATO_IMAGE_FEATURES} dev-pkgs ssh-server"
 
 LICENSE = "MIT"
 
diff --git a/meta/recipes-sato/images/poky-image-sato-sdk.bb b/meta/recipes-sato/images/poky-image-sato-sdk.bb
index 9f8eef9..7ee2f95 100644
--- a/meta/recipes-sato/images/poky-image-sato-sdk.bb
+++ b/meta/recipes-sato/images/poky-image-sato-sdk.bb
@@ -2,7 +2,7 @@
 # Copyright (C) 2007 OpenedHand Ltd.
 #
 
-IMAGE_FEATURES += "apps-console-core ${SATO_IMAGE_FEATURES} tools-debug tools-profile tools-sdk dev-pkgs qt4-pkgs"
+IMAGE_FEATURES += "apps-console-core ${SATO_IMAGE_FEATURES} tools-debug tools-profile tools-sdk dev-pkgs qt4-pkgs ssh-server"
 
 LICENSE = "MIT"
 
diff --git a/meta/recipes-sato/images/poky-image-sato.bb b/meta/recipes-sato/images/poky-image-sato.bb
index 35d1a53..31f74b1 100644
--- a/meta/recipes-sato/images/poky-image-sato.bb
+++ b/meta/recipes-sato/images/poky-image-sato.bb
@@ -2,7 +2,7 @@
 # Copyright (C) 2007 OpenedHand Ltd.
 #
 
-IMAGE_FEATURES += "apps-console-core ${SATO_IMAGE_FEATURES}"
+IMAGE_FEATURES += "apps-console-core ${SATO_IMAGE_FEATURES} ssh-server"
 
 LICENSE = "MIT"
 
-- 
1.7.1


