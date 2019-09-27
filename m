Return-Path: <quentin.schulz@streamunlimited.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 010B2E00B8A; Fri, 27 Sep 2019 09:25:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	RCVD_IN_RP_RNBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	https://www.dnswl.org/, low *      trust
	*      [213.33.87.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.3 RCVD_IN_RP_RNBL RBL: Relay in RNBL,
	*      https://senderscore.org/blacklistlookup/
	*      [213.33.87.20 listed in bl.score.senderscore.com]
Received: from bsmtp8.bon.at (bsmtp8.bon.at [213.33.87.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32310E00AB6
	for <poky@yoctoproject.org>; Fri, 27 Sep 2019 09:25:49 -0700 (PDT)
Received: from bsmtp.bon.at (unknown [192.168.181.101])
	by bsmtp8.bon.at (Postfix) with ESMTPS id 46fwsM346sz5tmx
	for <poky@yoctoproject.org>; Fri, 27 Sep 2019 17:37:27 +0200 (CEST)
Received: from qschulz.suevie (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 46fwsK188fz5tlL;
	Fri, 27 Sep 2019 17:37:25 +0200 (CEST)
From: Quentin Schulz <quentin.schulz@streamunlimited.com>
To: poky@yoctoproject.org
Date: Fri, 27 Sep 2019 17:37:06 +0200
Message-Id: <20190927153707.1445-1-quentin.schulz@streamunlimited.com>
X-Mailer: git-send-email 2.17.1
Cc: radek.dostal@streamunlimited.com, andriy.danylovskyy@streamunlimited.com
Subject: [thud] [PATCH 0/1] arch-arm64.inc: Lower the priority of aarch64 in MACHINEOVERRIDES
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
X-List-Received-Date: Fri, 27 Sep 2019 16:25:51 -0000

Hi all,

Please merge this "backport" in thud as this YP version is still maintained and
this issue is source of unexpected behaviors.

Thank you,
Quentin

Peter Kjellerstedt (1):
  arch-arm64.inc: Lower the priority of aarch64 in MACHINEOVERRIDES

 meta/conf/machine/include/arm/arch-arm64.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.17.1


