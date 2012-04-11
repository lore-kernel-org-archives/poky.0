Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABA17E013BA
	for <poky@yoctoproject.org>; Tue, 10 Apr 2012 18:37:50 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 Apr 2012 18:37:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="152180204"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.12.159])
	by fmsmga002.fm.intel.com with ESMTP; 10 Apr 2012 18:37:50 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 10 Apr 2012 18:37:47 -0700
Message-Id: <0acfd5f023d418e758882897395494fe0496e25e.1334108211.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1334108211.git.sgw@linux.intel.com>
References: <cover.1334108211.git.sgw@linux.intel.com>
In-Reply-To: <cover.1334108211.git.sgw@linux.intel.com>
References: <cover.1334108211.git.sgw@linux.intel.com>
Subject: [meta-yocto CONSOLIDATED PULL (for RC3) 1/3] poky-tiny.conf: adjust eglibc options for poky-tiny
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
X-List-Received-Date: Wed, 11 Apr 2012 01:37:50 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Avoid errors for building meta-toolchain for poky-tiny

This Fixes Bug: [YOCTO #2259]

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta-yocto/conf/distro/poky-tiny.conf |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
index 395c6fb..58d64ec 100644
--- a/meta-yocto/conf/distro/poky-tiny.conf
+++ b/meta-yocto/conf/distro/poky-tiny.conf
@@ -63,6 +63,12 @@ ASSUME_PROVIDED += "pkgconfig$"
 # Reconfigure eglibc for a smaller installation
 # Comment out any of the lines below to disable them in the build
 DISTRO_FEATURES_LIBC_TINY = "libc-libm libc-crypt"
+# for gettext
+DISTRO_FEATURES_LIBC_TINY += "libc-posix-clang-wchar"
+# for m4
+DISTRO_FEATURES_LIBC_TINY += "libc-spawn libc-locale-code"
+# for elfutils
+DISTRO_FEATURES_LIBC_TINY += "libc-ftraverse"
 # Required for "who"
 DISTRO_FEATURES_LIBC_MINIMAL = "libc-utmp libc-getlogin"
 DISTRO_FEATURES_LIBC_REGEX = "libc-posix-regexp"
-- 
1.7.7.6


