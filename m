Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B959E015A7
	for <poky@yoctoproject.org>; Tue, 20 Aug 2013 01:40:30 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 20 Aug 2013 01:40:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,918,1367996400"; d="scan'208";a="348814855"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by azsmga001.ch.intel.com with ESMTP; 20 Aug 2013 01:40:18 -0700
Received: from localhost.localdomain (unknown [10.237.112.161])
	by linux.intel.com (Postfix) with ESMTP id 5B45C6A4007;
	Tue, 20 Aug 2013 01:40:16 -0700 (PDT)
From: Stoicescu Cornel <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 20 Aug 2013 11:44:57 +0200
Message-Id: <3d1a60a42ad4f634acdd01e53ab1f460243351f9.1376923556.git.corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
References: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
In-Reply-To: <cover.1376923556.git.corneliux.stoicescu@intel.com>
References: <cover.1376923556.git.corneliux.stoicescu@intel.com>
Subject: [PATCH 015/186] build-appliance-image: upgrade to ac60aa8cf707eec58e2cb51e7c406250d0b43ef1 commit.
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
X-List-Received-Date: Tue, 20 Aug 2013 08:40:30 -0000

From: Cristian Iorga <cristian.iorga@intel.com>

Fixes [YOCTO #4977].

(From OE-Core rev: b278ec950088b465860b6c7797707fe973973956)

Signed-off-by: Cristian Iorga <cristian.iorga@intel.com>
Signed-off-by: Saul Wold <sgw@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../images/build-appliance-image_8.0.bb            |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/recipes-core/images/build-appliance-image_8.0.bb b/meta/recipes-core/images/build-appliance-image_8.0.bb
index fad4176..27cdd6f 100644
--- a/meta/recipes-core/images/build-appliance-image_8.0.bb
+++ b/meta/recipes-core/images/build-appliance-image_8.0.bb
@@ -21,7 +21,7 @@ IMAGE_FSTYPES = "vmdk"
 
 inherit core-image
 
-SRCREV ?= "dc529e1f18975ff33a1686dc9804a38204fd1bd0"
+SRCREV ?= "ac60aa8cf707eec58e2cb51e7c406250d0b43ef1"
 SRC_URI = "git://git.yoctoproject.org/poky;protocol=git \
            file://Yocto_Build_Appliance.vmx \
            file://Yocto_Build_Appliance.vmxf \
-- 
1.7.9.5


