Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2F0E74C80FD4
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 09:10:20 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 23 Dec 2010 07:10:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="586676474"
Received: from unknown (HELO helios) ([10.255.16.56])
	by orsmga002.jf.intel.com with SMTP; 23 Dec 2010 07:10:18 -0800
Received: by helios (sSMTP sendmail emulation); Thu, 23 Dec 2010 15:10:19 +0000
Message-Id: <cover.1293116495.git.paul.eggleton@linux.intel.com>
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Old-Date: Thu, 23 Dec 2010 15:01:35 +0000
Date: Thu, 23 Dec 2010 15:10:19 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/4] Qt4 application fixes
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
X-List-Received-Date: Thu, 23 Dec 2010 15:10:20 -0000

Fix Qt4 runtime dependencies for all of our current Qt4 applications.
Addresses [BUGID: 524].

Some notes:
* qmmp is now building with cmake. This took quite a few additions to 
  EXTRA_OECMAKE and I suspect there is a case for having a "qt4cmake" bbclass
  or similar to make this reusable - further discussion needed.
* qmmp packaging is not perfect, there are still quite a few unpackaged 
  files; however it should at least now be usable. How much further to go 
  really depends on the purpose of having it in poky.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: paule/qt-fixes
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/qt-fixes

Thanks,
    Paul Eggleton <paul.eggleton@linux.intel.com>
---


Paul Eggleton (4):
  qmake2.bbclass: add space to end of DEPENDS_prepend
  fotowall: fix runtime Qt4 dependencies
  quicky: fix Qt4 runtime dependencies
  qmmp: fix dependencies and packaging

 meta/classes/qmake2.bbclass             |    2 +-
 meta/recipes-qt/qt-apps/fotowall_0.9.bb |    4 ++-
 meta/recipes-qt/qt-apps/qmmp_0.4.1.bb   |   54 +++++++++++++++++-------------
 meta/recipes-qt/qt-apps/quicky_0.4.bb   |    1 -
 4 files changed, 35 insertions(+), 26 deletions(-)


