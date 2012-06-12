Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC312E0070B
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 13:42:25 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 857BC2FF60
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 16:42:20 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Tue, 12 Jun 2012 13:41:19 -0700
Message-Id: <e0688e0ad01d4b1076ea951d5328fb5016fe2d6f.1339533508.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 857BC2FF60.A0030
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 29/31] poky.conf: use correct version string for Ubuntu 12.04
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
X-List-Received-Date: Tue, 12 Jun 2012 20:42:26 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

Since it is an LTS release, the final version string was not
"Ubuntu 12.04" but "Ubuntu 12.04 LTS", so use this when doing the tested
host distribution check.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-yocto/conf/distro/poky.conf |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index e9dbcc7..3ac494e 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -69,7 +69,7 @@ SANITY_TESTED_DISTROS ?= " \
             Yocto (Built by Poky 7.0) 1.2 \n \
             Ubuntu 10.04.4 LTS \n \
             Ubuntu 11.10 \n \
-            Ubuntu 12.04 \n \
+            Ubuntu 12.04 LTS \n \
             Fedora release 15 (Lovelock) \n \
             Fedora release 16 (Verne) \n \
             Fedora release 17 (Beefy Miracle) \n \
-- 
1.7.9.5


