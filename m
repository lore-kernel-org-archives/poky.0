Return-Path: <lianhao.lu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 89EEE4C811F3
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 20:50:44 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 26 Jan 2011 18:50:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,383,1291622400"; d="scan'208";a="596865389"
Received: from llu-piketon.sh.intel.com ([10.239.36.141])
	by orsmga002.jf.intel.com with ESMTP; 26 Jan 2011 18:50:43 -0800
Received: from lulianhao by llu-piketon.sh.intel.com with local (Exim 4.71)
	(envelope-from <lianhao.lu@intel.com>)
	id 1PiHxL-000784-PX; Thu, 27 Jan 2011 10:51:31 +0800
Message-Id: <cover.1296095614.git.lianhao.lu@intel.com>
Old-Date: Thu, 27 Jan 2011 10:33:34 +0800
Date: Thu, 27 Jan 2011 10:51:31 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 0/6] Added rpm support in meta-toolchain
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
X-List-Received-Date: Thu, 27 Jan 2011 02:50:44 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

The purpose of this series of patches is to add rpm support in meta-toolchain creation,
and also to fix bug #227.

It makes the task populate_sdk in meta/recipes-core/meta/meta-toolchain.bb more generic
to support installing packages from ipk, rpm, and deb files in creating meta-toolchain 
tarball, and move the populate_sdk task out of meta-toolchain.bb recipe into a bbclass.

It added populate_sdk_xxx.bbclass for different package file format.

The meta-toolchain installing process involes 2 set of packages, one is the host sdk 
set which contains packages of applications(e.g. cross-canadian compilers, qemu, etc.) and 
relevant run-time libraries, the other is the target sdk set which contains packages of target
arch's libraries and header files to create a target rootfs for cross compiling purpose.So
the patches also modifes and/or adds functions in package_deb.bbclass & package_rpm.bbclass 
to update the package index and to generate different installing configuration files for the 
tow different sets.

It also fixed a bug in cross-canadian.bbclass to enable the package_deb.bbclass generate correct
deb package files for cross-canadian recipies.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: llu/rpm_meta-toolchain
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/rpm_meta-toolchain

Thanks,
    Lianhao Lu <lianhao.lu@intel.com>
---


Lianhao Lu (6):
  cross-canadian/apt-native: support for debian package.
  classes/populate_sdk_ipk.bbclass: newly created.
  populate_sdk_deb/package_deb: Added deb support for populate_sdk.
  classes/populate_sdk_*: remove blanks.
  package_rpm/populate_sdk_rpm: Added rpm support for populate_sdk
    task.
  meta_toolchain/populate_sdk: Made task populate_sdk more generic.

 meta/classes/cross-canadian.bbclass            |    3 +
 meta/classes/package_deb.bbclass               |   31 ++++++
 meta/classes/package_rpm.bbclass               |   53 ++++++++--
 meta/classes/populate_sdk.bbclass              |   88 +++++++++++++++
 meta/classes/populate_sdk_deb.bbclass          |  129 ++++++++++++++++++++++
 meta/classes/populate_sdk_ipk.bbclass          |   57 ++++++++++
 meta/classes/populate_sdk_rpm.bbclass          |  138 ++++++++++++++++++++++++
 meta/recipes-core/meta/meta-toolchain.bb       |  103 +-----------------
 meta/recipes-devtools/apt/apt-native_0.7.14.bb |    2 +
 9 files changed, 496 insertions(+), 108 deletions(-)
 create mode 100644 meta/classes/populate_sdk.bbclass
 create mode 100644 meta/classes/populate_sdk_deb.bbclass
 create mode 100644 meta/classes/populate_sdk_ipk.bbclass
 create mode 100644 meta/classes/populate_sdk_rpm.bbclass


