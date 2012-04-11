Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9EB6E013A8
	for <poky@yoctoproject.org>; Tue, 10 Apr 2012 18:37:50 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 Apr 2012 18:37:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="152180207"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.12.159])
	by fmsmga002.fm.intel.com with ESMTP; 10 Apr 2012 18:37:50 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 10 Apr 2012 18:37:48 -0700
Message-Id: <d1ffd4880e76094291ade5758d32e6c0b4f79311.1334108211.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1334108211.git.sgw@linux.intel.com>
References: <cover.1334108211.git.sgw@linux.intel.com>
In-Reply-To: <cover.1334108211.git.sgw@linux.intel.com>
References: <cover.1334108211.git.sgw@linux.intel.com>
Subject: [meta-yocto CONSOLIDATED PULL (for RC3) 2/3] beagleboard.conf: fix hardcode of virtual/xserver
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

From: Robert Yang <liezhi.yang@windriver.com>

Here is the message from the bug 2260:

meta-yocto/conf/machine/beagleboard.conf hardcodes the virtual/xserver
provider, i.e., it includes the following:

PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg-lite"

I don't think machine conf is the correct place for selecting what is
essentially a distro feature, but at least this should use the '?='
operator; as is to select a different provider one must provide a
complete beagleboard.conf file.

[YOCTO #2260]

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 meta-yocto/conf/machine/beagleboard.conf |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/conf/machine/beagleboard.conf b/meta-yocto/conf/machine/beagleboard.conf
index fa2f8e7..06a0ecd 100644
--- a/meta-yocto/conf/machine/beagleboard.conf
+++ b/meta-yocto/conf/machine/beagleboard.conf
@@ -2,8 +2,8 @@
 #@NAME: Beagleboard machine
 #@DESCRIPTION: Machine configuration for the http://beagleboard.org/ board 
 
-PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg-lite"
-XSERVER = "xserver-xorg-lite \
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg-lite"
+XSERVER ?= "xserver-xorg-lite \
            xf86-input-evdev \
            xf86-input-mouse \
            xf86-video-omapfb \
-- 
1.7.7.6


