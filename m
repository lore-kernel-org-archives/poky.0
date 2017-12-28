Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCF28E00DAB; Wed, 27 Dec 2017 18:59:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B956E00CE8
	for <poky@yoctoproject.org>; Wed, 27 Dec 2017 18:59:52 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	27 Dec 2017 18:59:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,468,1508828400"; 
   d="scan'208";a="6272953"
Received: from anujm-desk.png.intel.com ([172.30.199.130])
	by orsmga006.jf.intel.com with ESMTP; 27 Dec 2017 18:59:51 -0800
From: Anuj Mittal <anuj.mittal@intel.com>
To: poky@yoctoproject.org
Date: Thu, 28 Dec 2017 10:59:42 +0800
Message-Id: <1514429985-19328-1-git-send-email-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: saul.wold@intel.com
Subject: [PATCH 0/3] meta-yocto-bsp: genericx86* BSP kernel updates
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
X-List-Received-Date: Thu, 28 Dec 2017 02:59:53 -0000

These update the kernel SRCREVs for genericx86* BSPs and should be applied
after Kevin Hao's patch to update SRCREVs for non x86 BSPs.

Anuj Mittal (3):
  linux-yocto: update genericx86* SRCREVs for v4.4
  linux-yocto: update genericx86* SRCREVs for v4.9
  linux-yocto: update genericx86* SRCREVs for v4.12

 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend | 8 ++++----
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend  | 8 ++++----
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend  | 8 ++++----
 3 files changed, 12 insertions(+), 12 deletions(-)

-- 
2.7.4


