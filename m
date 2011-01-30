Return-Path: <lianhao.lu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 35CD04C81210
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 02:21:42 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 30 Jan 2011 00:21:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,400,1291622400"; d="scan'208";a="597757755"
Received: from llu-piketon.sh.intel.com ([10.239.36.141])
	by orsmga002.jf.intel.com with ESMTP; 30 Jan 2011 00:21:29 -0800
Received: from lulianhao by llu-piketon.sh.intel.com with local (Exim 4.71)
	(envelope-from <lianhao.lu@intel.com>)
	id 1PjSXv-0000vW-6B; Sun, 30 Jan 2011 16:22:07 +0800
Message-Id: <cover.1296375580.git.lianhao.lu@intel.com>
Old-Date: Sun, 30 Jan 2011 16:19:40 +0800
Date: Sun, 30 Jan 2011 16:22:07 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 0/8] [BUG# 227] Added generic populate_sdk task
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
X-List-Received-Date: Sun, 30 Jan 2011 08:21:42 -0000

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

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: llu/bug227
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/bug227

Thanks,
    Lianhao Lu <lianhao.lu@intel.com>
---


Lianhao Lu (8):
  image/package_xx/rootfs_xx.bbclass: move rootfs_xx_log_check().
  rootfs_deb/package_deb.bbclass: move func from rootfs_deb to
    package_deb
  rootfs_ipk/package_ipk.bbclass: Move func from rootfs_ipk to
    package_ipk
  rootfs_rpm/package_rpm.bbclass: Move func from rootfs_rpm to
    package_rpm
  populate_sdk_rpm.bbclass: Added rpm support for populate_sdk task.
  populate_sdk_deb.bbclass: Added deb support for populate_sdk task.
  populate_sdk_ipk.bbclass: Added ipk support in populate_sdk task.
  populate_sdk.bbclass/meta-toolchain: Made populate_sdk task more
    generic

 meta/classes/image.bbclass               |    5 +-
 meta/classes/package_deb.bbclass         |  145 +++++++++++++++++
 meta/classes/package_ipk.bbclass         |   63 ++++++++
 meta/classes/package_rpm.bbclass         |  250 ++++++++++++++++++++++++++++--
 meta/classes/populate_sdk.bbclass        |   82 ++++++++++
 meta/classes/populate_sdk_deb.bbclass    |   60 +++++++
 meta/classes/populate_sdk_ipk.bbclass    |   44 ++++++
 meta/classes/populate_sdk_rpm.bbclass    |   80 ++++++++++
 meta/classes/rootfs_deb.bbclass          |  111 ++-----------
 meta/classes/rootfs_ipk.bbclass          |   45 +-----
 meta/classes/rootfs_rpm.bbclass          |  168 ++------------------
 meta/recipes-core/meta/meta-toolchain.bb |  103 +------------
 12 files changed, 757 insertions(+), 399 deletions(-)
 create mode 100644 meta/classes/populate_sdk.bbclass
 create mode 100644 meta/classes/populate_sdk_deb.bbclass
 create mode 100644 meta/classes/populate_sdk_ipk.bbclass
 create mode 100644 meta/classes/populate_sdk_rpm.bbclass


