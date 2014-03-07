Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E2F9E009FC
	for <poky@yoctoproject.org>; Fri,  7 Mar 2014 02:20:53 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 Mar 2014 02:20:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,607,1389772800"; d="scan'208";a="468311512"
Received: from lbhoopat-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.98])
	by orsmga001.jf.intel.com with ESMTP; 07 Mar 2014 02:20:50 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri,  7 Mar 2014 10:20:44 +0000
Message-Id: <e4027135b5be5a9246f0d79a87ffed062b243104.1394187600.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.5.3
In-Reply-To: <cover.1394187600.git.paul.eggleton@linux.intel.com>
References: <cover.1394187600.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1394187600.git.paul.eggleton@linux.intel.com>
References: <cover.1394187600.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 1/2] poky-tiny.conf: update for rename of core-image-basic
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
X-List-Received-Date: Fri, 07 Mar 2014 10:20:53 -0000

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-yocto/conf/distro/poky-tiny.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
index 389335d..5322b7d 100644
--- a/meta-yocto/conf/distro/poky-tiny.conf
+++ b/meta-yocto/conf/distro/poky-tiny.conf
@@ -119,9 +119,9 @@ RDEPENDS_${PN}-mtrace_pn-eglibc = ""
 INHERIT += "blacklist"
 PNBLACKLIST[build-appliance-image] = "not buildable with poky-tiny"
 PNBLACKLIST[core-image-base] = "not buildable with poky-tiny"
-PNBLACKLIST[core-image-basic] = "not buildable with poky-tiny"
 PNBLACKLIST[core-image-clutter] = "not buildable with poky-tiny"
 PNBLACKLIST[core-image-directfb] = "not buildable with poky-tiny"
+PNBLACKLIST[core-image-full-cmdline] = "not buildable with poky-tiny"
 PNBLACKLIST[core-image-lsb] = "not buildable with poky-tiny"
 PNBLACKLIST[core-image-lsb-dev] = "not buildable with poky-tiny"
 PNBLACKLIST[core-image-lsb-sdk] = "not buildable with poky-tiny"
-- 
1.8.5.3


