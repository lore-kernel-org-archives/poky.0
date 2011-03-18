Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 172C84C800A4
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 11:11:59 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 18 Mar 2011 09:11:58 -0700
Message-Id: <1bdc18$jtoki7@fmsmga002.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,205,1299484800"; d="scan'208";a="668750409"
Received: from unknown (HELO localhost) ([10.255.12.121])
	by fmsmga002.fm.intel.com with ESMTP; 18 Mar 2011 09:11:58 -0700
Old-Date: Fri, 18 Mar 2011 10:38:11 -0500
Date: Fri, 18 Mar 2011 11:11:57 -0500
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 0/1] Fix for bug 888
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
X-List-Received-Date: Fri, 18 Mar 2011 16:11:59 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This is the SRC_URI version of the previous pull request, as a backup
in case the previous pull request can't be done in time...

Fixes [BUGID #888].  Please pull.

Pull URL: git://git.pokylinux.org/meta-intel.git
  Branch: tzanussi/crownbay-bugfix-888
  Browse: http://git.pokylinux.org/cgit/cgit.cgi/meta-intel/commit/?h=tzanussi/crownbay-bugfix-888

Tom Zanussi (1):
  crownbay: update a handful of EMGD licenses for linux-yocto and
    linux-yocto-stable

 ...rownbay-update-a-handful-of-EMGD-licenses.patch | 1151 ++++++++++++++++++++
 .../linux/linux-yocto-stable_git.bbappend          |    2 +
 ...rownbay-update-a-handful-of-EMGD-licenses.patch | 1151 ++++++++++++++++++++
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    2 +
 4 files changed, 2306 insertions(+), 0 deletions(-)
 create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto-stable/0001-crownbay-update-a-handful-of-EMGD-licenses.patch
 create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto/0001-crownbay-update-a-handful-of-EMGD-licenses.patch


