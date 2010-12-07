Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (li38-254.members.linode.com
	[207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9F7A24C81069
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 02:52:20 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 17FB3304EF
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 03:52:12 -0500 (EST)
Message-Id: <9d0d2b044edf8bf2ffaec6f2423b5d7bddb528f2.1291711822.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1291711822.git.scott.a.garman@intel.com>
References: <cover.1291711822.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Date: Tue, 7 Dec 2010 00:48:39 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 17FB3304EF.96801
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 2/2] Remove unused tunctl-src/Makefile from scripts/
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
X-List-Received-Date: Tue, 07 Dec 2010 08:52:20 -0000

Removing leftover cruft

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 scripts/tunctl-src/Makefile |   17 -----------------
 1 files changed, 0 insertions(+), 17 deletions(-)
 delete mode 100644 scripts/tunctl-src/Makefile

diff --git a/scripts/tunctl-src/Makefile b/scripts/tunctl-src/Makefile
deleted file mode 100644
index 81cab8a..0000000
--- a/scripts/tunctl-src/Makefile
+++ /dev/null
@@ -1,17 +0,0 @@
-OBJS = tunctl.o
-BIN = tunctl
-CFLAGS ?= -g -Wall
-
-BIN_DIR ?= /usr/bin
-
-all : $(BIN)
-
-$(BIN) : $(OBJS)
-	$(CC) $(CFLAGS) -o $(BIN) $(OBJS)
-
-clean : 
-	rm -f $(BIN) $(OBJS) *~
-
-install : $(BIN)
-	install -d $(DESTDIR)$(BIN_DIR)
-	install -s $(BIN) $(DESTDIR)$(BIN_DIR)
-- 
1.7.1


