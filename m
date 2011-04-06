Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3B8444C80044
	for <poky@yoctoproject.org>; Wed,  6 Apr 2011 09:45:14 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 06 Apr 2011 07:45:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,310,1299484800"; d="scan'208";a="675958568"
Received: from unknown (HELO helios) ([10.255.12.249])
	by fmsmga002.fm.intel.com with SMTP; 06 Apr 2011 07:45:05 -0700
Received: by helios (sSMTP sendmail emulation); Wed, 06 Apr 2011 15:45:04 +0100
Message-Id: <cover.1302100922.git.paul.eggleton@linux.intel.com>
Old-Date: Wed, 6 Apr 2011 15:42:02 +0100
Date: Wed, 06 Apr 2011 15:45:03 +0100
To: openembedded-core@lists.openembedded.org,poky@yoctoproject.org
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 0/1] Update Qt4 to 4.7.2, security update
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
X-List-Received-Date: Wed, 06 Apr 2011 14:45:14 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

Move Qt 4.7.x from 4.7.1 to 4.7.2 and apply security patch from OE.

Pull URL: git://git.openembedded.org/openembedded-core-contrib
  Branch: paule/qt-4.7.2
  Browse: http://git.openembedded.org/cgit.cgi/openembedded-core-contrib/log/?h=paule/qt-4.7.2

Thanks,
    Paul Eggleton <paul.eggleton@linux.intel.com>
---


Denys Dmytriyenko (1):
  qt4: security advisory - blacklist fraudulent comodo certificates

 ...klist-fraudulent-comodo-certificates-patch.diff |  134 ++++++++++++++++++++
 meta/recipes-qt/qt4/qt-4.6.3.inc                   |    1 +
 meta/recipes-qt/qt4/qt-4.7.2.inc                   |    1 +
 meta/recipes-qt/qt4/qt4-embedded_4.6.3.bb          |    2 +-
 meta/recipes-qt/qt4/qt4-embedded_4.7.2.bb          |    2 +-
 meta/recipes-qt/qt4/qt4-x11-free_4.6.3.bb          |    2 +-
 meta/recipes-qt/qt4/qt4-x11-free_4.7.2.bb          |    2 +-
 7 files changed, 140 insertions(+), 4 deletions(-)
 create mode 100644 meta/recipes-qt/qt4/files/blacklist-fraudulent-comodo-certificates-patch.diff


