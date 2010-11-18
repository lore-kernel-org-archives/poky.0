Return-Path: <paul.eggleton@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id B73544C810A8
	for <poky@pokylinux.org>; Mon, 22 Nov 2010 05:52:46 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 22 Nov 2010 03:52:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,235,1288594800"; d="scan'208";a="351700626"
Received: from unknown (HELO helios) ([10.255.16.138])
	by azsmga001.ch.intel.com with SMTP; 22 Nov 2010 03:52:39 -0800
Received: by helios (sSMTP sendmail emulation); Mon, 22 Nov 2010 11:52:38 +0000
Message-Id: <6c51e9753e301222266dab8248ddb81728d0e957.1290423211.git.paul.eggleton@intel.com>
In-Reply-To: <cover.1290423211.git.paul.eggleton@intel.com>
References: <cover.1290423211.git.paul.eggleton@intel.com>
From: Paul Eggleton <paul.eggleton@intel.com>
Date: Thu, 18 Nov 2010 11:34:27 +0000
To: poky@pokylinux.org
Subject: [PATCH 2/3] sanity.bbclass: add wget to required utilities
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
X-List-Received-Date: Mon, 22 Nov 2010 11:52:46 -0000
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"

Signed-off-by: Paul Eggleton <paul.eggleton@intel.com>
---
 meta/classes/sanity.bbclass |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

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
-- 
1.7.1

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


