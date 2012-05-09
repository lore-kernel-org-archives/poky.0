Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1C1BE013EC
	for <poky@yoctoproject.org>; Tue,  8 May 2012 20:42:50 -0700 (PDT)
Received: from localhost.localdomain (yow-bashfiel-d2.wrs.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q493ggew021932;
	Tue, 8 May 2012 20:42:42 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Tue,  8 May 2012 23:48:43 -0400
Message-Id: <cover.1336535085.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: openembedded-core@lists.openembedded.org, dvhart@linux.intel.com,
	poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/1] kern-tools: fix meta-intel builds
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
X-List-Received-Date: Wed, 09 May 2012 03:42:50 -0000

Richard/Saul,

This fixes a problem reported by Tom and Darren when the latest tools
updates were used against meta intel. Some optional code that supported
merge meta and BSP branches wasn't handling the case where a BSP layer
might not be tracking the HEAD of the meta branch, and hence blowing up
its test to see if the meta branch needs to be thawed. 

The fix was simple. Adjust the threshold for declaring the meta content
global.

cc: Tom Zanussi <tom.zanussi@intel.com>
cc: Darren Hart <dvhart@linux.intel.com>

Cheers,

Bruce

The following changes since commit 8afd5747802c4eb0e8296e440bd7366393595f8e:
  Bruce Ashfield (1):
        kernel-yocto: export GUILT_BASE

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib zedd/kern-tools
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kern-tools

Bruce Ashfield (1):
  kern-tools: checkpoint restoration for reset branches

 .../kern-tools/kern-tools-native_git.bb            |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)


