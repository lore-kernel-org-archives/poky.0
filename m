Return-Path: <quentin.schulz@streamunlimited.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE753E00BE2; Fri, 27 Sep 2019 09:25:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	RCVD_IN_RP_RNBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [213.33.87.20 listed in list.dnswl.org]
	*  1.3 RCVD_IN_RP_RNBL RBL: Relay in RNBL,
	*      https://senderscore.org/blacklistlookup/
	*      [213.33.87.20 listed in bl.score.senderscore.com]
X-Greylist: delayed 2903 seconds by postgrey-1.32 at yocto-www;
	Fri, 27 Sep 2019 09:25:49 PDT
Received: from bsmtp8.bon.at (bsmtp8.bon.at [213.33.87.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9958E009CE
	for <poky@yoctoproject.org>; Fri, 27 Sep 2019 09:25:49 -0700 (PDT)
Received: from bsmtp.bon.at (unknown [192.168.181.101])
	by bsmtp8.bon.at (Postfix) with ESMTPS id 46fwsM32xTz5tmp
	for <poky@yoctoproject.org>; Fri, 27 Sep 2019 17:37:27 +0200 (CEST)
Received: from qschulz.suevie (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 46fwsK2Md5z5tlM;
	Fri, 27 Sep 2019 17:37:25 +0200 (CEST)
From: Quentin Schulz <quentin.schulz@streamunlimited.com>
To: poky@yoctoproject.org
Date: Fri, 27 Sep 2019 17:37:07 +0200
Message-Id: <20190927153707.1445-2-quentin.schulz@streamunlimited.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190927153707.1445-1-quentin.schulz@streamunlimited.com>
References: <20190927153707.1445-1-quentin.schulz@streamunlimited.com>
Cc: radek.dostal@streamunlimited.com, andriy.danylovskyy@streamunlimited.com
Subject: [thud] [PATCH 1/1] arch-arm64.inc: Lower the priority of aarch64 in MACHINEOVERRIDES
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
X-List-Received-Date: Fri, 27 Sep 2019 16:25:50 -0000

From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>

This makes sure, e.g., ${SOC_FAMILY} and ${MACHINE} have higher
priorities than aarch64.

(From OE-Core rev: 4d1339af88543d85930139dbcb87a669f285ea66)

Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
sIgned-off-by: Quentin Schulz <quentin.schulz@streamunlimited.com>
---
 meta/conf/machine/include/arm/arch-arm64.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/conf/machine/include/arm/arch-arm64.inc b/meta/conf/machine/include/arm/arch-arm64.inc
index 5f90763f7f..53f4566815 100644
--- a/meta/conf/machine/include/arm/arch-arm64.inc
+++ b/meta/conf/machine/include/arm/arch-arm64.inc
@@ -4,7 +4,7 @@ require conf/machine/include/arm/arch-armv7ve.inc
 
 TUNEVALID[aarch64] = "Enable instructions for aarch64"
 
-MACHINEOVERRIDES .= "${@bb.utils.contains('TUNE_FEATURES', 'aarch64', ':aarch64', '' ,d)}"
+MACHINEOVERRIDES =. "${@bb.utils.contains('TUNE_FEATURES', 'aarch64', 'aarch64:', '' ,d)}"
 
 # Little Endian base configs
 AVAILTUNES += "aarch64 aarch64_be"
-- 
2.17.1


