Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 474EF4C80050
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 11:47:35 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 03 Mar 2011 09:47:34 -0800
Message-Id: <1bdc18$jop9h2@fmsmga002.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,259,1297065600"; d="scan'208";a="663529015"
Received: from unknown (HELO localhost) ([10.255.12.145])
	by fmsmga002.fm.intel.com with ESMTP; 03 Mar 2011 09:47:34 -0800
Old-Date: Thu, 3 Mar 2011 11:32:41 -0600
Date: Thu, 03 Mar 2011 11:47:28 -0600
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 0/1] meta-n450: use linux-yocto-stable
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
X-List-Received-Date: Thu, 03 Mar 2011 17:47:35 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Please pull into meta-intel/master.

Pull URL: git://git.pokylinux.org/meta-intel/tzanussi/n450-kernel-fix
  Branch: tzanussi/n450-kernel-fix
  Browse:
http://git.pokylinux.org/cgit.cgi/meta-intel/log/?h=tzanussi/n450-kernel-fix

Tom Zanussi (1):
  meta-n450: use linux-yocto-stable

 .../recipes-kernel/linux/linux-wrs_git.bbappend    |    7 -------
 .../linux/linux-yocto-stable_git.bbappend          |    7 +++++++
 2 files changed, 7 insertions(+), 7 deletions(-)
 delete mode 100644 meta-n450/recipes-kernel/linux/linux-wrs_git.bbappend
 create mode 100644 meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend


