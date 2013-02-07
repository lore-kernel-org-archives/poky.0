Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94565E00740
	for <poky@yoctoproject.org>; Thu,  7 Feb 2013 06:48:21 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 07 Feb 2013 06:47:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,622,1355126400"; d="scan'208";a="259106784"
Received: from unknown (HELO localhost) ([10.255.12.217])
	by orsmga001.jf.intel.com with ESMTP; 07 Feb 2013 06:48:20 -0800
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org
Date: Thu,  7 Feb 2013 08:48:18 -0600
Message-Id: <cover.1360247813.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 0/1] yocto-bsp: add missing user include updates
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
X-List-Received-Date: Thu, 07 Feb 2013 14:48:21 -0000

From: Tom Zanussi <tom.zanussi@linux.intel.com>

The previous patch, 'yocto-bsp: qualify user files with machine name',
was missing some -user include updates.

Please pull into poky/master.

The following changes since commit 14fa964bbf8f3e2d798f8fd185c290a739cc8e0f:

  qemuwrapper: Don't use STAGING_BINDIR_CROSS directly (2013-02-07 12:59:15 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bsp-user-include-fixes-master
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-bsp-user-include-fixes-master

Tom Zanussi (1):
  yocto-bsp: prepend includes in machine.scc files with machine

 .../{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"     | 4 ++--
 .../{{=machine}}.scc"                                                 | 4 ++--
 .../{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"     | 4 ++--
 .../{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"     | 4 ++--
 .../{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"     | 4 ++--
 .../{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"     | 4 ++--
 .../{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"     | 4 ++--
 7 files changed, 14 insertions(+), 14 deletions(-)

-- 
1.7.11.4


