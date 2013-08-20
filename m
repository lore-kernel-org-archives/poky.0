Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 369E5E015E5
	for <poky@yoctoproject.org>; Tue, 20 Aug 2013 01:40:40 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 20 Aug 2013 01:40:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,918,1367996400"; d="scan'208";a="388942206"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga002.fm.intel.com with ESMTP; 20 Aug 2013 01:40:40 -0700
Received: from localhost.localdomain (unknown [10.237.112.161])
	by linux.intel.com (Postfix) with ESMTP id C75656A4007;
	Tue, 20 Aug 2013 01:40:37 -0700 (PDT)
From: Stoicescu Cornel <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 20 Aug 2013 11:45:10 +0200
Message-Id: <a44fc491e092e2d8310de62196b4c9c491d9cec9.1376923556.git.corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
References: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
In-Reply-To: <cover.1376923556.git.corneliux.stoicescu@intel.com>
References: <cover.1376923556.git.corneliux.stoicescu@intel.com>
Subject: [PATCH 028/186] mega-manual.sed: Deleted kernel-manual line.
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
X-List-Received-Date: Tue, 20 Aug 2013 08:40:42 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

I had commented this out with the previous commit but decided
to completely eliminate it with this one.

(From yocto-docs rev: 088f783bb12d29499d1b5da36a3c7a682a7d79d8)

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 documentation/tools/mega-manual.sed |    1 -
 1 file changed, 1 deletion(-)

diff --git a/documentation/tools/mega-manual.sed b/documentation/tools/mega-manual.sed
index a76b5d4..c03a31d 100644
--- a/documentation/tools/mega-manual.sed
+++ b/documentation/tools/mega-manual.sed
@@ -9,6 +9,5 @@ s/<a class=\"ulink\" href=\"http:\/\/www.yoctoproject.org\/docs\/1.5\/yocto-proj
 s/<a class=\"ulink\" href=\"http:\/\/www.yoctoproject.org\/docs\/1.5\/dev-manual\/dev-manual.html\" target=\"_top\">Yocto Project Development Manual<\/a>/Yocto Project Development Manual/g
 s/<a class=\"ulink\" href=\"http:\/\/www.yoctoproject.org\/docs\/1.5\/adt-manual\/adt-manual.html\" target=\"_top\">Yocto Project Application Developer's Guide<\/a>/Yocto Project Application Developer's Guide/g
 s/<a class=\"ulink\" href=\"http:\/\/www.yoctoproject.org\/docs\/1.5\/bsp-guide\/bsp-guide.html\" target=\"_top\">Yocto Project Board Support Package (BSP) Developer's Guide<\/a>/Yocto Project Board Support Package (BSP) Developer's Guide/g
-# s/<a class=\"ulink\" href=\"http:\/\/www.yoctoproject.org\/docs\/1.5\/kernel-manual\/kernel-manual.html\" target=\"_top\">Yocto Project Kernel Architecture and Use Manual<\/a>/Yocto Project Kernel Architecture and Use Manual/g
 s/<a class=\"ulink\" href=\"http:\/\/www.yoctoproject.org\/docs\/1.5\/kernel-dev\/kernel-dev.html\" target=\"_top\">Yocto Project Linux Kernel Development Manual<\/a>/Yocto Project Linux Kernel Development Manual/g
 s/<a class=\"ulink\" href=\"http:\/\/www.yoctoproject.org\/docs\/1.5\/ref-manual\/ref-manual.html\" target=\"_top\">Yocto Project Reference Manual<\/a>/Yocto Project Reference Manual/g
-- 
1.7.9.5


