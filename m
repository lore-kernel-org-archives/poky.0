Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 781B24C80050
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 18:10:32 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 21 Dec 2010 16:10:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,210,1291622400"; d="scan'208";a="639044665"
Received: from unknown (HELO localhost) ([10.255.14.74])
	by fmsmga002.fm.intel.com with ESMTP; 21 Dec 2010 16:10:32 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 21 Dec 2010 16:10:25 -0800
Message-Id: <cover.1292976450.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.1
Subject: [PATCH 0/1] send-pull-request: allow users to select git-send-email or sendmail
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
X-List-Received-Date: Wed, 22 Dec 2010 00:10:32 -0000

This message was sent using git-send-email from the modified script.
See patch 1/1 for details.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dvhart/git-pull
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/git-pull

Thanks,
    Darren Hart <dvhart@linux.intel.com>
---


Darren Hart (1):
  send-pull-request: allow users to select git-send-email or sendmail

 scripts/send-pull-request |   69 ++++++++++++++++++++++++++++++++------------
 1 files changed, 50 insertions(+), 19 deletions(-)


