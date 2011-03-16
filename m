Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 040964C805A8
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 16:50:16 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 16 Mar 2011 14:50:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,195,1299484800"; d="scan'208";a="613874591"
Received: from unknown (HELO [10.255.12.146]) ([10.255.12.146])
	by orsmga002.jf.intel.com with ESMTP; 16 Mar 2011 14:50:16 -0700
Message-ID: <4D81307F.80702@linux.intel.com>
Date: Wed, 16 Mar 2011 14:49:51 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
References: <4D812FD5.5050504@linux.intel.com>
In-Reply-To: <4D812FD5.5050504@linux.intel.com>
Subject: [PATCH A] n450: add optimization flags to gtk+ for n450 to avoid gcc core2 bug
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
X-List-Received-Date: Wed, 16 Mar 2011 21:50:17 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


Fixes [YOCTO #853]

Without these added optimization flags, the matchbox-panel (and possibly other)
applications would segfault. This patch applies the change only to the gtk+
recipe for the n450 bsp.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Ke Yu <ke.yu@intel.com>
---
 meta-n450/recipes-gnome/gtk+/gtk+_2.22.1.bbappend |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)
 create mode 100644 meta-n450/recipes-gnome/gtk+/gtk+_2.22.1.bbappend

diff --git a/meta-n450/recipes-gnome/gtk+/gtk+_2.22.1.bbappend b/meta-n450/recipes-gnome/gtk+/gtk+_2.22.1.bbappend
new file mode 100644
index 0000000..3af4187
--- /dev/null
+++ b/meta-n450/recipes-gnome/gtk+/gtk+_2.22.1.bbappend
@@ -0,0 +1,2 @@
+#-fomit-frame-pointer in default FULL_OPTIMIZATION will cause matchbox-panel segfault on n450
+FULL_OPTIMIZATION_n450 = "-fexpensive-optimizations -frename-registers -O2 -ggdb -feliminate-unused-debug-types"
-- 
1.7.1

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

