Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5CFC14C80039;
	Mon, 17 Jan 2011 15:55:05 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0HLt0dI017296;
	Mon, 17 Jan 2011 13:55:03 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Mon, 17 Jan 2011 16:57:32 -0500
Message-Id: <27824445d4554453cdb460e7e05eb121c6182fb4.1295300980.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1295300980.git.bruce.ashfield@windriver.com>
References: <cover.1295300980.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1295300980.git.bruce.ashfield@windriver.com>
References: <cover.1295300980.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 3/3] linux-yocto: update validate_branches to detected invalid commit IDs
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
X-List-Received-Date: Mon, 17 Jan 2011 21:55:05 -0000

The previous implementation of invalid commit ID checks would
error early when a bad object was detected. Rather than changing
to set +e for the entire routine, we'll capture the output and
do an explicit check for a bad object and throw a useful error
message when it is detected.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta/classes/kernel-yocto.bbclass |   26 +++++++++++++-------------
 1 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/meta/classes/kernel-yocto.bbclass b/meta/classes/kernel-yocto.bbclass
index 88dcf32..32d2e20 100644
--- a/meta/classes/kernel-yocto.bbclass
+++ b/meta/classes/kernel-yocto.bbclass
@@ -161,30 +161,30 @@ do_validate_branches() {
 	current=`git branch |grep \*|sed 's/^\* //'`
 	if [ -n "$target_branch_head" ] && [ "$branch_head" != "$target_branch_head" ]; then
 		if [ -n "${KERNEL_REVISION_CHECKING}" ]; then
-			git show ${target_branch_head} > /dev/null 2>&1
-			if [ $? -eq 0 ]; then
-				echo "Forcing branch $current to ${target_branch_head}"
-				git branch -m $current $current-orig
-				git checkout -b $current ${target_branch_head}
-			else
+			ref=`git show ${target_meta_head} 2>&1 | head -n1 || true`
+			if [ "$ref" = "fatal: bad object ${target_meta_head}" ]; then
 				echo "ERROR ${target_branch_head} is not a valid commit ID."
 				echo "The kernel source tree may be out of sync"
 				exit 1
-			fi	       
+			else
+				echo "Forcing branch $current to ${target_branch_head}"
+				git branch -m $current $current-orig
+				git checkout -b $current ${target_branch_head}
+			fi
 		fi
 	fi
 
 	if [ "$meta_head" != "$target_meta_head" ]; then
 		if [ -n "${KERNEL_REVISION_CHECKING}" ]; then
-			git show ${target_meta_head} > /dev/null 2>&1
-			if [ $? -eq 0 ]; then
-				echo "Forcing branch meta to ${target_meta_head}"
-				git branch -m ${KMETA} ${KMETA}-orig
-				git checkout -b ${KMETA} ${target_meta_head}
-			else
+			ref=`git show ${target_meta_head} 2>&1 | head -n1 || true`
+			if [ "$ref" = "fatal: bad object ${target_meta_head}" ]; then
 				echo "ERROR ${target_meta_head} is not a valid commit ID"
 				echo "The kernel source tree may be out of sync"
 				exit 1
+			else
+				echo "Forcing branch meta to ${target_meta_head}"
+				git branch -m ${KMETA} ${KMETA}-orig
+				git checkout -b ${KMETA} ${target_meta_head}
 			fi	   
 		fi
 	fi
-- 
1.7.0.4


