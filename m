Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 860C94C806FA
	for <poky@yoctoproject.org>; Wed, 20 Apr 2011 05:52:14 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 20 Apr 2011 03:52:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,246,1301900400"; d="scan'208";a="681444072"
Received: from unknown (HELO helios) ([10.255.13.37])
	by fmsmga002.fm.intel.com with SMTP; 20 Apr 2011 03:52:06 -0700
Received: by helios (sSMTP sendmail emulation); Wed, 20 Apr 2011 11:52:05 +0100
Message-Id: <3f93d8eda4dc873d1c732ccc297782779f7116f6.1303296533.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1303296533.git.paul.eggleton@linux.intel.com>
References: <cover.1303296533.git.paul.eggleton@linux.intel.com>
Old-Date: Wed, 20 Apr 2011 11:45:25 +0100
Date: Wed, 20 Apr 2011 11:52:05 +0100
To: poky@yoctoproject.org
CC: 
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 1/1] netbase: automatically bring up usb0 on BeagleBoard xM
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
X-List-Received-Date: Wed, 20 Apr 2011 10:52:14 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

Avoids manual configuration of the BeagleBoard xM's ethernet port
(which shows up as usb0).

Fixes [YOCTO #930]

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 .../netbase/netbase-4.45/beagleboard/interfaces    |   27 ++++++++++++++++++++
 .../recipes-core/netbase/netbase_4.45.bbappend     |    3 ++
 2 files changed, 30 insertions(+), 0 deletions(-)
 create mode 100644 meta-yocto/recipes-core/netbase/netbase-4.45/beagleboard/interfaces
 create mode 100644 meta-yocto/recipes-core/netbase/netbase_4.45.bbappend

diff --git a/meta-yocto/recipes-core/netbase/netbase-4.45/beagleboard/interfaces b/meta-yocto/recipes-core/netbase/netbase-4.45/beagleboard/interfaces
new file mode 100644
index 0000000..b6935c1
--- /dev/null
+++ b/meta-yocto/recipes-core/netbase/netbase-4.45/beagleboard/interfaces
@@ -0,0 +1,27 @@
+# /etc/network/interfaces -- configuration file for ifup(8), ifdown(8)
+ 
+# The loopback interface
+auto lo
+iface lo inet loopback
+
+# Wireless interfaces
+iface wlan0 inet dhcp
+	wireless_mode managed
+	wireless_essid any
+	wpa-driver wext
+	wpa-conf /etc/wpa_supplicant.conf
+
+iface atml0 inet dhcp
+
+# Wired or wireless interfaces
+auto eth0
+iface eth0 inet dhcp
+iface eth1 inet dhcp
+
+# Ethernet/RNDIS gadget (g_ether) or LAN9514 on BeagleBoard xM
+auto usb0
+iface usb0 inet dhcp
+
+# Bluetooth networking
+iface bnep0 inet dhcp
+
diff --git a/meta-yocto/recipes-core/netbase/netbase_4.45.bbappend b/meta-yocto/recipes-core/netbase/netbase_4.45.bbappend
new file mode 100644
index 0000000..4b8d0e6
--- /dev/null
+++ b/meta-yocto/recipes-core/netbase/netbase_4.45.bbappend
@@ -0,0 +1,3 @@
+THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
+FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
+
-- 
1.7.1


