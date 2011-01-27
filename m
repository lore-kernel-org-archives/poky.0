Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 53F194C81226
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 07:09:32 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 27 Jan 2011 05:09:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,386,1291622400"; d="scan'208";a="651718277"
Received: from unknown (HELO localhost) ([10.255.16.153])
	by fmsmga002.fm.intel.com with ESMTP; 27 Jan 2011 05:09:15 -0800
Message-Id: <4eaa489f954bfdf0bd907012c19465c8607ff0e2.1296133552.git.josh@linux.intel.com>
In-Reply-To: <cover.1296133552.git.josh@linux.intel.com>
References: <cover.1296133552.git.josh@linux.intel.com>
Old-Date: Thu, 27 Jan 2011 13:03:33 +0000
Date: Thu, 27 Jan 2011 13:09:09 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 1/1] external-python-tarball: include multiprocessing module
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
X-List-Received-Date: Thu, 27 Jan 2011 13:09:32 -0000

From: Joshua Lock <josh@linux.intel.com>

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 meta/recipes-core/meta/external-python-tarball.bb |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-core/meta/external-python-tarball.bb b/meta/recipes-core/meta/external-python-tarball.bb
index eef93fd..746cb9e 100644
--- a/meta/recipes-core/meta/external-python-tarball.bb
+++ b/meta/recipes-core/meta/external-python-tarball.bb
@@ -26,6 +26,7 @@ TOOLCHAIN_HOST_TASK ?= "\
     python-nativesdk-fcntl \
     python-nativesdk-shell \
     python-nativesdk-misc \
+    python-nativesdk-multiprocessing \
     python-nativesdk-subprocess \
     python-nativesdk-xmlrpc \
     python-nativesdk-netclient \
-- 
1.7.3.5


