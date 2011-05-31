Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 13E314C80AA5
	for <poky@yoctoproject.org>; Tue, 31 May 2011 13:14:20 -0500 (CDT)
Received: from localhost.localdomain (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id A329F2FEF8;
	Tue, 31 May 2011 14:14:15 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Tue, 31 May 2011 11:13:56 -0700
Message-Id: <ad59ecd71b895f86d72cbd4140c018c44ef3ff0f.1306865217.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <cover.1306865217.git.scott.a.garman@intel.com>
References: <cover.1306865217.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1306865217.git.scott.a.garman@intel.com>
References: <cover.1306865217.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: A329F2FEF8.BFD32
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 6/7] bitbake.conf: set PSEUDO_PASSWD within FAKEROOTENV
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
X-List-Received-Date: Tue, 31 May 2011 18:14:20 -0000

PSEUDO_PASSWD needs to point to the directory where passwd and group
files are kept. This will allow pseudo to use those users and groups
to change file ownership.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/conf/bitbake.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/bitbake.conf b/meta/conf/bitbake.conf
index d307385..6f16a65 100644
--- a/meta/conf/bitbake.conf
+++ b/meta/conf/bitbake.conf
@@ -535,7 +535,7 @@ SRC_URI = "file://${FILE}"
 
 # Use pseudo as the fakeroot implementation
 PSEUDO_LOCALSTATEDIR ?= "${WORKDIR}/pseudo/"
-FAKEROOTENV = "PSEUDO_PREFIX=${STAGING_DIR_NATIVE}${prefix_native} PSEUDO_LOCALSTATEDIR=${PSEUDO_LOCALSTATEDIR} PSEUDO_NOSYMLINKEXP=1 PSEUDO_DISABLED=0"
+FAKEROOTENV = "PSEUDO_PREFIX=${STAGING_DIR_NATIVE}${prefix_native} PSEUDO_LOCALSTATEDIR=${PSEUDO_LOCALSTATEDIR} PSEUDO_PASSWD=${STAGING_DIR_TARGET}/etc PSEUDO_NOSYMLINKEXP=1 PSEUDO_DISABLED=0"
 FAKEROOTDIRS = "${PSEUDO_LOCALSTATEDIR}"
 PREFERRED_PROVIDER_virtual/fakeroot-native ?= "pseudo-native"
 
-- 
1.7.1


