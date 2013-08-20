Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C410E015F4
	for <poky@yoctoproject.org>; Tue, 20 Aug 2013 01:40:57 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Aug 2013 01:40:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,918,1367996400"; d="scan'208";a="365375022"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga001.jf.intel.com with ESMTP; 20 Aug 2013 01:40:38 -0700
Received: from localhost.localdomain (unknown [10.237.112.161])
	by linux.intel.com (Postfix) with ESMTP id 3B9E86A4007;
	Tue, 20 Aug 2013 01:40:36 -0700 (PDT)
From: Stoicescu Cornel <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 20 Aug 2013 11:45:09 +0200
Message-Id: <68752d79e485868cdfaca4c2038602e586032ba9.1376923556.git.corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
References: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
In-Reply-To: <cover.1376923556.git.corneliux.stoicescu@intel.com>
References: <cover.1376923556.git.corneliux.stoicescu@intel.com>
Subject: [PATCH 027/186] mega-manual.sed: Removed the processing for kernel-manual
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
X-List-Received-Date: Tue, 20 Aug 2013 08:40:58 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

The kernel-manual folder is depricated post 1.4 release.  I commented
out the line that processes links for that folder.

(From yocto-docs rev: 1b84448020f75fa2d3c9c12d8ae72ba2a7e7db99)

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 documentation/tools/mega-manual.sed |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/documentation/tools/mega-manual.sed b/documentation/tools/mega-manual.sed
index 90ac596..a76b5d4 100644
--- a/documentation/tools/mega-manual.sed
+++ b/documentation/tools/mega-manual.sed
@@ -9,6 +9,6 @@ s/<a class=\"ulink\" href=\"http:\/\/www.yoctoproject.org\/docs\/1.5\/yocto-proj
 s/<a class=\"ulink\" href=\"http:\/\/www.yoctoproject.org\/docs\/1.5\/dev-manual\/dev-manual.html\" target=\"_top\">Yocto Project Development Manual<\/a>/Yocto Project Development Manual/g
 s/<a class=\"ulink\" href=\"http:\/\/www.yoctoproject.org\/docs\/1.5\/adt-manual\/adt-manual.html\" target=\"_top\">Yocto Project Application Developer's Guide<\/a>/Yocto Project Application Developer's Guide/g
 s/<a class=\"ulink\" href=\"http:\/\/www.yoctoproject.org\/docs\/1.5\/bsp-guide\/bsp-guide.html\" target=\"_top\">Yocto Project Board Support Package (BSP) Developer's Guide<\/a>/Yocto Project Board Support Package (BSP) Developer's Guide/g
-s/<a class=\"ulink\" href=\"http:\/\/www.yoctoproject.org\/docs\/1.5\/kernel-manual\/kernel-manual.html\" target=\"_top\">Yocto Project Kernel Architecture and Use Manual<\/a>/Yocto Project Kernel Architecture and Use Manual/g
-s/<a class=\"ulink\" href=\"http:\/\/www.yoctoproject.org\/docs\/1.5\/kernel-ref\/kernel-ref.html\" target=\"_top\">Yocto Project Kernel Development Manual<\/a>/Yocto Project Kernel Development Manual/g
+# s/<a class=\"ulink\" href=\"http:\/\/www.yoctoproject.org\/docs\/1.5\/kernel-manual\/kernel-manual.html\" target=\"_top\">Yocto Project Kernel Architecture and Use Manual<\/a>/Yocto Project Kernel Architecture and Use Manual/g
+s/<a class=\"ulink\" href=\"http:\/\/www.yoctoproject.org\/docs\/1.5\/kernel-dev\/kernel-dev.html\" target=\"_top\">Yocto Project Linux Kernel Development Manual<\/a>/Yocto Project Linux Kernel Development Manual/g
 s/<a class=\"ulink\" href=\"http:\/\/www.yoctoproject.org\/docs\/1.5\/ref-manual\/ref-manual.html\" target=\"_top\">Yocto Project Reference Manual<\/a>/Yocto Project Reference Manual/g
-- 
1.7.9.5


