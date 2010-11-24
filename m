Return-Path: <lei.mei@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 67DBD4C811D1
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 05:02:52 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 24 Nov 2010 03:02:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,247,1288594800"; d="scan'208";a="680587214"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by orsmga001.jf.intel.com with ESMTP; 24 Nov 2010 03:02:41 -0800
Message-Id: <cover.1290596255.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Wed, 24 Nov 2010 18:57:35 +0800
To: poky@yoctoproject.org
Subject: [PATCH 00/20]Add 20 recipes license checksum information
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
X-List-Received-Date: Wed, 24 Nov 2010 11:02:52 -0000

This includes 20 recipes license file checksum update

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lmei3/chksum
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/chksum

Thanks,
    Mei Lei <lei.mei@intel.com>
---


Mei Lei (20):
  libatomics-ops:Add license checksum and update the GPL information
  libffi:Add license checksum to bb file
  libgdbus:Add license checksum and update the GPL information
  libpam:Add license checksum to bb file
  modutils:Add license checksum to bb file
  mtools:Add license checksum to bb file
  pax-utils:Add license checksum to bb file
  psmisc:Add license checksum to bb file
  autoconf:Add license checksum and add the GPL information
  automake:Add license checksum to bb file
  bison:Add license checksum to bb file
  byacc:Add license checksum and add the GPL information
  diffstat:Add license checksum to bb file
  distcc:Add license checksum to bb file
  gmp:Add license checksum and add the GPL information
  intltool:Add license checksum to bb file
  libmpc:Add license checksum and update the GPL information
  libpcre:Add license checksum to bb file
  m4:Add license checksum to bb file
  makedepend:Add license checksum to bb file

 meta/recipes-devtools/autoconf/autoconf_2.65.bb    |    4 +++-
 meta/recipes-devtools/automake/automake_1.11.1.bb  |    3 ++-
 meta/recipes-devtools/bison/bison_2.4.3.bb         |    3 ++-
 meta/recipes-devtools/diffstat/diffstat_1.54.bb    |    1 +
 meta/recipes-devtools/distcc/distcc_2.18.3.bb      |    1 +
 meta/recipes-devtools/intltool/intltool_0.40.6.bb  |    3 ++-
 meta/recipes-devtools/m4/m4_1.4.13.bb              |    1 +
 meta/recipes-devtools/mtools/mtools_3.9.9.bb       |    3 ++-
 meta/recipes-devtools/pax-utils/pax-utils_0.2.1.bb |    2 +-
 meta/recipes-extended/byacc/byacc_20100610.bb      |    3 ++-
 meta/recipes-extended/pam/libpam_1.1.1.bb          |    2 ++
 meta/recipes-extended/psmisc/psmisc_22.2.bb        |    2 ++
 meta/recipes-gnome/libffi/libffi_3.0.9.bb          |    2 +-
 .../recipes-graphics/xorg-util/makedepend_1.0.2.bb |    2 +-
 meta/recipes-kernel/modutils/modutils_2.4.27.bb    |    1 +
 .../pulseaudio/libatomics-ops_1.2.bb               |    6 ++++--
 meta/recipes-support/gmp/gmp_5.0.1.bb              |    4 +++-
 meta/recipes-support/libgdbus/libgdbus_git.bb      |    4 +++-
 meta/recipes-support/libmpc/libmpc_0.8.2.bb        |    3 ++-
 meta/recipes-support/libpcre/libpcre_8.10.bb       |    1 +
 20 files changed, 37 insertions(+), 14 deletions(-)


