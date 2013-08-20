Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C3D2E015BD
	for <poky@yoctoproject.org>; Tue, 20 Aug 2013 01:40:21 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 20 Aug 2013 01:40:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,918,1367996400"; d="scan'208";a="388942100"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga002.fm.intel.com with ESMTP; 20 Aug 2013 01:40:20 -0700
Received: from localhost.localdomain (unknown [10.237.112.161])
	by linux.intel.com (Postfix) with ESMTP id 1B3466A4007;
	Tue, 20 Aug 2013 01:40:17 -0700 (PDT)
From: Stoicescu Cornel <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 20 Aug 2013 11:44:58 +0200
Message-Id: <5695ec80f53c965f03ebb05a8c46ddfdc2663f9e.1376923556.git.corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
References: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
In-Reply-To: <cover.1376923556.git.corneliux.stoicescu@intel.com>
References: <cover.1376923556.git.corneliux.stoicescu@intel.com>
Subject: [PATCH 016/186] checkroot.sh: respect the value of ENABLE_ROOTFS_FSCK
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
X-List-Received-Date: Tue, 20 Aug 2013 08:40:21 -0000

From: Chen Qi <Qi.Chen@windriver.com>

Previously, fsck is always disabled because the value of rootcheck in
the checkroot.sh script is always set to 'no'.

We should respect the value of ENABLE_ROOTFS_FSCK in /etc/default/rcS
to allow for filesystem check.

(From OE-Core rev: 5c11cf4db8f43003fb7132b92a78659f70f07ce0)

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
Signed-off-by: Saul Wold <sgw@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../initscripts/initscripts-1.0/checkroot.sh       |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/recipes-core/initscripts/initscripts-1.0/checkroot.sh b/meta/recipes-core/initscripts/initscripts-1.0/checkroot.sh
index ac21ee4..cf84cfa 100755
--- a/meta/recipes-core/initscripts/initscripts-1.0/checkroot.sh
+++ b/meta/recipes-core/initscripts/initscripts-1.0/checkroot.sh
@@ -22,7 +22,7 @@ test "$SULOGIN" = yes && sulogin -t 30 $CONSOLE
 exec 9< /etc/fstab
 rootmode=rw
 rootopts=rw
-rootcheck=no
+rootcheck=$ENABLE_ROOTFS_FSCK
 swap_on_md=no
 devfs=
 while read fs mnt type opts dump pass junk <&9
-- 
1.7.9.5


