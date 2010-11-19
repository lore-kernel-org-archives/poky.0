Return-Path: <paul.eggleton@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id AFEB24C80BD4
	for <poky@yoctoproject.org>; Fri, 19 Nov 2010 04:26:33 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 19 Nov 2010 02:26:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,222,1288594800"; d="scan'208";a="679064526"
Received: from unknown (HELO helios.localnet) ([10.255.16.119])
	by orsmga001.jf.intel.com with ESMTP; 19 Nov 2010 02:26:31 -0800
From: Paul Eggleton <paul.eggleton@intel.com>
Organization: Intel Corporation
To: poky@yoctoproject.org
Date: Fri, 19 Nov 2010 10:26:30 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-22-generic-pae; KDE/4.5.1; i686; ; )
MIME-Version: 1.0
Message-Id: <201011191026.30354.paul.eggleton@intel.com>
Subject: [PATCH] sanity.bbclass: add wget to required utilities
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
X-List-Received-Date: Fri, 19 Nov 2010 10:26:33 -0000
Content-Type: Text/Plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

sanity.bbclass: add wget to required utilities

Signed-off-by: Paul Eggleton <paul.eggleton@intel.com>

diff --git a/meta/classes/sanity.bbclass b/meta/classes/sanity.bbclass
index 7f1f800..06aeddc 100644
--- a/meta/classes/sanity.bbclass
+++ b/meta/classes/sanity.bbclass
@@ -106,7 +106,7 @@ def check_sanity(e):
 	if not check_app_exists('${BUILD_PREFIX}g++', e.data):
 		missing = missing + "C++ Compiler (%sg++)," % data.getVar("BUILD_PREFIX", e.data, True)
 
-	required_utilities = "patch help2man diffstat texi2html makeinfo cvs svn bzip2 tar gzip gawk hg chrpath"
+	required_utilities = "patch help2man diffstat texi2html makeinfo cvs svn bzip2 tar gzip gawk hg chrpath wget"
 
 	# qemu-native needs gcc 3.x
 	if "qemu-native" not in assume_provided and "gcc3-native" in assume_provided:
---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


