Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0E24E0078E; Mon, 11 Aug 2014 09:49:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [107.14.166.229 listed in list.dnswl.org]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Mon, 11 Aug 2014 09:48:51 PDT
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.229])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 261C9E004F2
	for <poky@yoctoproject.org>; Mon, 11 Aug 2014 09:48:51 -0700 (PDT)
Received: from [98.100.91.242] ([98.100.91.242:60094]
	helo=lt-1044-ubuntu-vm.melinkcorp.local)
	by cdptpa-oedge03 (envelope-from <bevenson@melinkcorp.com>)
	(ecelerity 3.5.0.35861 r(Momo-dev:tip)) with ESMTP
	id B2/10-18475-4B3F8E35; Mon, 11 Aug 2014 16:47:48 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: poky@yoctoproject.org
Date: Mon, 11 Aug 2014 12:47:30 -0400
Message-Id: <1407775650-27646-1-git-send-email-bevenson@melinkcorp.com>
X-Mailer: git-send-email 1.7.9.5
X-RR-Connecting-IP: 107.14.168.142:25
X-Cloudmark-Score: 0
Subject: [PATCH] scripts/contrib/make_ipk_repo.sh: Add new image-specific package feed generator
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
X-List-Received-Date: Mon, 11 Aug 2014 16:49:00 -0000

Adding a new script which generates a reduced package feed
directory.  The script uses the list of installed packages for a
specific build image and creates a new package feed directory
with only the packages relevant to that image.  This is useful
for distributing firmware upgrades.

At this time the script only works for opkg repositories.  Further
modifications are needed for the script to work with other package
management systems.

Signed-off-by: Bryan Evenson <bevenson@melinkcorp.com>
---
 scripts/contrib/make_ipk_repo.sh |   93 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 93 insertions(+)
 create mode 100755 scripts/contrib/make_ipk_repo.sh

diff --git a/scripts/contrib/make_ipk_repo.sh b/scripts/contrib/make_ipk_repo.sh
new file mode 100755
index 0000000..b04535e
--- /dev/null
+++ b/scripts/contrib/make_ipk_repo.sh
@@ -0,0 +1,93 @@
+#!/bin/bash
+
+# Creates a package feed directory that only contains the packages that were
+# installed with the referenced image.  This script depends on image build
+# history to properly operate.  In your conf/local.conf, add the following two
+# lines:
+#   INHERIT += "buildhistory"
+#   BUILDHISTORY_COMMIT = "1"
+#
+# At this time this script is only setup to create opkg package feeds.
+# Further script modification is needed if you use a different package
+# managment system.
+#
+# This script assumes it is being run from your image build directory.  Some
+# paths may need to be modified if it is run from a different directory.
+#
+# Assumes that the relevant image was recently built.  If you have done any
+# package builds since the last image build, it is suggested that you re-build
+# relevant image.
+#
+# Script input variables:
+# $1 - The image name (i.e. "core-image-minimal")
+# $2 - The target machine (i.e. "beaglebone")
+# $3 - The target architecture (i.e. "arm926ejste")
+# $4 - The target directory (i.e. "feed")
+#
+
+# Validate the number of input variables
+if [[ "$#" -ne 4 ]]; then
+    echo "Unexpected number of arguments";
+    echo "Usage: make_ipk_repo.sh IMAGE_NAME TARGET_MACHINE TARGET_ARCH TARGET_DIR";
+    exit 1;
+fi
+
+# Some packages inexplicably contain a "1:" in the package name that does not
+# belong there.  Remove this text from these package names.
+
+sed -i 's/1://g' tmp/buildhistory/images/"$2"/eglibc/"$1"/installed-packages.txt
+
+# Read in the list of packages used by the image.  This includes the
+# machine/architecture independent packages ("all"), the architecture specific
+# packages, and the machine specific packages.
+ALL_PKG_LIST=$(grep '_all\.ipk' tmp/buildhistory/images/"$2"/eglibc/"$1"/installed-packages.txt)
+ARCH_PKG_LIST=$(grep '_'"$3"'\.ipk' tmp/buildhistory/images/"$2"/eglibc/"$1"/installed-packages.txt)
+MACHINE_PKG_LIST=$(grep '_'"$2"'\.ipk' tmp/buildhistory/images/"$2"/eglibc/"$1"/installed-packages.txt)
+
+echo "ALL_PKG_LIST is $ALL_PKG_LIST";
+echo "ARCH_PKG_LIST is $ARCH_PKG_LIST";
+echo "MACHINE_PKG_LIST is $MACHINE_PKG_LIST";
+
+# Create the new directory for the feeds, making sure there is no previous copy
+rm -r "$4"/
+rm "$4".zip
+mkdir -p "$4"/
+
+# Copy over the "all" packages
+mkdir -p "$4"/all/
+echo "Copying packages to 'all' directory"
+for i in $ALL_PKG_LIST; do
+    cp tmp/deploy/ipk/all/"$i" "$4"/all/
+done
+
+# Copy over the architecture packages
+mkdir -p "$4"/$3/
+echo "Copying packages to '$3' directory"
+for i in $ARCH_PKG_LIST; do
+    cp tmp/deploy/ipk/"$3"/"$i" "$4"/"$3"/
+done
+
+# Copy over the machine packages
+mkdir -p "$4"/"$2"/
+echo "Copying packages to '$2' directory"
+for i in $MACHINE_PKG_LIST; do
+    cp tmp/deploy/ipk/"$2"/"$i" "$4"/"$2"/
+done
+
+# Build the package index files
+echo "Building package index files"
+touch "$4"/Packages
+flock "$4"/Packages.flock -c "tmp/sysroots/i686-linux/usr/bin/opkg-make-index -r $4/Packages -p $4/Packages -m $4/"
+touch "$4"/all/Packages
+flock "$4"/all/Packages.flock -c "tmp/sysroots/i686-linux/usr/bin/opkg-make-index -r $4/all/Packages -p $4/all/Packages -m $4/all/"
+touch "$4"/"$3"/Packages
+flock "$4"/"$3"/Packages.flock -c "tmp/sysroots/i686-linux/usr/bin/opkg-make-index -r $4/$3/Packages -p $4/$3/Packages -m $4/$3/"
+touch "$4"/"$2"/Packages
+flock "$4"/"$2"/Packages.flock -c "tmp/sysroots/i686-linux/usr/bin/opkg-make-index -r $4/$2/Packages -p $4/$2/Packages -m $4/$2/"
+
+#Create a zip file of the directory for archive purposes
+cd "$4"/
+zip -r "$4" .
+
+echo "A reduced package repository has been created at $4"
+
-- 
1.7.9.5


