Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23797E00A81; Tue, 14 Mar 2017 21:09:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_MED,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C323E00A48
	for <poky@yoctoproject.org>; Tue, 14 Mar 2017 21:09:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1489550940; x=1521086940; h=from:to:subject:date:message-id;
	bh=THlWbCz0leqnGcUmOsKR/F+8I1kxmbSmFRDdb4ojtLA=;
	b=XAs+dfwYR07JU8gsS7xP7/3yXD/CBrTmOgNYgPRGQDRXnn57FcrARd43
	e5qAUStrdmuWLzAC5uf9XrRrTUUPew==;
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Mar 2017 21:08:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,167,1486454400"; d="scan'208";a="1142394017"
Received: from swold-mobl2.amr.corp.intel.com ([10.254.88.35])
	by fmsmga002.fm.intel.com with ESMTP; 14 Mar 2017 21:08:59 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 14 Mar 2017 21:08:58 -0700
Message-Id: <1489550938-21913-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [PATCH] genericx86-common: Update .inc file's PREFERRED_VERSION
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 15 Mar 2017 04:09:02 -0000

Since the genericx86*.conf file directly set PREFERRED_VERSION remove it
from here to avoid confusion.

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta-yocto-bsp/conf/machine/include/genericx86-common.inc | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
index cec7970..e35685c 100644
--- a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
+++ b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
@@ -3,7 +3,6 @@ require conf/machine/include/qemuboot-x86.inc
 MACHINE_FEATURES += "wifi efi pcbios"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "4.8%"
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 XSERVER ?= "${XSERVER_X86_BASE} \
             ${XSERVER_X86_EXT} \
-- 
2.7.4


