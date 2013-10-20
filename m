Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9E3EE016E7
	for <poky@yoctoproject.org>; Sun, 20 Oct 2013 15:32:29 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 20 Oct 2013 15:32:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="310326356"
Received: from unknown (HELO [10.255.15.211]) ([10.255.15.211])
	by AZSMGA002.ch.intel.com with ESMTP; 20 Oct 2013 15:32:28 -0700
Message-ID: <1382308347.6266.21.camel@dvhart-mobl4.amr.corp.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
To: poky@yoctoproject.org
Date: Sun, 20 Oct 2013 15:32:27 -0700
Organization: Intel
X-Mailer: Evolution 3.8.5 (3.8.5-2.fc19) 
Mime-Version: 1.0
Subject: libcheck data file clashes for core-image-sato-sdk on minnow dev
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
X-List-Received-Date: Sun, 20 Oct 2013 22:32:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hitting the following building core-image-sato-sdk for my development
3.10 minnow bsp:

$ bitbake core-image-sato-sdk
Loading cache: 100% |##############################################|
ETA:  00:00:00
Loaded 1222 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        = "1.21.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-19"
TARGET_SYS        = "i586-poky-linux"
MACHINE           = "minnow"
DISTRO            = "poky"
DISTRO_VERSION    = "1.5+snapshot-20131020"
TUNE_FEATURES     = "m32 core2"
TARGET_FPU        = ""
meta-yocto        = "master:505114c13d29799a25379f7ce720d632616d8776"
meta-minnow       = "master:57459d0753d3b6e25b3ac431496eafa5e668d6fa"
meta-intel        = "master:bf3b0601fa45b98ad33a2e4fd048f3616f50d8da"
meta              = "master:505114c13d29799a25379f7ce720d632616d8776"

...

| Collected errors:
|  * check_data_file_clashes: Package check wants to install
file /build/yocto/master/minnow_20131019205134/build/tmp/work/minnow-poky-linux/core-image-sato-sdk/1.0-r0/rootfs/usr/bin/checkmk
|       But that file is already provided by package  * libcheck
|  * check_data_file_clashes: Package check wants to install
file /build/yocto/master/minnow_20131019205134/build/tmp/work/minnow-poky-linux/core-image-sato-sdk/1.0-r0/rootfs/usr/lib/libcheck.so.0
|       But that file is already provided by package  * libcheck
|  * check_data_file_clashes: Package check wants to install
file /build/yocto/master/minnow_20131019205134/build/tmp/work/minnow-poky-linux/core-image-sato-sdk/1.0-r0/rootfs/usr/lib/libcheck.so.0.0.0
|       But that file is already provided by package  * libcheck
|  * opkg_install_cmd: Cannot install package
packagegroup-core-boot-dev.
|
WARNING: /build/yocto/master/minnow_20131019205134/build/tmp/work/minnow-poky-linux/core-image-sato-sdk/1.0-r0/temp/run.do_rootfs.32349:1 exit 255 from
|   opkg-cl -f $INSTALL_CONF_IPK -o $INSTALL_ROOTFS_IPK
--force_postinstall --prefer-arch-to-version install `cat $1`
| ERROR: Function failed: do_rootfs (log file is located
at /build/yocto/master/minnow_20131019205134/build/tmp/work/minnow-poky-linux/core-image-sato-sdk/1.0-r0/temp/log.do_rootfs.32349)
ERROR: Task 22
(/build/yocto/master/minnow_20131019205134/poky/meta/recipes-sato/images/core-image-sato-sdk.bb, do_rootfs) failed with exit code '1'
NOTE: Tasks Summary: Attempted 6635 tasks of which 6626 didn't need to
be rerun and 1 failed.
No currently running tasks (6635 of 6637)

local.conf modifications:

NO_ISO="1"
# dvhart: allow for building the EMGD driver
LICENSE_FLAGS_WHITELIST = "license_emgd-driver-bin"
EXTRA_IMAGE_FEATURES = "debug-tweaks"
# dvhart: IA friendly tooling
CORE_IMAGE_EXTRA_INSTALL += "pciutils usbutils dmidecode parted"

Plus the usual parallel and machine settings of course.

Anything obvious jumping out at people?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



