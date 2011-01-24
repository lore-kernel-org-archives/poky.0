Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id C64644C8085F;
	Mon, 24 Jan 2011 15:44:05 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0OLi33s016947;
	Mon, 24 Jan 2011 13:44:04 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Mon, 24 Jan 2011 16:46:48 -0500
Message-Id: <cover.1295905272.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/2] linux-yocto: consolidated pull request
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
X-List-Received-Date: Mon, 24 Jan 2011 21:44:06 -0000

Saul/Richard,

I'm batching two changes that I've been testing together.

The first is explained by the patch itself, but basically it
allows us to map multiple BSPs onto a single branch for building.
There's no impact to existing BSPs, but as we go forward it means
that if boards only differ by configuration we can avoid branch
explosion in the kernel repo and pickup their different 
configurations. If at any point we need to break them out from
using a common branch, that is an easy switch to do. I've been
testing this with a test enablement of the atom-pc using the
yocto/standar/base branch .. and it works nicely.

The second is an update to pickup Tom's patches for the emenlow.
Tom will follow up with changes to have the emenlow use the
2.6.37 kernel as well as the 2.6.34 kernel.

These are based on top of the beagleboard commits I sent on
Friday, which I've heard are working their way through the
queue. 

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: zedd/kernel
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel

Thanks,
    Bruce Ashfield <bruce.ashfield@windriver.com>
---


Bruce Ashfield (2):
  linux-yocto: allow multiple BSPs per branch
  linux-yocto: update SRCREVs for emenlow

 meta/classes/kernel-yocto.bbclass                  |    4 ++--
 .../conf/distro/include/poky-default-revisions.inc |    6 +++---
 .../kern-tools/kern-tools-native_git.bb            |    2 +-
 3 files changed, 6 insertions(+), 6 deletions(-)


