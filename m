Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3217E002AB
	for <poky@yoctoproject.org>; Fri, 18 Jan 2013 08:55:20 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 18 Jan 2013 08:55:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,493,1355126400"; d="scan'208";a="192689642"
Received: from unknown (HELO swold-linux.bigsur.com) ([10.255.15.56])
	by AZSMGA002.ch.intel.com with ESMTP; 18 Jan 2013 08:55:10 -0800
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 18 Jan 2013 08:55:10 -0800
Message-Id: <cover.1358527900.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.8.0.2
Subject: [CONSOLIDATED PULL (for Poky) 0/5] Distro File Updates
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
X-List-Received-Date: Fri, 18 Jan 2013 16:55:20 -0000

Richard,

Can you please pull these distro file updates in to
the poky master.

Thanks
	Sau!

The following changes since commit 349e5bea53b02cabf836b8943541a002ce9ba682:

  guilt: add git 1.8.x support (2013-01-18 13:28:10 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib sgw/stage
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgw/stage

Bogdan Marinescu (1):
  maintainers.inc: updated package owners

Constantin Musca (1):
  gtk-directfb: rename to directfb

Cristiana Voicu (1):
  Added DISTRO var to poky-bleeding conf file

Emilia Ciobanu (1):
  Modified meta-yocto/conf/distro/include/package_regex.inc

Tom Zanussi (1):
  lttng: update references to legacy lttng recipes

 meta-yocto/conf/distro/include/distro_alias.inc  |  5 +----
 meta-yocto/conf/distro/include/maintainers.inc   |  9 +++------
 meta-yocto/conf/distro/include/package_regex.inc | 22 +++++++++++-----------
 meta-yocto/conf/distro/include/recipe_color.inc  |  5 +++--
 meta-yocto/conf/distro/poky-bleeding.conf        |  2 ++
 meta-yocto/conf/distro/poky-tiny.conf            |  2 +-
 meta-yocto/conf/local.conf.sample.extended       |  2 +-
 7 files changed, 22 insertions(+), 25 deletions(-)

-- 
1.8.0.2


