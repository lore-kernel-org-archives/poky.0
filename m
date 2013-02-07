Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A827DE00740
	for <poky@yoctoproject.org>; Thu,  7 Feb 2013 06:49:31 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 Feb 2013 06:49:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,622,1355126400"; d="scan'208";a="259107124"
Received: from unknown (HELO localhost) ([10.255.12.217])
	by orsmga001.jf.intel.com with ESMTP; 07 Feb 2013 06:49:30 -0800
From: tom.zanussi@linux.intel.com
To: ross.burton@intel.com,
	poky@yoctoproject.org
Date: Thu,  7 Feb 2013 08:49:25 -0600
Message-Id: <cover.1360247978.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 0/1][danny] yocto-bsp: add missing user include updates
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
X-List-Received-Date: Thu, 07 Feb 2013 14:49:31 -0000

From: Tom Zanussi <tom.zanussi@linux.intel.com>

The previous patch, 'yocto-bsp: qualify user files with machine name',
was missing some -user include updates.

Please pull into poky/danny.

The following changes since commit 713e7b9f740bb5fbbaac6acda07a9d52e210407d:

  distro/poky: Add "Debian GNU/Linux 7.0 (wheezy)" as know distribution (2013-02-07 00:55:50 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bsp-user-include-fixes-danny
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-bsp-user-include-fixes-danny

Tom Zanussi (1):
  yocto-bsp: prepend includes in machine.scc files with machine

 .../target/arch/arm/recipes-kernel/linux/files/{{=machine}}.scc       | 4 ++--
 .../target/arch/i386/recipes-kernel/linux/files/{{=machine}}.scc      | 4 ++--
 .../target/arch/mips/recipes-kernel/linux/files/{{=machine}}.scc      | 4 ++--
 .../target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.scc   | 4 ++--
 .../target/arch/qemu/recipes-kernel/linux/files/{{=machine}}.scc      | 4 ++--
 .../target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}.scc    | 4 ++--
 6 files changed, 12 insertions(+), 12 deletions(-)

-- 
1.7.11.4


