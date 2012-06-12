Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 510CAE01421
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 07:52:43 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 12 Jun 2012 07:52:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="111189732"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.12.133])
	by AZSMGA002.ch.intel.com with ESMTP; 12 Jun 2012 07:52:42 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 12 Jun 2012 07:52:40 -0700
Message-Id: <cover.1339512665.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
Subject: [PATCH 0/1] Add set of distro tracking to meta-yocto
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
X-List-Received-Date: Tue, 12 Jun 2012 14:52:43 -0000

This adds back the distro_tracking info as multiple files

Sau!

The following changes since commit cc96daa4443ca39e409040e3e4aff783658b8f6a:

  qt-x11-free.bbappend: Update to 4.8.1 (2012-06-12 13:10:00 +0100)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib sgw/dist_files
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgw/dist_files

Saul Wold (1):
  distro tracking files: Add seperated set of files

 meta-yocto/conf/distro/include/distro_alias.inc    |  426 ++++++++
 meta-yocto/conf/distro/include/maintainers.inc     |  727 +++++++++++++
 meta-yocto/conf/distro/include/recipe_color.inc    |  457 +++++++++
 .../conf/distro/include/upstream_tracking.inc      | 1078 ++++++++++++++++++++
 4 files changed, 2688 insertions(+), 0 deletions(-)
 create mode 100644 meta-yocto/conf/distro/include/distro_alias.inc
 create mode 100644 meta-yocto/conf/distro/include/maintainers.inc
 create mode 100644 meta-yocto/conf/distro/include/recipe_color.inc
 create mode 100644 meta-yocto/conf/distro/include/upstream_tracking.inc

-- 
1.7.7.6


