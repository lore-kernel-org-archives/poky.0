Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 399834C804B8
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 19:41:31 -0600 (CST)
Received: from localhost (unknown [209.216.169.162])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 31E44304F3
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 20:41:24 -0500 (EST)
Message-Id: <fea354cb4ff0d76250a221269ace4272752e41ec.1299807513.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1299807513.git.scott.a.garman@intel.com>
References: <cover.1299807513.git.scott.a.garman@intel.com>
Old-Date: Thu, 10 Mar 2011 17:24:15 -0800
Date: Thu, 10 Mar 2011 17:41:21 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 31E44304F3.5B333
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 5/7] poky-image.bbclass: add ssh-server to SATO_IMAGE_FEATURES
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
X-List-Received-Date: Fri, 11 Mar 2011 01:41:31 -0000

From: Scott Garman <scott.a.garman@intel.com>

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/classes/poky-image.bbclass |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/classes/poky-image.bbclass b/meta/classes/poky-image.bbclass
index 896ef94..3b49c75 100644
--- a/meta/classes/poky-image.bbclass
+++ b/meta/classes/poky-image.bbclass
@@ -97,7 +97,7 @@ IMAGE_INSTALL ?= "${POKY_BASE_INSTALL}"
 
 X11_IMAGE_FEATURES  = "x11-base apps-x11-core package-management"
 ENHANCED_IMAGE_FEATURES = "${X11_IMAGE_FEATURES} apps-x11-games apps-x11-pimlico package-management"
-SATO_IMAGE_FEATURES = "${ENHANCED_IMAGE_FEATURES} x11-sato"
+SATO_IMAGE_FEATURES = "${ENHANCED_IMAGE_FEATURES} x11-sato ssh-server"
 
 inherit image
 
-- 
1.7.1


