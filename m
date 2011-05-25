Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 236014C8043A
	for <poky@yoctoproject.org>; Wed, 25 May 2011 16:49:40 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 25 May 2011 14:49:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,269,1304319600"; 
   d="scan'208";a="8794005"
Received: from unknown (HELO localhost) ([10.255.12.181])
	by fmsmga001.fm.intel.com with ESMTP; 25 May 2011 14:49:38 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 25 May 2011 14:49:38 -0700
Message-Id: <cover.1306359969.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.1
Cc: Darren Hart <dvhart@linux.intel.com>,
	Jeff Osier-mixon <jeffrey.osier-mixon@intel.com>
Subject: [PATCH V2 0/1] README.hardware: update installation instructions for beagleboard
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
X-List-Received-Date: Wed, 25 May 2011 21:49:40 -0000

Thanks to Bruce for testing, Koen for noting changes in the uboot commands.
Jefro, please review and provide an Ack or suggestions for change.

The following changes since commit 1607d7b6809eb3f0aa8d09713a4e467a1f4585a2:

  IMAGE_ROOTFS_SIZE: Cleanup machine conf files (2011-05-25 14:07:37 -0700)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib dvhart/docs
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/docs

Darren Hart (1):
  README.hardware: update installation instructions for beagleboard

 README.hardware |   44 ++++++++++++++++++++++++++++----------------
 1 files changed, 28 insertions(+), 16 deletions(-)


