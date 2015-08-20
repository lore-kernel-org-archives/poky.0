Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1B7AE00A6C; Thu, 20 Aug 2015 01:18:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABA32E009EF
	for <poky@yoctoproject.org>; Thu, 20 Aug 2015 01:18:20 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP; 20 Aug 2015 01:18:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,714,1432623600"; d="scan'208";a="752057579"
Received: from ljegan-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.8.54])
	by orsmga001.jf.intel.com with ESMTP; 20 Aug 2015 01:18:13 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 20 Aug 2015 09:18:09 +0100
Message-Id: <f24033b1f26bc8ed5aa39c66e3ecbd0ed066e9c0.1440058596.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <cover.1440058596.git.paul.eggleton@linux.intel.com>
References: <cover.1440058596.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1440058596.git.paul.eggleton@linux.intel.com>
References: <cover.1440058596.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 1/2] README.hardware: drop mention of binary-only drivers
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
X-List-Received-Date: Thu, 20 Aug 2015 08:18:22 -0000

EMGD isn't provided in meta-intel anymore, so there's no point telling
people to look there.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 README.hardware | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/README.hardware b/README.hardware
index 0a34b21..9c74c5d 100644
--- a/README.hardware
+++ b/README.hardware
@@ -105,9 +105,7 @@ Intel Atom platforms:
 
 and is likely to work on many unlisted Atom/Core/Xeon based devices. The MACHINE
 type supports ethernet, wifi, sound, and Intel/vesa graphics by default in
-addition to common PC input devices, busses, and so on.  Note that it does not
-included the binary-only graphic drivers used on some Atom platforms, for
-accelerated graphics on these machines please refer to meta-intel.
+addition to common PC input devices, busses, and so on.
 
 Depending on the device, it can boot from a traditional hard-disk, a USB device,
 or over the network. Writing generated images to physical media is
-- 
2.1.0


