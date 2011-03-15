Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 836834C804D4
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 18:12:27 -0500 (CDT)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 6E97330512
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 19:12:22 -0400 (EDT)
Message-Id: <19b869292ae0a20338f53e82aca71e3db63ca3d7.1300230459.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1300230459.git.scott.a.garman@intel.com>
References: <cover.1300230459.git.scott.a.garman@intel.com>
Old-Date: Sat, 12 Mar 2011 23:16:30 -0800
Date: Tue, 15 Mar 2011 16:12:20 -0700
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 6E97330512.491E4
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 7/7] poky-image-basic: add ssh-server-openssh to IMAGE_FEATURES
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
X-List-Received-Date: Tue, 15 Mar 2011 23:12:27 -0000

From: Scott Garman <scott.a.garman@intel.com>

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/recipes-extended/images/poky-image-basic.bb |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-extended/images/poky-image-basic.bb b/meta/recipes-extended/images/poky-image-basic.bb
index 537a6e4..7e4596e 100644
--- a/meta/recipes-extended/images/poky-image-basic.bb
+++ b/meta/recipes-extended/images/poky-image-basic.bb
@@ -1,4 +1,4 @@
-IMAGE_FEATURES += "apps-console-core "
+IMAGE_FEATURES += "apps-console-core ssh-server-openssh"
 
 IMAGE_INSTALL = "\
     ${POKY_BASE_INSTALL} \
-- 
1.7.1


