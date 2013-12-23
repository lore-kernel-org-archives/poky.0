Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDD64E007DC
	for <poky@yoctoproject.org>; Mon, 23 Dec 2013 13:02:33 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 Dec 2013 13:02:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,538,1384329600"; d="scan'208";a="454740732"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.50])
	by fmsmga002.fm.intel.com with ESMTP; 23 Dec 2013 13:02:29 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 23 Dec 2013 21:02:22 +0000
Message-Id: <cover.1387832465.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.1.2
Subject: [PATCH 0/1] LICENSE fix for Poky
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 23 Dec 2013 21:02:39 -0000

Note: this is the Poky equivalent of the fix I sent to the OE-Core list.


The following changes since commit 005af45191ded6185c618c708181b31281e43092:

  bitbake: fetch2: avoid printing "no checksum" error message twice (2013-12-22 14:29:13 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib paule/license-poky
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/license-poky

Paul Eggleton (1):
  Fix license notices for Poky

 LICENSE                   |  11 +-
 meta-skeleton/COPYING.MIT |  17 +++
 meta/COPYING.GPLv2        | 339 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 362 insertions(+), 5 deletions(-)
 create mode 100644 meta-skeleton/COPYING.MIT
 create mode 100644 meta/COPYING.GPLv2

-- 
1.8.1.2


