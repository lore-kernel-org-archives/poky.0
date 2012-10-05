Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E2AEE00293
	for <poky@yoctoproject.org>; Fri,  5 Oct 2012 16:31:40 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 05 Oct 2012 16:31:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,541,1344236400"; d="scan'208";a="221341967"
Received: from fear.jf.intel.com (HELO rage.local) ([10.7.201.160])
	by orsmga002.jf.intel.com with ESMTP; 05 Oct 2012 16:31:39 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Poky <poky@yoctoproject.org>,
	openembedded-core@lists.openembedded.org
Date: Fri,  5 Oct 2012 16:31:35 -0700
Message-Id: <cover.1349479383.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
Subject: [PATCH 0/2] Update poky-tiny to linux-yocto-tiny_3.4 for qemux86
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
X-List-Received-Date: Fri, 05 Oct 2012 23:31:40 -0000

As these patches are dependent on eachother, sending to both poky and oe-core
lists. Flame away.

The refresh to 3.4 for tiny is coming in rather late as I was focused on other
BSPs. However, qemux86 has been at 3.4 for poky and linux-yocto for a while now.
This update effectively uses a subset of that tested config for the images built
with poky-tiny. This only impacts qemux86 on poky-tiny.  That configuration
builds and boots to the serial console.

NOTE: This kernel recipe is pending a minor meta-data change to the
linux-yocto_3.4 git repository which will require a SRCREV_meta update. That
update can be made to only the linux-yocto-tiny_3.4 recipe in order to minimize
risk to the rest of the system. However, please do not commit this until the
meta-data patch goes in. At that point I will update the branch with the new
SRCREV and notify the list in response to this email.

The following changes since commit 415be864abdbd6f86e554aba684f5d7a9499e2e7:

  sstate: Add extra entries to the sstate duplicate files whitelist (2012-10-05 16:18:26 +0100)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib dvhart/1.3/tiny
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=dvhart/1.3/tiny

Darren Hart (2):
  linux-yocto-tiny: Add tiny recipe for the 3.4 linux-yocto kernel
  poky-tiny: Update the default kernel to linux-yocto-tiny_3.4

 meta-yocto/conf/distro/poky-tiny.conf             |    2 +-
 meta/recipes-kernel/linux/linux-yocto-tiny_3.4.bb |   26 +++++++++++++++++++++
 2 files changed, 27 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-kernel/linux/linux-yocto-tiny_3.4.bb

-- 
1.7.5.4


