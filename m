Return-Path: <naveen.kumar.saini@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F2FEE00D01; Tue, 26 Feb 2019 02:35:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00, DATE_IN_PAST_06_12, 
	RCVD_IN_DNSWL_MED,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.136 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* 1.5 DATE_IN_PAST_06_12 Date: is 6 to 12 hours before Received: date
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 703C8E00CEE
	for <poky@yoctoproject.org>; Tue, 26 Feb 2019 02:35:47 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	26 Feb 2019 02:35:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.58,415,1544515200"; d="scan'208";a="150066784"
Received: from optimus-prime.png.intel.com ([172.30.199.130])
	by fmsmga001.fm.intel.com with ESMTP; 26 Feb 2019 02:35:46 -0800
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: poky@yoctoproject.org
Date: Tue, 26 Feb 2019 10:36:47 +0800
Message-Id: <20190226023647.15708-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.0
Subject: [meta-yocto-bsp][PATCH 1/2] linux-yocto: update genericx86* SRCREV for 4.18
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
X-List-Received-Date: Tue, 26 Feb 2019 10:35:48 -0000

Bump to kernel release v4.18.27

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_4.18.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
index 7f15843f3a..e53bb51f27 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
@@ -8,8 +8,8 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86    ?= "db2d813869a0501782469ecdb17e277a501c9f57"
-SRCREV_machine_genericx86-64 ?= "db2d813869a0501782469ecdb17e277a501c9f57"
+SRCREV_machine_genericx86    ?= "62f0a3acffffd555f68ed97d5e4faade2b28f3c0"
+SRCREV_machine_genericx86-64 ?= "62f0a3acffffd555f68ed97d5e4faade2b28f3c0"
 SRCREV_machine_edgerouter ?= "28e7781d57a59227bf1c08c7f3dbdfee16aa0dc2"
 SRCREV_machine_beaglebone-yocto ?= "28e7781d57a59227bf1c08c7f3dbdfee16aa0dc2"
 SRCREV_machine_mpc8315e-rdb ?= "99071a599d8650b069fb8135866fca203f375350"
@@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.18.22"
-LINUX_VERSION_genericx86-64 = "4.18.22"
+LINUX_VERSION_genericx86 = "4.18.27"
+LINUX_VERSION_genericx86-64 = "4.18.27"
 LINUX_VERSION_edgerouter = "4.18.25"
 LINUX_VERSION_beaglebone-yocto = "4.18.25"
 LINUX_VERSION_mpc8315e-rdb = "4.18.25"
-- 
2.17.0


