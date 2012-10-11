Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76033E0144D
	for <poky@yoctoproject.org>; Thu, 11 Oct 2012 06:27:32 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 11 Oct 2012 06:27:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,571,1344236400"; d="scan'208";a="203257204"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.70])
	by azsmga001.ch.intel.com with ESMTP; 11 Oct 2012 06:27:31 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 11 Oct 2012 14:27:27 +0100
Message-Id: <1349962047-9347-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-yocto][PATCH] local.conf.sample: add PATH to SSTATE_MIRRORS comments
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
X-List-Received-Date: Thu, 11 Oct 2012 13:27:32 -0000

The shared state cache as pointed to by SSTATE_DIR by default now has
two-character subdirectories to prevent there being an issue with too
many files in the same directory; also, native sstate packages will go
into a subdirectory named using the distro ID string. If you copy the
newly structured sstate cache to a mirror location (either local or
remote) and then point to it in SSTATE_MIRRORS, you need to append
"PATH" to the end of the mirror URL so that the path used by bitbake
before the mirror substitution is appended to the path used to access
the mirror.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-yocto/conf/local.conf.sample |    7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
index 31d58d7..23af275 100644
--- a/meta-yocto/conf/local.conf.sample
+++ b/meta-yocto/conf/local.conf.sample
@@ -216,9 +216,12 @@ PATCHRESOLVE = "noop"
 # would contain the sstate-cache results from previous builds (possibly from other 
 # machines). This variable works like fetcher MIRRORS/PREMIRRORS and points to the 
 # cache locations to check for the shared objects.
+# NOTE: if the mirror uses the same structure as SSTATE_DIR, you need to add PATH
+# at the end as shown in the examples below. This will be substituted with the
+# correct path within the directory structure.
 #SSTATE_MIRRORS ?= "\
-#file://.* http://someserver.tld/share/sstate/ \n \
-#file://.* file:///some/local/dir/sstate/"
+#file://.* http://someserver.tld/share/sstate/PATH \n \
+#file://.* file:///some/local/dir/sstate/PATH"
 
 # CONF_VERSION is increased each time build/conf/ changes incompatibly and is used to
 # track the version of this file when it was generated. This can safely be ignored if
-- 
1.7.9.5


