Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEC39E0070B
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 13:42:29 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 9529E2FF3C
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 16:42:24 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Tue, 12 Jun 2012 13:41:21 -0700
Message-Id: <5168484e9967c043ce3a18faa185eb1de3cfa46c.1339533508.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 9529E2FF3C.8694F
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 31/31] documentation/poky.ent: Updated variables for correct 1.2.1 build.
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
X-List-Received-Date: Tue, 12 Jun 2012 20:42:30 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Key variables are DISTRO at "1.2.1", YOCTO_DOC_VERSION at "current",
and POKYVERSION at "7.0.1".  Note that I have to change "current"
to "1.2.1" before publishing any manuals prior to the official release
of 1.2.1.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky.ent |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/documentation/poky.ent b/documentation/poky.ent
index bc00de8..aec1391 100644
--- a/documentation/poky.ent
+++ b/documentation/poky.ent
@@ -1,7 +1,7 @@
-<!ENTITY DISTRO "1.2">
+<!ENTITY DISTRO "1.2.1">
 <!ENTITY DISTRO_NAME "denzil">
 <!ENTITY YOCTO_DOC_VERSION "current">
-<!ENTITY POKYVERSION "7.0">
+<!ENTITY POKYVERSION "7.0.1">
 <!ENTITY YOCTO_POKY "poky-&DISTRO_NAME;-&POKYVERSION;">
 <!ENTITY COPYRIGHT_YEAR "2010-2012">
 <!ENTITY YOCTO_DL_URL "http://downloads.yoctoproject.org">
-- 
1.7.9.5


