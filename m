Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 609F3E00307
	for <poky@yoctoproject.org>; Mon,  7 Nov 2011 09:40:00 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 07 Nov 2011 09:40:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="71910999"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.12.14])
	by orsmga002.jf.intel.com with ESMTP; 07 Nov 2011 09:39:59 -0800
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon,  7 Nov 2011 09:39:57 -0800
Message-Id: <cover.1320687487.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
Subject: [PATCH 0/1] Self Hosted Task and Image
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
X-List-Received-Date: Mon, 07 Nov 2011 17:40:00 -0000

Richard,

This is the first pass at creating the Build Appliance Image,
this will boot to a console image that can start bitbake and
build psuedo.

Sau!

The following changes since commit 28940eb97d835b45ecbf832f25e94fc1574f25a1:

  lighttpd 1.4.29: rename index.html to avoid clashes with DL_DIR (2011-11-07 14:05:42 +0000)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib sgw/self-hosted
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgw/self-hosted

Saul Wold (1):
  Self Hosted Image: Added Task and Images

 .../recipes-core/images/self-hosted-image.bb       |   16 ++
 meta-yocto/recipes-core/tasks/task-self-hosted.bb  |  158 ++++++++++++++++++++
 2 files changed, 174 insertions(+), 0 deletions(-)
 create mode 100644 meta-yocto/recipes-core/images/self-hosted-image.bb
 create mode 100644 meta-yocto/recipes-core/tasks/task-self-hosted.bb

-- 
1.7.6.4


