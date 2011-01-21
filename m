Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 58A0D4C81065
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 11:59:21 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 21 Jan 2011 09:59:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,359,1291622400"; d="scan'208";a="595252060"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by orsmga002.jf.intel.com with ESMTP; 21 Jan 2011 09:59:20 -0800
Message-Id: <cover.1295632514.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Old-Date: Fri, 21 Jan 2011 09:55:14 -0800
Date: Fri, 21 Jan 2011  9:59:20 -0800
To: poky@yoctoproject.org
Subject: [PATCH 0/3] revert some of the dso linking changes got fixed by newer linker
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
X-List-Received-Date: Fri, 21 Jan 2011 17:59:21 -0000

The newer linker from binutils 2.21 has a fix which avoids linking errors with 
weak symbols like pthread_cancel, when --no-add-as-needed parameter is passed 
to the linker.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: nitin/dso_linking_change
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/dso_linking_change

Thanks,
    Nitin A Kamble <nitin.a.kamble@intel.com>
---


Nitin A Kamble (3):
  libmusicbrainz: revert the dso_linking_change patch as the new linker
    fixes it
  libzypp: revert the dso_linking_change patch as the new linker fixes
    it
  apt: revert the dso_linking_change patch as the new linker fixes it

 .../apt-0.7.14/dso_linking_change_build_fix.patch  |   25 ----------
 meta/recipes-devtools/apt/apt_0.7.14.bb            |    5 +-
 .../libzypp/dso_linking_change_build_fix.patch     |   50 --------------------
 meta/recipes-extended/libzypp/libzypp_git.bb       |    5 +-
 .../dso_linking_change_build_fix.patch             |   29 -----------
 .../musicbrainz/libmusicbrainz_3.0.3.bb            |    5 +-
 6 files changed, 6 insertions(+), 113 deletions(-)
 delete mode 100644 meta/recipes-devtools/apt/apt-0.7.14/dso_linking_change_build_fix.patch
 delete mode 100644 meta/recipes-extended/libzypp/libzypp/dso_linking_change_build_fix.patch
 delete mode 100644 meta/recipes-multimedia/musicbrainz/libmusicbrainz-3.0.3/dso_linking_change_build_fix.patch

-- 
1.7.3.4


