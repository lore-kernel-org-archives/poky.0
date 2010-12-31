Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 836AC4C80050
	for <poky@pokylinux.org>; Thu, 30 Dec 2010 23:44:56 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 30 Dec 2010 21:44:55 -0800
Message-Id: <b9dded$hh9bqm@orsmga002.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,253,1291622400"; d="scan'208";a="588558168"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.131])
	by orsmga002.jf.intel.com with ESMTP; 30 Dec 2010 21:44:55 -0800
From: Kevin Tian <kevin.tian@intel.com>
Old-Date: Fri, 31 Dec 2010 13:20:33 +0800
Date: Fri, 31 Dec 2010 13:28:01 +0800
To: poky@pokylinux.org
Subject: [PATCH 0/1] make c++ include path relative to --sysroot
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
X-List-Received-Date: Fri, 31 Dec 2010 05:44:56 -0000

with this fix, now gcc installed from sstate packages can find c++ standard header
files correctly in the new build directory, e.g when building libproxy. There's
still one remaining issue in meta-toolchain part, that a complex c++ project 
compilation still fails being unable to find <algorithm>, if meta-toolchain is
installed in a location different from the default assumption.

Having said that, this patch doesn't break normal usage w/o causing regression.
I verified Sato build for qemuarm/qemuppc, and Lianhao helped verify qemumips 
and corresonding normal meta-toolchain usage. So it'd be good to get it merged
earlier to remove one more road blocker for sstate.

Thanks to RP for suggesting the solution here.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: tk/cplusplus
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tk/cplusplus

Thanks,
    Kevin Tian <kevin.tian@intel.com>
---


Kevin Tian (1):
  gcc-4.5.1: make c++ include path relative to "--sysroot"

 meta/recipes-devtools/gcc/gcc-4.5.1.inc            |    1 +
 .../GPLUSPLUS_INCLUDE_DIR_with_sysroot.patch       |   33 ++++++++++++++++++++
 meta/recipes-devtools/gcc/gcc-configure-cross.inc  |    2 +-
 meta/recipes-devtools/gcc/gcc-configure-sdk.inc    |    2 +-
 .../gcc/gcc-cross-canadian_4.5.1.bb                |    2 +-
 .../gcc/gcc-cross-initial_4.5.1.bb                 |    2 +-
 .../gcc/gcc-cross-intermediate_4.5.1.bb            |    2 +-
 meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb       |    2 +-
 .../gcc/gcc-crosssdk-initial_4.5.1.bb              |    2 +-
 .../gcc/gcc-crosssdk-intermediate_4.5.1.bb         |    2 +-
 meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb    |    2 +-
 meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb     |    2 +-
 meta/recipes-devtools/gcc/gcc_4.5.1.bb             |    2 +-
 13 files changed, 45 insertions(+), 11 deletions(-)
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.1/GPLUSPLUS_INCLUDE_DIR_with_sysroot.patch


