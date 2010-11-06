Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id DA4094C803D6
	for <poky@yoctoproject.org>; Sun,  7 Nov 2010 08:10:20 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 07 Nov 2010 06:10:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,310,1286175600"; d="scan'208";a="571103732"
Received: from unknown (HELO localhost) ([10.255.12.208])
	by orsmga002.jf.intel.com with ESMTP; 07 Nov 2010 06:10:17 -0800
Message-Id: <cover.1289057313.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Date: Sat, 6 Nov 2010 11:28:33 -0400
To: poky@yoctoproject.org
Cc: Bruce Ashfield <bruce.ashfield@windriver.com>
Subject: [PATCH 0/3] git-pull: new pull request generation and sending scripts
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
X-List-Received-Date: Sun, 07 Nov 2010 14:10:21 -0000

The following patches replace the existing create-pull-request script and create
a new send-pull-request. See 2/3 for details on the motivation and functionality
of the new create-pull-request script.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dvhart/git-pull
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/git-pull

Thanks,
    Darren Hart <dvhart@linux.intel.com>
---


Darren Hart (3):
  git pull: remove the existing create_pull_request script
  git-pull: add the new create-pull-request script
  git-pull: add send-pull-request script

 scripts/create-pull-request |  165 +++++++++++++++++++++++++++----------------
 scripts/send-pull-request   |  133 ++++++++++++++++++++++++++++++++++
 2 files changed, 237 insertions(+), 61 deletions(-)
 create mode 100755 scripts/send-pull-request


