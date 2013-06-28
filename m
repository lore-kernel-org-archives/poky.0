Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D39BCE00348
	for <poky@yoctoproject.org>; Fri, 28 Jun 2013 08:12:36 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 28 Jun 2013 08:12:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,958,1363158000"; d="scan'208";a="361150684"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.97])
	by orsmga002.jf.intel.com with ESMTP; 28 Jun 2013 08:12:24 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 28 Jun 2013 16:12:21 +0100
Message-Id: <55959ee3f4987d14f48fcffd31b3a08928363a80.1372432284.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1372432284.git.paul.eggleton@linux.intel.com>
References: <cover.1372432284.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1372432284.git.paul.eggleton@linux.intel.com>
References: <cover.1372432284.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 1/2] poky.conf: remove la2 check which no longer exists from ERROR_QA
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
X-List-Received-Date: Fri, 28 Jun 2013 15:12:37 -0000

This check was actually removed a very long time ago in
6656381714c5956f71ca634f5a5f4aa4661bbf7e, before we even changed the QA
checks to use names instead of numbers - the name was probably added
ERROR_QA mistakenly because it hadn't also been removed from the comment
listing the QA checks or the function that determined which ones were
errors.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-yocto/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index e2c4790..0968a0c 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -101,6 +101,6 @@ INHERIT += "poky-sanity"
 
 #WARN_QA = "unsafe-references-in-binaries unsafe-references-in-scripts"
 WARN_QA = "textrel pkgvarcheck"
-ERROR_QA = "dev-so debug-deps dev-deps debug-files arch la2 pkgconfig la perms useless-rpaths rpaths staticdev ldflags"
+ERROR_QA = "dev-so debug-deps dev-deps debug-files arch pkgconfig la perms useless-rpaths rpaths staticdev ldflags"
 
 include conf/distro/include/seperatebuilddir.inc
-- 
1.8.1.2


