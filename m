Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id DC4654C805AF
	for <poky@yoctoproject.org>; Mon, 20 Jun 2011 03:10:12 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 20 Jun 2011 01:10:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,392,1304319600"; d="scan'208";a="20291747"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.51])
	by fmsmga001.fm.intel.com with ESMTP; 20 Jun 2011 01:10:11 -0700
From: Dexuan Cui <dexuan.cui@intel.com>
To: poky@yoctoproject.org
Date: Mon, 20 Jun 2011 16:09:55 +0800
Message-Id: <cover.1308553185.git.dexuan.cui@intel.com>
X-Mailer: git-send-email 1.7.2
Subject: [PATCH 0/1][meta-intel] emenlow: fix some .bbappend files' names: poky -> core, etc
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
X-List-Received-Date: Mon, 20 Jun 2011 08:10:13 -0000

Please review the patch.

The following changes since commit 76d1178ba1a43cf6457c89717134aeb9f1275fae:

  meta-intel: fix formfactor bbappends to use FILESEXTRAPATHS_prepend (2011-06-15 11:43:04 -0500)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib dcui/meta-intel-emenlow
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dcui/meta-intel-emenlow

Dexuan Cui (1):
  emenlow: fix some .bbappend files' name: poky -> core, etc.

 ...k-gmae.bbappend => task-core-sdk-gmae.bbappend} |    0
 ... task-core-standalone-gmae-sdk-target.bbappend} |    0
 ..._4.7.2.bbappend => qt4-x11-free_4.7.3.bbappend} |    0
 3 files changed, 0 insertions(+), 0 deletions(-)
 rename meta-emenlow/recipes-gnome/tasks/{task-poky-sdk-gmae.bbappend => task-core-sdk-gmae.bbappend} (100%)
 rename meta-emenlow/recipes-gnome/tasks/{task-poky-standalone-gmae-sdk-target.bbappend => task-core-standalone-gmae-sdk-target.bbappend} (100%)
 rename meta-emenlow/recipes-qt/qt4/{qt4-x11-free_4.7.2.bbappend => qt4-x11-free_4.7.3.bbappend} (100%)


