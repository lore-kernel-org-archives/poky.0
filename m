Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1B0F54C80889
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 16:51:31 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 16 Mar 2011 14:51:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,195,1299484800"; d="scan'208";a="613874849"
Received: from unknown (HELO [10.255.12.146]) ([10.255.12.146])
	by orsmga002.jf.intel.com with ESMTP; 16 Mar 2011 14:51:22 -0700
Message-ID: <4D8130C1.9030409@linux.intel.com>
Date: Wed, 16 Mar 2011 14:50:57 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
References: <4D812FD5.5050504@linux.intel.com>
In-Reply-To: <4D812FD5.5050504@linux.intel.com>
Subject: [PATCH B] atom-pc: work around gcc bug for core2
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
X-List-Received-Date: Wed, 16 Mar 2011 21:51:31 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


Fixes [YOCTO #853]

Without these added optimization flags, the matchbox-panel (and possibly other)
applications would segfault. This patch applies the changes to all machines
derived from atom-pc.conf.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Ke Yu <ke.yu@intel.com>
---
 meta/conf/machine/include/tune-atom.inc |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/conf/machine/include/tune-atom.inc b/meta/conf/machine/include/tune-atom.inc
index a401856..db78b0d 100644
--- a/meta/conf/machine/include/tune-atom.inc
+++ b/meta/conf/machine/include/tune-atom.inc
@@ -3,3 +3,7 @@ TARGET_CC_ARCH = "-m32 -march=core2 -msse3 -mtune=generic -mfpmath=sse"
 #MOBLIN_CFLAGS = "-Os -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=4 -fasynchronous-unwind-tables"
 
 PACKAGE_EXTRA_ARCHS += "x86 i386 i486 i586 core2"
+
+# Work around a gcc bug for core2 which caused matchbox-panel to segfault
+# and possibly others.
+FULL_OPTIMIZATION = "-fexpensive-optimizations -frename-registers -O2 -ggdb -feliminate-unused-debug-types"
-- 
1.7.1


