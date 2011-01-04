Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4D2B54C80039
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 17:47:47 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Jan 2011 15:47:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,268,1291622400"; d="scan'208";a="589553060"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga002.jf.intel.com with ESMTP; 03 Jan 2011 15:47:46 -0800
Message-Id: <cover.1294099429.git.jessica.zhang@intel.com>
From: Jessica Zhang <jessica.zhang@intel.com>
Date: Mon, 3 Jan 2011 16:03:49 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 00/59] Consolidate adt-installer pull request
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
X-List-Received-Date: Mon, 03 Jan 2011 23:47:47 -0000

This is the consolidated pull request that contains all the changes for adt_installer work, including the bitbake recipe file for creating the installer tar file under /tmp/deploy/sdk, after untar, run the adt-installer to install adt cross-toolchain and target sysroots.


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: jzhang/adt-installer
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jzhang/adt-installer

Thanks,
    Jessica Zhang <jessica.zhang@intel.com>
---


Jessica Zhang (9):
  Correct messages, fix bug for parsing YOCTOADT_TARGET_ARCH variable
    correctly
  more messages cleanup, fix issues: 1) download all the specified
    rootfs fiels, 2) add check for yocto_installer_internal, 3) error
    out when sysroot image file or sysroot location are empty
  Clean messaging, prompt consolidation and bug fixes
  Correct messages, fix bug for parsing YOCTOADT_TARGET_ARCH variable
    correctly
  more messages cleanup, fix issues: 1) download all the specified
    rootfs fiels, 2) add check for yocto_installer_internal, 3) error
    out when sysroot image file or sysroot location are empty
  Clean messaging, prompt consolidation and bug fixes
  change file names, more clean up of messaging, add comments and
    simplify config file entries, change code support new config file
  missing files for change file names, more clean up of messaging, add
    comments and simplify config file entries, change code support new
    config file
  Move version info to the beginning of conf file and fix a minor typo
    in adt_installer.conf

Liping Ke (50):
  Add initial yocto adt installer script
  New version of installer script
  Redirect downloading information to both screen and log file
  Change sdk version in configuration file to 0.9+snapshot
  Change qemu kernel downloading output info to be noverbose
  Make bar viewing for showing download progress instead of dot view
  Update user configuration file for testing
  If qemu file already exists, user can choose download new or keep the
    old
  Modify folders per Josh's suggestion
  sudo is controlled in smaller granularity.
  Add opkg source tarball for testing.
  Add split include script file
  Remove the param passing for readability
  Remove redundant prompts
  Move installer scripts to the decided folders
  Add new folder under installer for conforming bb file path
    conventions
  Add installer scripts tarball generating bb file
  Add just installer scripts code according to bb file logic
  Make Silent installation as another option for avoiding bothering
    users.
  Removde Debug options from installer script
  Remove unneccessary folder creation in do_deploy
  Store pseudo database in target rootfs
  Link ld.so.cache file into the host filesystem
  Add initial yocto adt installer script
  New version of installer script
  Redirect downloading information to both screen and log file
  Change sdk version in configuration file to 0.9+snapshot
  Change qemu kernel downloading output info to be noverbose
  Make bar viewing for showing download progress instead of dot view
  Update user configuration file for testing
  If qemu file already exists, user can choose download new or keep the
    old
  Modify folders per Josh's suggestion
  sudo is controlled in smaller granularity.
  Add opkg source tarball for testing.
  Add split include script file
  Remove the param passing for readability
  Remove redundant prompts
  Move installer scripts to the decided folders
  Add new folder under installer for conforming bb file path
    conventions
  Add installer scripts tarball generating bb file
  Add just installer scripts code according to bb file logic
  Make Silent installation as another option for avoiding bothering
    users.
  Removde Debug options from installer script
  Remove unneccessary folder creation in do_deploy
  Store pseudo database in target rootfs
  Link ld.so.cache file into the host filesystem
  Remove old unused renamed files
  Remove unused rename file
  Fix several defects: sdk_version, relative path
  Adjust the code according to installation configuration file changes.


