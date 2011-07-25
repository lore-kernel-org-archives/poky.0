Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 74F2D4C80FC8
	for <poky@yoctoproject.org>; Mon, 25 Jul 2011 09:29:00 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 Jul 2011 07:28:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,261,1309762800"; d="scan'208";a="32013656"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.255.17.240])
	by fmsmga002.fm.intel.com with ESMTP; 25 Jul 2011 07:28:58 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 25 Jul 2011 15:28:46 +0100
Message-Id: <54d71ecdb11537a3ba7b60df1cfddb56bf415838.1311603837.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1311603837.git.paul.eggleton@linux.intel.com>
References: <cover.1311603837.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1311603837.git.paul.eggleton@linux.intel.com>
References: <cover.1311603837.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 5/6] meta-yocto/conf/local.conf.sample: remove emenlow from machine list
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
X-List-Received-Date: Mon, 25 Jul 2011 14:29:00 -0000

emenlow is not supported in meta-yocto (need meta-emenlow from meta-intel
for that).

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-yocto/conf/local.conf.sample |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
index 524a256..6498bb4 100644
--- a/meta-yocto/conf/local.conf.sample
+++ b/meta-yocto/conf/local.conf.sample
@@ -38,7 +38,6 @@ MACHINE ??= "qemux86"
 # Supported target hardware for demonstration purposes
 #MACHINE ?= "atom-pc"
 #MACHINE ?= "beagleboard"
-#MACHINE ?= "emenlow"
 #MACHINE ?= "mpc8315e-rdb"
 #MACHINE ?= "routerstationpro"
 
-- 
1.7.4.1


