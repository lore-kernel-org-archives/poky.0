Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id B38224C80188
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 14:52:15 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 27 Apr 2011 12:52:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,275,1301900400"; d="scan'208";a="684899368"
Received: from unknown (HELO localhost) ([10.255.13.11])
	by fmsmga002.fm.intel.com with ESMTP; 27 Apr 2011 12:52:15 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 27 Apr 2011 12:51:58 -0700
Message-Id: <1303933921-10310-1-git-send-email-dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.1
Subject: [PATCH 0/3] n450: add 2.6.37 kernel recipe and SMP support
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
X-List-Received-Date: Wed, 27 Apr 2011 19:52:15 -0000

The atom-pc BSP which the n450 is based on was originally intended for single
CPU. The n450 is a single-core hyperthreaded CPU, so CONFIG_SMP and
CONFIG_SCHED_SMT are required to access the second hardware thread. These
patches add the newly created cfg/smp.scc config fragment to the recipe.

The current n450 BSP uses linux-yocto-stable (2.6.34), which was an oversight.
These patches add support for the linux-yocto (2.6.37) recipe and separately
enable that as the default. I have tested the linux-yocto kernel and confirmed
it boots, has functional networking, and can suspend and resume.

After some discussion with Tom, it seems that there is adequate testing planned
for the point release to allow for moving to the linux-yocto recipe. Note that
fixing bug 1010 makes significant changes to whichever kernel we choose
to use. Before I commit to meta-intel however, I would like the input of the QA
team.

How much testing was planned for the n450 originally? How much additional
testing would be required if we make the new kernel the default?

Thanks,

Darren Hart


