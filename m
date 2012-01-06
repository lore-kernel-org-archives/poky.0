Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA89DE0030D
	for <poky@yoctoproject.org>; Fri,  6 Jan 2012 01:26:33 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 06 Jan 2012 01:26:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="53859069"
Received: from dongxiao-desktop.sh.intel.com (HELO localhost) ([10.239.36.108])
	by AZSMGA002.ch.intel.com with ESMTP; 06 Jan 2012 01:26:32 -0800
From: Dongxiao Xu <dongxiao.xu@intel.com>
To: poky@yoctoproject.org
Date: Fri,  6 Jan 2012 17:28:32 +0800
Message-Id: <7a9d594bb5890c0d045c75ad5cbedfe6614841d9.1325841975.git.dongxiao.xu@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1325841975.git.dongxiao.xu@intel.com>
References: <cover.1325841975.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1325841975.git.dongxiao.xu@intel.com>
References: <cover.1325841975.git.dongxiao.xu@intel.com>
Subject: [PATCH 1/1] scripts/hob: Launch the new hob
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
X-List-Received-Date: Fri, 06 Jan 2012 09:26:34 -0000

Change the scripts to launch the new Hob.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 scripts/hob |   30 +-----------------------------
 1 files changed, 1 insertions(+), 29 deletions(-)

diff --git a/scripts/hob b/scripts/hob
index 480413b..ee80cb3 100755
--- a/scripts/hob
+++ b/scripts/hob
@@ -1,33 +1,5 @@
 #!/usr/bin/env bash
-if ! (test -r "$BUILDDIR/conf/hob-pre.conf"); then
-    cat <<EOM
-You had no conf/hob-pre.conf file. An initial version of this configuration
-file has therefore been created for you. This file will be used to store
-configuration values you set in hob.
-
-EOM
-touch conf/hob-pre.conf
-fi
-
-if ! (test -r "$BUILDDIR/conf/hob-post.conf"); then
-    cat <<EOM
-You had no conf/hob-post.conf file. An initial version of this configuration
-file has therefore been created for you. This file will be used to store
-configuration values you set in hob.
-
-EOM
-(cat <<EOF
-INHERIT += "image_types"
-EOF
-) > conf/hob-post.conf
-fi
-
-# Users don't like to launch GUI's and see a bunch of text whiz by, notify them
-if [ ! -e "$BUILDDIR/pseudodone" ]; then
-    echo "Before we can launch the GUI we need to build some native tools required for running"
-fi
-
-bitbake -r conf/hob-pre.conf -R conf/hob-post.conf -u hob
+bitbake -u hob
 
 ret=$?
 exit $ret
-- 
1.7.0.4


