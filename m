Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 84DE24C800AF
	for <poky@yoctoproject.org>; Wed, 25 May 2011 12:33:50 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 25 May 2011 10:33:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,268,1304319600"; 
   d="scan'208";a="1575821"
Received: from unknown (HELO localhost) ([10.255.12.181])
	by azsmga001.ch.intel.com with ESMTP; 25 May 2011 10:33:49 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 25 May 2011 10:33:04 -0700
Message-Id: <cover.1306344536.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.1
Cc: Darren Hart <dvhart@linux.intel.com>,
	Jeff Osier-mixon <jeffrey.osier-mixon@intel.com>
Subject: [PATCH 0/1] README.hardware: update installation instructions for beagleboard
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
X-List-Received-Date: Wed, 25 May 2011 17:33:50 -0000

Without having the hardware to test, these instructions should resolve the boot
issues Yi experienced on the Beagleboard C4. These were arrived at through
discussions on the freenode #beagle channel. Thanks to Ceriand and woglinde.

A physical test by any one of those Cc'd following the updated instructions
would be appreciated.

The following changes since commit 72f06800bcf6f3d188b99bd0c359f5ef74879621:

  u-boot: remove old SRCREV from poky-default-revisions.inc (2011-05-20 09:22:18 -0700)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib.git dvhart/bernard/docs
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/bernard/docs

Darren Hart (1):
  README.hardware: update installation instructions for beagleboard

 README.hardware |   24 ++++++++++++++----------
 1 files changed, 14 insertions(+), 10 deletions(-)


