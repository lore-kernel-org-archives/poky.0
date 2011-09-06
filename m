Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 093DEE0075D
	for <poky@yoctoproject.org>; Tue,  6 Sep 2011 09:46:49 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 06 Sep 2011 09:46:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,339,1312182000"; d="scan'208";a="49546191"
Received: from unknown (HELO localhost) ([10.255.14.186])
	by fmsmga002.fm.intel.com with ESMTP; 06 Sep 2011 09:46:48 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue,  6 Sep 2011 09:46:42 -0700
Message-Id: <cover.1315327540.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 0/1] meta-yocto: linux-yocto: remove emenlow from bbappend
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
X-List-Received-Date: Tue, 06 Sep 2011 16:46:49 -0000

The following changes since commit dbff56238e083d0110eb13c1f5a07716340fdfe4:

  icu-3.6: fix building with big make -j (2011-09-06 16:37:02 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib dvhart/noemenlow
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/noemenlow

Darren Hart (1):
  linux-yocto: remove emenlow from meta-yocto bbappend

 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

-- 
1.7.6


