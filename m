Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 24AB44C811FE;
	Fri, 21 Jan 2011 12:20:48 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0LIKgLo026060;
	Fri, 21 Jan 2011 10:20:43 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Fri, 21 Jan 2011 13:23:20 -0500
Message-Id: <cover.1295634098.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: poky@yoctoproject.org, yocto@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/2] linux-yocto/stable: beagle and crownbay updates
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
X-List-Received-Date: Fri, 21 Jan 2011 18:20:53 -0000

Richard/Saul,

Just a couple of SRCREV updates to bring in new kernel configs
for the crownbay and some functionality (cherry picked from
mainline) for the Beagle.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: zedd/kernel
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel

Thanks,
    Bruce Ashfield <bruce.ashfield@windriver.com>
---


Bruce Ashfield (2):
  linux-yocto/stable: update beagleboard SRCREV
  linux-yocto/stable: update crownbay kernel configuration

 .../conf/distro/include/poky-default-revisions.inc |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)


