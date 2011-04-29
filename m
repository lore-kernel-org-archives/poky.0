Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 61FB34C80578
	for <poky@yoctoproject.org>; Fri, 29 Apr 2011 05:02:15 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 29 Apr 2011 03:02:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,286,1301900400"; d="scan'208";a="916075049"
Received: from unknown (HELO helios) ([10.255.12.245])
	by fmsmga001.fm.intel.com with SMTP; 29 Apr 2011 03:02:13 -0700
Received: by helios (sSMTP sendmail emulation); Fri, 29 Apr 2011 11:02:11 +0100
Message-Id: <cover.1304069968.git.paul.eggleton@linux.intel.com>
Old-Date: Fri, 29 Apr 2011 10:39:28 +0100
Date: Fri, 29 Apr 2011 11:02:11 +0100
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 0/1] netbase: fix check for nfsroot in if-pre-up.d script
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
X-List-Received-Date: Fri, 29 Apr 2011 10:02:15 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

Adding "auto eth0" to our default IP configuration caused failure to boot
NFS root systems [1]; netbase's if-pre-up.d/nfsroot script was supposed to stop
this but failed to do so due to looking for /sbin/ip when we actually now
install /bin/ip. This patch checks for either installed executable.

[1] http://bugzilla.pokylinux.org/show_bug.cgi?id=1006

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: paule/nfsroot-ifup
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/nfsroot-ifup

Thanks,
    Paul Eggleton <paul.eggleton@linux.intel.com>
---


Paul Eggleton (1):
  netbase: fix check for nfsroot in if-pre-up.d script

 meta/recipes-core/netbase/netbase-4.45/nfsroot |    2 +-
 meta/recipes-core/netbase/netbase_4.45.bb      |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)


