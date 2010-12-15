Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7775E4C80FBE
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 15:22:41 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 16 Dec 2010 13:22:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,356,1288594800"; d="scan'208";a="584454771"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.151])
	by orsmga002.jf.intel.com with ESMTP; 16 Dec 2010 13:22:41 -0800
Message-Id: <df55c574e165951fcd95df1471a658576681be81.1292534378.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1292534378.git.scott.m.rifenbark@intel.com>
References: <cover.1292534378.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Wed, 15 Dec 2010 15:05:55 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/1] documentation/yocto-project-qs/yocto-project-qs.xml: Fixed grammar problem
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
X-List-Received-Date: Thu, 16 Dec 2010 21:22:46 -0000

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 .../yocto-project-qs/yocto-project-qs.xml          |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml b/documentation/yocto-project-qs/yocto-project-qs.xml
index 6575469..1c45cde 100644
--- a/documentation/yocto-project-qs/yocto-project-qs.xml
+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
@@ -269,7 +269,7 @@
      $ poky-qemu qemux86
              </literallayout>
              The build process could take several hours the first time you run it. 
-             Depending on the number of processor and cores, the amount or RAM, the speed of your
+             Depending on the number of processors and cores, the amount or RAM, the speed of your
              internet connection and other factors.
              After the initial build, subsequent builds run much faster.
          </para>
-- 
1.7.0.4


