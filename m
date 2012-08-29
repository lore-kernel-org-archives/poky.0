Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73B18E00717
	for <poky@yoctoproject.org>; Tue, 28 Aug 2012 20:01:57 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 28 Aug 2012 20:01:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,330,1344236400"; d="scan'208";a="215095326"
Received: from unknown (HELO localhost) ([10.255.12.232])
	by fmsmga002.fm.intel.com with ESMTP; 28 Aug 2012 20:01:34 -0700
From: tom.zanussi@intel.com
To: poky@yoctoproject.org, richard.purdie@linuxfoundation.org,
	sgw@linux.intel.com
Date: Tue, 28 Aug 2012 22:01:32 -0500
Message-Id: <cover.1346208965.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
Subject: [PATCH 0/2] yocto-bsp updates to reflect tooling changes
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
X-List-Received-Date: Wed, 29 Aug 2012 03:01:57 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Since the original changeset was posted and tested, changes to the
kernel tools were made and require some updates to the yocto-bsp
tools, which are contained in these patches.

The following changes since commit b4c5725af4cd85d5644f0373e2674e903c4eab2b:

  yocto-bsp: add missing xserver-xf86-config .bbappend for qemu (2012-08-25 14:47:07 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bsp-tool-change-updates
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-bsp-tool-change-updates

Tom Zanussi (2):
  yocto-bsp: remove obsolete references
  yocto-bsp: use KBRANCH_DEFAULT in 'newbranch' cases

 ...oice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" | 3 ++-
 ...oice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 3 ++-
 ...nel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" | 3 ++-
 ...nel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" | 3 ++-
 .../i386/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc    | 1 -
 .../arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc | 1 -
 .../target/arch/i386/recipes-kernel/linux/files/{{=machine}}.scc   | 7 -------
 ...oice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" | 3 ++-
 ...oice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 3 ++-
 ...nel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" | 3 ++-
 ...nel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" | 3 ++-
 ...oice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" | 3 ++-
 ...oice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 3 ++-
 ...nel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" | 3 ++-
 ...nel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" | 3 ++-
 ...oice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" | 3 ++-
 ...oice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 3 ++-
 ...nel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" | 3 ++-
 ...nel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" | 3 ++-
 .../target/arch/qemu/recipes-kernel/linux/files/{{=machine}}.scc   | 2 --
 ...oice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" | 3 ++-
 ...oice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 3 ++-
 ...nel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" | 3 ++-
 ...nel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" | 3 ++-
 .../x86_64/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc  | 1 -
 .../x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc    | 1 -
 .../target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}.scc | 5 -----
 ...oice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" | 3 ++-
 ...oice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 3 ++-
 ...nel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" | 3 ++-
 ...nel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" | 3 ++-
 31 files changed, 48 insertions(+), 42 deletions(-)

-- 
1.7.11.4


