Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63C29E00596
	for <poky@yoctoproject.org>; Tue, 17 Apr 2012 00:49:45 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 Apr 2012 00:49:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="154545064"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.11])
	by fmsmga002.fm.intel.com with ESMTP; 17 Apr 2012 00:49:44 -0700
From: Dongxiao Xu <dongxiao.xu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 17 Apr 2012 15:46:43 +0800
Message-Id: <3398cf01806d1d585e5b92c1ad36116021af86d3.1334648692.git.dongxiao.xu@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1334648692.git.dongxiao.xu@intel.com>
References: <cover.1334648692.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1334648692.git.dongxiao.xu@intel.com>
References: <cover.1334648692.git.dongxiao.xu@intel.com>
Subject: [PATCH 1/1] scripts/bitbake: Remove sanity_info after run "bitbake -e"
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
X-List-Received-Date: Tue, 17 Apr 2012 07:49:45 -0000

With latest master, we found certain sanity check doesn't work
(e.x., the network check). This is because it created the sanity_info
file at the first time when running "bitbake -e" command in
scripts/bitbake, therefore while running the real bitbake command,
it finds that the sanity_check file does exist so it skip the network
check.

The fix is to remove the sanity_info file after running "bitbake -e"
command.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 scripts/bitbake |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/scripts/bitbake b/scripts/bitbake
index 3772d82..a6fb2e5 100755
--- a/scripts/bitbake
+++ b/scripts/bitbake
@@ -73,6 +73,7 @@ if [ $needpseudo = "1" ]; then
         PSEUDOBINDIR=`cat $BUILDDIR/pseudodone`
     else
         PSEUDOBINDIR=`bitbake -e | grep STAGING_BINDIR_NATIVE=\" | cut -d '=' -f2 | cut -d '"' -f2`
+        rm -rf conf/sanity_info
     fi
     if [ -e "$PSEUDOBINDIR/pseudo" ]; then
         buildpseudo="0"
-- 
1.7.4.1


