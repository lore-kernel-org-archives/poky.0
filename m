Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3872B4C80050
	for <poky@yoctoproject.org>; Wed,  6 Apr 2011 09:57:08 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 06 Apr 2011 07:57:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,310,1299484800"; d="scan'208";a="675962152"
Received: from unknown (HELO helios) ([10.255.12.249])
	by fmsmga002.fm.intel.com with SMTP; 06 Apr 2011 07:57:06 -0700
Received: by helios (sSMTP sendmail emulation); Wed, 06 Apr 2011 15:57:04 +0100
Message-Id: <cover.1302101718.git.paul.eggleton@linux.intel.com>
Old-Date: Wed, 6 Apr 2011 15:55:18 +0100
Date: Wed, 06 Apr 2011 15:57:04 +0100
To: openembedded-core@lists.openembedded.org,poky@yoctoproject.org
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 0/2] Update Qt4 to 4.7.2, security update
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
X-List-Received-Date: Wed, 06 Apr 2011 14:57:08 -0000

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

Paul Eggleton (1):
  qt4: replace 4.7.1 with version 4.7.2

 ...klist-fraudulent-comodo-certificates-patch.diff |  134 ++++++++++++++++++++
 meta/recipes-qt/qt4/qt-4.6.3.inc                   |    1 +
 meta/recipes-qt/qt4/{qt-4.7.1.inc => qt-4.7.2.inc} |    5 +-
 .../0001-Added-Openembedded-crossarch-option.patch |    0
 .../recipes-qt/qt4/{qt-4.7.1 => qt-4.7.2}/g++.conf |    0
 .../hack-out-pg2-4.7.0.patch                       |    0
 .../qt4/{qt-4.7.1 => qt-4.7.2}/linux.conf          |    0
 meta/recipes-qt/qt4/qt4-embedded_4.6.3.bb          |    2 +-
 ...qt4-embedded_4.7.1.bb => qt4-embedded_4.7.2.bb} |    0
 ...s-native_4.7.1.bb => qt4-tools-native_4.7.2.bb} |    4 +-
 meta/recipes-qt/qt4/qt4-tools-nativesdk_4.7.1.bb   |    6 -
 meta/recipes-qt/qt4/qt4-tools-nativesdk_4.7.2.bb   |    6 +
 meta/recipes-qt/qt4/qt4-x11-free_4.6.3.bb          |    2 +-
 ...qt4-x11-free_4.7.1.bb => qt4-x11-free_4.7.2.bb} |    0
 14 files changed, 148 insertions(+), 12 deletions(-)
 create mode 100644 meta/recipes-qt/qt4/files/blacklist-fraudulent-comodo-certificates-patch.diff
 rename meta/recipes-qt/qt4/{qt-4.7.1.inc => qt-4.7.2.inc} (89%)
 rename meta/recipes-qt/qt4/{qt-4.7.1 => qt-4.7.2}/0001-Added-Openembedded-crossarch-option.patch (100%)
 rename meta/recipes-qt/qt4/{qt-4.7.1 => qt-4.7.2}/g++.conf (100%)
 rename meta/recipes-qt/qt4/{qt-4.7.1 => qt-4.7.2}/hack-out-pg2-4.7.0.patch (100%)
 rename meta/recipes-qt/qt4/{qt-4.7.1 => qt-4.7.2}/linux.conf (100%)
 rename meta/recipes-qt/qt4/{qt4-embedded_4.7.1.bb => qt4-embedded_4.7.2.bb} (100%)
 rename meta/recipes-qt/qt4/{qt4-tools-native_4.7.1.bb => qt4-tools-native_4.7.2.bb} (61%)
 delete mode 100644 meta/recipes-qt/qt4/qt4-tools-nativesdk_4.7.1.bb
 create mode 100644 meta/recipes-qt/qt4/qt4-tools-nativesdk_4.7.2.bb
 rename meta/recipes-qt/qt4/{qt4-x11-free_4.7.1.bb => qt4-x11-free_4.7.2.bb} (100%)


