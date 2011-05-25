Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 73C3D4C80A72
	for <poky@yoctoproject.org>; Wed, 25 May 2011 05:44:16 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 25 May 2011 03:44:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,266,1304319600"; 
   d="scan'208";a="1292571"
Received: from unknown (HELO helios.amr.corp.intel.com) ([10.255.12.162])
	by azsmga001.ch.intel.com with ESMTP; 25 May 2011 03:44:02 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 25 May 2011 11:42:56 +0100
Message-Id: <0f781ad3bdfc8d6c36f36becf1d45e2e7abac7db.1306319204.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1306319204.git.paul.eggleton@linux.intel.com>
References: <cover.1306319204.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1306319204.git.paul.eggleton@linux.intel.com>
References: <cover.1306319204.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 4/4] uclibc: rename bbappend in meta-yocto to match version in oe-core
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
X-List-Received-Date: Wed, 25 May 2011 10:44:16 -0000

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 ...clibc_0.9.30.1.bbappend => uclibc_git.bbappend} |    0
 1 files changed, 0 insertions(+), 0 deletions(-)
 rename meta-yocto/recipes-core/uclibc/{uclibc_0.9.30.1.bbappend => uclibc_git.bbappend} (100%)

diff --git a/meta-yocto/recipes-core/uclibc/uclibc_0.9.30.1.bbappend b/meta-yocto/recipes-core/uclibc/uclibc_git.bbappend
similarity index 100%
rename from meta-yocto/recipes-core/uclibc/uclibc_0.9.30.1.bbappend
rename to meta-yocto/recipes-core/uclibc/uclibc_git.bbappend
-- 
1.7.4.1


