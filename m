Return-Path: <liping.ke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id B77014C800A4
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 19:29:24 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 28 Feb 2011 17:29:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,244,1297065600"; d="scan'208";a="662367076"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by fmsmga002.fm.intel.com with ESMTP; 28 Feb 2011 17:29:23 -0800
Message-Id: <cover.1299000572.git.liping.ke@intel.com>
Old-Date: Wed, 2 Mar 2011 01:29:32 +0800
Date: Wed, 02 Mar 2011  1:31:16 +0800
To: poky@yoctoproject.org
CC: 
From: Liping Ke <liping.ke@intel.com>
Subject: [PATCH 0/1] Fix several small bugs for adt installer
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
X-List-Received-Date: Tue, 01 Mar 2011 01:29:24 -0000

From: Liping Ke <liping.ke@intel.com>

    
Two bugs are found
1) image download file path is not correct. So even if file is downloaded
   already, it can't be detected.
2) sdk image now is renamed as sato-sdk, we need to change the name
   accordingly.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lke/adt-newfix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lke/adt-newfix

Thanks,
    Liping Ke <liping.ke@intel.com>
---


Liping Ke (1):
  ADT: Fix several bugs for adt installer

 .../installer/adt-installer/adt_installer          |    9 +++++----
 .../installer/adt-installer/adt_installer.conf     |    8 ++++----
 .../installer/adt-installer/scripts/data_define    |    2 +-
 3 files changed, 10 insertions(+), 9 deletions(-)


