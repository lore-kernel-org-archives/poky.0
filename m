Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id D06184C8024E;
	Wed,  4 May 2011 23:52:18 -0500 (CDT)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p454q5rI013993;
	Wed, 4 May 2011 21:52:06 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Thu,  5 May 2011 00:53:21 -0400
Message-Id: <cover.1304570401.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org,
	poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/3] linux-yocto: consolidated pull request
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
X-List-Received-Date: Thu, 05 May 2011 04:52:19 -0000

Richard/Saul,

I've been running with these changes since before ELC, so they've had
some good soak time. The first two changes lay the ground for for some
1.1 functionality and are used by recipes in the meta-kernel-dev layer.
The changes are transparent to existing recipes.

In particular they are related to auto creating meta data for kernel
repository builds. They are enough for basic korg/defconfig builds and
limited other repository building. More changes will complete this work
shortly.

The last patch just updates the SRCREVs to pickup Khem's backported
perf tool / gcc 4.6.0 patch.

There are about 8 more pending patches that deal with some recipe
renames, cleanup and more 1.1 functionality but I wanted to get
this first set of 3 out before rebasing the rest.

Sorry about the big cross post, but these changes span quite a few
different interest groups.

cc: Khem Raj <raj.khem@gmail.com>

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: zedd/kernel
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel

Thanks,
    Bruce Ashfield <bruce.ashfield@windriver.com>
---


Bruce Ashfield (3):
  linux-yocto: apply meta data to external repos
  linux-yocto: safely process unbranched repositories
  linux-yocto: update SRCREVs

 meta/classes/kernel-yocto.bbclass                  |   34 +++++++++++++++-----
 .../kern-tools/kern-tools-native_git.bb            |    2 +-
 meta/recipes-kernel/linux/linux-yocto_git.bb       |   24 +++++++-------
 3 files changed, 39 insertions(+), 21 deletions(-)


