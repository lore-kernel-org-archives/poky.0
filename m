Return-Path: <richard@tim.rpsys.net>
Received: from smtp.elevenwireless.com (smtp.elevenwireless.com
	[69.48.211.177])
	by mx1.pokylinux.org (Postfix) with ESMTP id BCFDB4C8120C
	for <poky@pokylinux.org>; Sun, 28 Nov 2010 16:16:43 -0600 (CST)
Received: from [216.151.15.131] (helo=rex)
	by smtp.elevenwireless.com with esmtp (Exim 4.63)
	(envelope-from <richard@tim.rpsys.net>) id 1PMpV4-0001A1-Fb
	for poky@pokylinux.org; Sun, 28 Nov 2010 14:13:38 -0800
Received: by rex (Postfix, from userid 1000)
	id B72A72ACE2; Sun, 28 Nov 2010 14:16:10 -0800 (PST)
Message-Id: <9a3f25dfb7c0cf797e61f19e23583f2037250c63.1290982058.git.rpurdie@linux.intel.com>
In-Reply-To: <cover.1290982058.git.rpurdie@linux.intel.com>
References: <cover.1290982058.git.rpurdie@linux.intel.com>
From: Richard Purdie <rpurdie@linux.intel.com>
Date: Sun, 28 Nov 2010 16:17:27 +0000
To: poky@pokylinux.org
Subject: [PATCH 16/16] package-index: Fix after noexec changes
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
X-List-Received-Date: Sun, 28 Nov 2010 22:16:43 -0000

Signed-off-by: Richard Purdie <rpurdie@linux.intel.com>
---
 meta/recipes-core/meta/package-index.bb |   32 +++++++++++++++---------------
 1 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/meta/recipes-core/meta/package-index.bb b/meta/recipes-core/meta/package-index.bb
index 21822fe..c9e9694 100644
--- a/meta/recipes-core/meta/package-index.bb
+++ b/meta/recipes-core/meta/package-index.bb
@@ -5,25 +5,25 @@ INHIBIT_DEFAULT_DEPS = "1"
 ALLOW_EMPTY = "1"
 PACKAGES = ""
 
-do_fetch() {
-}
-do_unpack() {
-}
-do_patch() {
-}
-do_configure() {
-}
-do_compile() {
-}
-do_install() {
-}
+do_fetch[noexec] = "1"
+do_unpack[noexec] = "1"
+do_patch[noexec] = "1"
+do_configure[noexec] = "1"
+do_compile[noexec] = "1"
+do_install[noexec] = "1"
+do_package[noexec] = "1"
+do_package_write[noexec] = "1"
+do_package_write_ipk[noexec] = "1"
+do_package_write_rpm[noexec] = "1"
+do_package_write_deb[noexec] = "1"
+do_populate_sysroot[noexec] = "1"
 
-do_build[nostamp] = "1"
-do_build[dirs] = "${DEPLOY_DIR_IPK}"
-do_build() {
+do_package_index[nostamp] = "1"
+do_package_index[dirs] = "${DEPLOY_DIR_IPK}"
+do_package_index() {
 	set -ex
 	package_update_index_ipk
 	set +ex
 }
-
+addtask do_package_index before do_build
 EXCLUDE_FROM_WORLD = "1"
-- 
1.7.0.4


