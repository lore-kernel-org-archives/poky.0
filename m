Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D02D6E01465
	for <poky@yoctoproject.org>; Thu, 27 Dec 2012 09:57:15 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 27 Dec 2012 09:57:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,363,1355126400"; d="scan'208";a="270426615"
Received: from unknown (HELO swold-linux.bigsur.com) ([10.255.14.22])
	by fmsmga002.fm.intel.com with ESMTP; 27 Dec 2012 09:57:15 -0800
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 27 Dec 2012 09:57:14 -0800
Message-Id: <cover.1356630970.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.8.0.2
Subject: [POKY CONSOLIDATED PULL 0/4] Distro Specific Updates
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
X-List-Received-Date: Thu, 27 Dec 2012 17:57:15 -0000

Richard,

Here is the split of the package regex along with some updates
to the distro files.

Thanks
	Sau!

The following changes since commit 4a36a32567ecfbc7ce7b967803e6e23314953ef5:

  libpng: fix packaging (2012-12-26 11:34:09 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib sgw/poky
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgw/poky

Constantin Musca (2):
  gthumb: finalize removal
  mutter: finalize mutter removal

Emilia Ciobanu (1):
  Added regex file in meta-yocto/conf/distro/include.

Otavio Salvador (1):
  distro/poky: Add "Debian GNU/Linux 7.0 (wheezy)" as know distribution

 meta-yocto/conf/distro/include/maintainers.inc     |   2 -
 meta-yocto/conf/distro/include/package_regex.inc   | 291 +++++++++++++++++++++
 .../distro/include/poky-floating-revisions.inc     |   1 -
 meta-yocto/conf/distro/include/recipe_color.inc    |   2 -
 .../conf/distro/include/upstream_tracking.inc      |   6 -
 meta-yocto/conf/distro/poky.conf                   |   1 +
 6 files changed, 292 insertions(+), 11 deletions(-)
 create mode 100644 meta-yocto/conf/distro/include/package_regex.inc

-- 
1.8.0.2


