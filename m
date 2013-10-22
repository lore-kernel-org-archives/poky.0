Return-Path: <cristian.iorga@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39E34E0163E
	for <poky@yoctoproject.org>; Tue, 22 Oct 2013 07:19:00 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 22 Oct 2013 07:15:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="422933077"
Received: from sentry.rb.intel.com ([10.237.105.54])
	by orsmga002.jf.intel.com with ESMTP; 22 Oct 2013 07:18:59 -0700
From: Cristian Iorga <cristian.iorga@intel.com>
To: poky@yoctoproject.org
Date: Tue, 22 Oct 2013 17:21:04 +0300
Message-Id: <cover.1382451478.git.cristian.iorga@intel.com>
X-Mailer: git-send-email 1.8.1.2
Subject: [PATCH 0/1] upstream_tracking update
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
X-List-Received-Date: Tue, 22 Oct 2013 14:19:03 -0000

The following changes since commit 505114c13d29799a25379f7ce720d632616d8776:

  wic: add pseudo to the populate-extfs step (2013-10-18 16:03:39 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib ciorga/ups_tracking
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=ciorga/ups_tracking

Cristian Iorga (1):
  upstream_tracking: Update manual check for minicom

 meta-yocto/conf/distro/include/upstream_tracking.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
1.8.1.2


