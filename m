Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 87CCD4C80188
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 11:49:07 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 27 Apr 2011 09:49:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,275,1301900400"; d="scan'208";a="739238445"
Received: from unknown (HELO helios) ([10.255.13.83])
	by orsmga001.jf.intel.com with SMTP; 27 Apr 2011 09:49:05 -0700
Received: by helios (sSMTP sendmail emulation); Wed, 27 Apr 2011 17:49:08 +0100
Message-Id: <cover.1303922644.git.paul.eggleton@linux.intel.com>
Old-Date: Wed, 27 Apr 2011 17:44:04 +0100
Date: Wed, 27 Apr 2011 17:49:08 +0100
To: openembedded-core@lists.openembedded.org,poky@yoctoproject.org
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 0/1] initscripts: remove -i from halt/reboot arguments and allow override
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
X-List-Received-Date: Wed, 27 Apr 2011 16:49:07 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

Removes -i from halt/reboot arguments to fix shutdown/reboot with NFS root,
and allows halt/reboot arguments to be overridden using a new HALTARGS
variable. Refer to bug [1] and discussion [2].

[1] http://bugzilla.pokylinux.org/show_bug.cgi?id=997
[2] https://lists.yoctoproject.org/pipermail/poky/2011-April/005395.html

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: paule/haltargs
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/haltargs

Thanks,
    Paul Eggleton <paul.eggleton@linux.intel.com>
---


Paul Eggleton (1):
  initscripts: remove -i from halt/reboot arguments and allow override

 meta/recipes-core/initscripts/initscripts-1.0/halt |    2 +-
 .../initscripts/initscripts-1.0/reboot             |    2 +-
 meta/recipes-core/initscripts/initscripts_1.0.bb   |    9 ++++++++-
 3 files changed, 10 insertions(+), 3 deletions(-)


