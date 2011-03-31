Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id B26D64C806FA
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 08:46:16 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 31 Mar 2011 06:46:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,275,1299484800"; d="scan'208";a="673728749"
Received: from unknown (HELO helios) ([10.255.12.217])
	by fmsmga002.fm.intel.com with SMTP; 31 Mar 2011 06:46:15 -0700
Received: by helios (sSMTP sendmail emulation); Thu, 31 Mar 2011 14:46:14 +0100
Message-Id: <41ae31ba057b63d3c518e2edf217109c59b64603.1301578942.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1301578942.git.paul.eggleton@linux.intel.com>
References: <cover.1301578942.git.paul.eggleton@linux.intel.com>
Old-Date: Thu, 31 Mar 2011 14:33:16 +0100
Date: Thu, 31 Mar 2011 14:46:14 +0100
To: openembedded-core@lists.openembedded.org,poky@yoctoproject.org
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 1/1] README.hardware: remove u-boot flashing instructions for mpc8315e-rdb
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
X-List-Received-Date: Thu, 31 Mar 2011 13:46:16 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

Upgrading u-boot is apparently not necessary with current board revisions,
and these instructions may not work properly anyway (our toolchain seems not
to be able to compile u-boot in the way described), and given that they are
potentially risky they should be removed.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 README.hardware |   29 +++--------------------------
 1 files changed, 3 insertions(+), 26 deletions(-)

diff --git a/README.hardware b/README.hardware
index 79607f7..025c678 100644
--- a/README.hardware
+++ b/README.hardware
@@ -234,32 +234,7 @@ You will need the following:
 * nfs root setup on your workstation
 * tftp server installed on your workstation
 
-The original U-Boot image on board can't boot kernel versions 2.6.34 or later
-successfully, so the U-Boot image should be upgraded to the latest U-Boot.
-
- 1. First build a new U-Boot image for mpc8315e-rdb, u-boot.bin.mpc8315erdb,
-    then make it available on your tftp server. To compile the new u-boot:
-
- $ git clone git://git.denx.de/u-boot.git
- $ cd u-boot
- $ git checkout -b v2010.09-mpc8315erdb v2010.09
- $ make ARCH=powerpc CROSS_COMPILE=<powerpc cross compiler path> MPC8315ERDB_config
- $ make ARCH=powerpc CROSS_COMPILE=<powerpc cross compiler path> all
- $ cp u-boot.bin u-boot.bin.mpc8315erdb
-
- 2. Set up the environment in U-Boot:
-
- =>setenv ipaddr <board ip>
- =>setenv serverip <tftp server ip>
-
- 3. Flash the new U-Boot image:
-
- =>tftp 200000 u-boot.bin.mpc8315erdb
- =>protect off all
- =>erase fe000000 +60000
- =>cp.b 200000 fe000000 60000
-
-Then the kernel can be booted successfully:
+Load the kernel and boot it as follows:
 
  1. Get the kernel (uImage.mpc8315erdb) and dtb (mpc8315erdb.dtb) files from
     the Poky build tmp/deploy directory, and make them available on your tftp
@@ -267,6 +242,8 @@ Then the kernel can be booted successfully:
 
  2. Set up the environment in U-Boot:
 
+ =>setenv ipaddr <board ip>
+ =>setenv serverip <tftp server ip>
  =>setenv bootargs root=/dev/nfs rw nfsroot=<nfsroot ip>:<rootfs path> ip=<board ip>:<server ip>:<gateway ip>:255.255.255.0:mpc8315e:eth0:off console=ttyS0,115200
 
  3. Download kernel and dtb to boot kernel.
-- 
1.7.1


