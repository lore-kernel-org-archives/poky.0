Return-Path: <lianhao.lu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id C86CB4C812A6
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 04:00:49 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 28 Jan 2011 02:00:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,391,1291622400"; d="scan'208";a="881843388"
Received: from llu-piketon.sh.intel.com ([10.239.36.141])
	by fmsmga001.fm.intel.com with ESMTP; 28 Jan 2011 02:00:46 -0800
Received: from lulianhao by llu-piketon.sh.intel.com with local (Exim 4.71)
	(envelope-from <lianhao.lu@intel.com>)
	id 1Pil8z-0001iM-TA; Fri, 28 Jan 2011 18:01:29 +0800
Message-Id: <cover.1296208216.git.lianhao.lu@intel.com>
Old-Date: Fri, 28 Jan 2011 17:50:16 +0800
Date: Fri, 28 Jan 2011 18:01:29 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 0/5] [BUG# 227] rpm/deb support for meta-toolchain.
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
X-List-Received-Date: Fri, 28 Jan 2011 10:00:49 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

The purpose of this series of patches is to add rpm/deb support in meta-toolchain creation,
and also to fix bug #227.

It makes the task populate_sdk in meta/recipes-core/meta/meta-toolchain.bb more generic
to support installing packages from ipk, rpm, and deb files in creating meta-toolchain 
tarball, and move the populate_sdk task out of meta-toolchain.bb recipe into a bbclass.

It added populate_sdk_xxx.bbclass for different package file format.

Since there are quite many code duplication between relevant popuplage_sdk_xxx and rootfs_xxx 
bbclasses, it also moved the common code into the package_xxx.bbclass, based on RP's suggestion. 
The generic function package_install_internal_xxx() may installs a list of packages, based on the
information specified by various shell environment variables about where the target directory to
be installed to, package architecture information, etc.

It also fixed a bug in cross-canadian.bbclass to enable the package_deb.bbclass generate correct
deb package files for cross-canadian recipies.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: llu/bug227
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/bug227

Thanks,
    Lianhao Lu <lianhao.lu@intel.com>
---


Lianhao Lu (5):
  cross-canadian.bbclass: Correct deb package arch.
  apt-native: Added licence checksum.
  image/rootfs_xx/package_xx.bbclass: prepare to add populate_sdk task.
  classes/populate_sdk_xxx.bbclass: pkg format support for populate_sdk
    task
  meta-toolchain: pkg format independant populate_sdk task.

 meta/classes/cross-canadian.bbclass            |    3 +
 meta/classes/image.bbclass                     |    5 +-
 meta/classes/package_deb.bbclass               |  145 ++++++++++++++
 meta/classes/package_ipk.bbclass               |   63 ++++++
 meta/classes/package_rpm.bbclass               |  243 +++++++++++++++++++++++-
 meta/classes/populate_sdk.bbclass              |   82 ++++++++
 meta/classes/populate_sdk_deb.bbclass          |   60 ++++++
 meta/classes/populate_sdk_ipk.bbclass          |   44 +++++
 meta/classes/populate_sdk_rpm.bbclass          |   67 +++++++
 meta/classes/rootfs_deb.bbclass                |  111 ++---------
 meta/classes/rootfs_ipk.bbclass                |   45 +----
 meta/classes/rootfs_rpm.bbclass                |  157 ++--------------
 meta/recipes-core/meta/meta-toolchain.bb       |  103 +----------
 meta/recipes-devtools/apt/apt-native_0.7.14.bb |    2 +
 14 files changed, 740 insertions(+), 390 deletions(-)
 create mode 100644 meta/classes/populate_sdk.bbclass
 create mode 100644 meta/classes/populate_sdk_deb.bbclass
 create mode 100644 meta/classes/populate_sdk_ipk.bbclass
 create mode 100644 meta/classes/populate_sdk_rpm.bbclass


