Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EC3CE00972; Wed,  5 Apr 2017 19:17:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_HI,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B70BAE00961
	for <poky@yoctoproject.org>; Wed,  5 Apr 2017 19:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1491445046; x=1522981046; h=from:to:subject:date:message-id;
	bh=BhzPwuOxhOAf+AbkPNVLFTa+hUAWqZ6oObMbMq7DI/E=;
	b=RtFOsaGZR0mGfC98yjdhtz4lgCEwDlKjdcTToMkivgoxGMQOhkvorHSC
	L6EuOo1/CSQeZFLb7ngA4Ca2nfoZ6g==;
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	05 Apr 2017 19:17:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.37,282,1488873600"; d="scan'208";a="83718679"
Received: from mpragasa-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com.fritz.box) ([10.255.138.225])
	by orsmga005.jf.intel.com with ESMTP; 05 Apr 2017 19:17:23 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu,  6 Apr 2017 14:17:20 +1200
Message-Id: <20170406021720.2630-1-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.9.3
Subject: [meta-poky][PATCH] poky-world-exclude.inc: add python-pyqt
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
X-List-Received-Date: Thu, 06 Apr 2017 02:17:30 -0000

python-pyqt in meta-qt4 is about to require sip 4.19 that only meta-oe
provides; as we only bring in meta-qt4 for LSB, there's no need to be
building this as part of world and it would fail without meta-oe anyway.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-poky/conf/distro/include/poky-world-exclude.inc | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-poky/conf/distro/include/poky-world-exclude.inc b/meta-poky/conf/distro/include/poky-world-exclude.inc
index 5194ff1..a6635b6 100644
--- a/meta-poky/conf/distro/include/poky-world-exclude.inc
+++ b/meta-poky/conf/distro/include/poky-world-exclude.inc
@@ -4,3 +4,5 @@
 
 # qwt from meta-qt4, has poky-lsb QA warnings, qt4 for lsb only
 EXCLUDE_FROM_WORLD_pn-qwt = "1"
+# python-pyqt from meta-qt4 requires sip from meta-oe
+EXCLUDE_FROM_WORLD_pn-python-pyqt = "1"
-- 
2.9.3


