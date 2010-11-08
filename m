Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 43F0C4C80BCF;
	Mon,  8 Nov 2010 15:06:33 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oA8L6T24028719;
	Mon, 8 Nov 2010 13:06:30 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: saul.wold@intel.com, rpurdie@linux.intel.com
Date: Mon,  8 Nov 2010 16:06:39 -0500
Message-Id: <94e24bd11b32f486e7a249cb856d9ade46f9bdc4.1289250219.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <1289250400-16953-1-git-send-email-bruce.ashfield@windriver.com>
References: <1289250400-16953-1-git-send-email-bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: [PATCH 1/2] linux-wrs: rename force_revisions and allow override
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
X-List-Received-Date: Mon, 08 Nov 2010 21:06:33 -0000

It is useful to override revision checking from a layer or other
recipe. In order to show the global nature of the variable rename
it KERNEL_REVISION_CHECKING and make it a weak assignment.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta/recipes-kernel/linux/linux-wrs_git.bb |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-kernel/linux/linux-wrs_git.bb b/meta/recipes-kernel/linux/linux-wrs_git.bb
index c43ae11..1f2b11e 100644
--- a/meta/recipes-kernel/linux/linux-wrs_git.bb
+++ b/meta/recipes-kernel/linux/linux-wrs_git.bb
@@ -34,7 +34,7 @@ S = "${WORKDIR}/linux"
 B = "${WORKDIR}/linux-${WRMACHINE}-${LINUX_KERNEL_TYPE}-build"
 
 # functionality flags
-force_revisions = "t"
+KERNEL_REVISION_CHECKING ?= "t"
 KERNEL_FEATURES=features/netfilter
 
 do_patch() {
@@ -75,7 +75,7 @@ validate_branches() {
 	target_meta_head="${SRCREV_meta}"
 
 	if [ -n "$target_branch_head" ] && [ "$branch_head" != "$target_branch_head" ]; then
-		if [ -n "${force_revisions}" ]; then
+		if [ -n "${KERNEL_REVISION_CHECKING}" ]; then
 			git show ${target_branch_head} > /dev/null 2>&1
 			if [ $? -eq 0 ]; then
 				echo "Forcing branch ${WRMACHINE}-${LINUX_KERNEL_TYPE} to ${target_branch_head}"
@@ -90,7 +90,7 @@ validate_branches() {
 	fi
 
 	if [ "$meta_head" != "$target_meta_head" ]; then
-		if [ -n "${force_revisions}" ]; then
+		if [ -n "${KERNEL_REVISION_CHECKING}" ]; then
 			git show ${target_meta_head} > /dev/null 2>&1
 			if [ $? -eq 0 ]; then
 				echo "Forcing branch wrs_meta to ${target_meta_head}"
-- 
1.7.0.4


