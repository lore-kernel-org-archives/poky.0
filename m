Return-Path: <liping.ke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id A09D84C8004D
	for <poky@yoctoproject.org>; Thu, 24 Feb 2011 02:53:16 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 24 Feb 2011 00:53:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,215,1297065600"; d="scan'208";a="660981674"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by fmsmga002.fm.intel.com with ESMTP; 24 Feb 2011 00:53:15 -0800
Message-Id: <cover.1298594898.git.liping.ke@intel.com>
Old-Date: Fri, 25 Feb 2011 08:48:18 +0800
Date: Fri, 25 Feb 2011  8:55:59 +0800
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
X-List-Received-Date: Thu, 24 Feb 2011 08:53:16 -0000

From: Liping Ke <liping.ke@intel.com>

Two bugs are found
1) image download file path is not correct. So even if file is downloaded
   already, it can't be detected.
2) sdk image now is renamed as sato-sdk, we need to change the name
   accordingly.
This patch is for fixing the above two bugs.


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lke/adt-newfix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lke/adt-newfix

Thanks,
    Liping Ke <liping.ke@intel.com>
---


Liping Ke (1):
  ADT: Fix several bugs for adt installer

 .../installer/adt-installer/adt_installer          |    9 +++++----
 .../installer/adt-installer/scripts/data_define    |    2 +-
 2 files changed, 6 insertions(+), 5 deletions(-)


