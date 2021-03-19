Received: from relay11.mail.gandi.net (relay11.mail.gandi.net [217.70.178.231])
 by mx.groups.io with SMTP id smtpd.web09.441.1616175298757385680
 for <poky@lists.yoctoproject.org>;
 Fri, 19 Mar 2021 10:34:59 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: bootlin.com, ip: 217.70.178.231, mailfrom: michael.opdenacker@bootlin.com)
Received: from localhost (amontpellier-552-1-199-211.w109-210.abo.wanadoo.fr [109.210.254.211])
	(Authenticated sender: michael.opdenacker@bootlin.com)
	by relay11.mail.gandi.net (Postfix) with ESMTPSA id CF881100002;
	Fri, 19 Mar 2021 17:34:56 +0000 (UTC)
From: "Michael Opdenacker" <michael.opdenacker@bootlin.com>
To: poky@lists.yoctoproject.org
Cc: Michael Opdenacker <michael.opdenacker@bootlin.com>
Subject: [PATCH] doc: update documentation URL and fix spaces
Date: Fri, 19 Mar 2021 18:34:52 +0100
Message-Id: <20210319173452.44912-1-michael.opdenacker@bootlin.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
---
 meta-poky/README.poky          |  8 ++++----
 meta-yocto-bsp/README.hardware | 18 +++++++++---------
 2 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/meta-poky/README.poky b/meta-poky/README.poky
index be0c6c0..fe9ee05 100644
--- a/meta-poky/README.poky
+++ b/meta-poky/README.poky
@@ -12,13 +12,13 @@ Additional information on the specifics of hardware that Poky supports
 is available in README.hardware. Further hardware support can easily be added
 in the form of layers which extend the systems capabilities in a modular way.
 
-As an integration layer Poky consists of several upstream projects such as 
-BitBake, OpenEmbedded-Core, Yocto documentation and various sources of information 
+As an integration layer Poky consists of several upstream projects such as
+BitBake, OpenEmbedded-Core, Yocto documentation and various sources of information
 e.g. for the hardware support. Poky is in turn a component of the Yocto Project.
 
-The Yocto Project has extensive documentation about the system including a 
+The Yocto Project has extensive documentation about the system including a
 reference manual which can be found at:
-    http://yoctoproject.org/documentation
+    https://docs.yoctoproject.org
 
 OpenEmbedded-Core is a layer containing the core metadata for current versions
 of OpenEmbedded. It is distro-less (can build a functional image with
diff --git a/meta-yocto-bsp/README.hardware b/meta-yocto-bsp/README.hardware
index 9803af0..715d539 100644
--- a/meta-yocto-bsp/README.hardware
+++ b/meta-yocto-bsp/README.hardware
@@ -2,20 +2,20 @@
                   ============================================
 
 This file gives details about using the Yocto Project hardware reference BSPs.
-The machines supported can be seen in the conf/machine/ directory and are listed 
+The machines supported can be seen in the conf/machine/ directory and are listed
 below. There is one per supported hardware architecture and these are primarily
-used to validate that the Yocto Project works on the hardware arctectures of 
+used to validate that the Yocto Project works on the hardware arctectures of
 those machines.
 
-If you are in doubt about using Poky/OpenEmbedded/Yocto Project with your hardware, 
+If you are in doubt about using Poky/OpenEmbedded/Yocto Project with your hardware,
 consult the documentation for your board/device.
 
-Support for additional devices is normally added by adding BSP layers to your 
-configuration. For more information please see the Yocto Board Support Package 
-(BSP) Developer's Guide - documentation source is in documentation/bspguide or 
+Support for additional devices is normally added by adding BSP layers to your
+configuration. For more information please see the Yocto Board Support Package
+(BSP) Developer's Guide - documentation source is in documentation/bspguide or
 download the PDF from:
 
-   http://yoctoproject.org/documentation
+   https://docs.yoctoproject.org
 
 Note that these reference BSPs use the linux-yocto kernel and in general don't
 pull in binary module support for the platforms. This means some device functionality
@@ -73,7 +73,7 @@ Intel Atom platforms:
   + MinnowBoard MAX - E3825 SOC (Bay Trail)
   + MinnowBoard MAX - Turbot (ADI Engineering) - E3826 SOC (Bay Trail)
     - These boards can be either 32bot or 64bit modes depending on firmware
-    - See minnowboard.org for details 
+    - See minnowboard.org for details
   + Intel Braswell SOC
 
 and is likely to work on many unlisted Atom/Core/Xeon based devices. The MACHINE
@@ -247,7 +247,7 @@ Note: If you place the kernel on the ext3 partition, you must re-create the
     rootfs path on your workstation.
 
     and then,
-  
+
       # mount /dev/sda2 /media/sda2
       # tar -xvjpf core-image-minimal-XXX.tar.bz2 -C /media/sda2
       # cp vmlinux /media/sda2/boot/vmlinux
-- 
2.25.1

