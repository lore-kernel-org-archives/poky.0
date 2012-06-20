Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3770DE0070B
	for <poky@yoctoproject.org>; Wed, 20 Jun 2012 16:10:40 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 6D92230411
	for <poky@yoctoproject.org>; Wed, 20 Jun 2012 19:10:34 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Wed, 20 Jun 2012 16:10:37 -0700
Message-Id: <cover.1340233660.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 6D92230411.F26EB
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 0/6] denzil pull request
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
X-List-Received-Date: Wed, 20 Jun 2012 23:10:40 -0000

Hello,

This is a pull request for the poky denzil branch, based on
a set of commits I've been testing from my sgarman/denzil-next branch.
At the time I'm composing this, my previous pull request hasn't been
merged yet, so I created this pull against my previous branch,
sgarman/denzil-next-pull2.

Once this branch gets merged, we will generate the first denzil release
candidate, which will undergo a full QA pass.

These commits have undergone the following testing on the autobuilder:

nightly:
http://autobuilder.yoctoproject.org:8010/builders/nightly/builds/521

nightly-multilib:
http://autobuilder.yoctoproject.org:8010/builders/nightly-multilib/builds/117

nightly-non-gpl3:
http://autobuilder.yoctoproject.org:8010/builders/nightly-non-gpl3/builds/118

nightly-tiny:
http://autobuilder.yoctoproject.org:8010/builders/nightly-tiny/builds/100

nightly-meta-intel (still finishing):
http://autobuilder.yoctoproject.org:8010/builders/nightly-meta-intel/builds/107

Scott

The following changes since commit 5b5895175b9fcb4da22cb84751e0f40216f29688:

  eglibc: added ac_cv_path_ to CACHED_CONFIGUREVARS (2012-06-15 09:48:09 -0700)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib sgarman/denzil-next-testing
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgarman/denzil-next-pull3

Anders Darander (1):
  qt4-embedded: fix QT_ARCH usage in QT_CONFIG_FLAGS

Bruce Ashfield (5):
  linux-yocto/3.2: configuration and pch merge
  linux-yocto: intel BSP config changes
  linux-yocto: policy cleanups
  linux-yocto/3.2: update to v3.2.18
  linux-yocto/3.0: update to v3.0.32

 meta/recipes-kernel/linux/linux-yocto-rt_3.0.bb   |    6 +++---
 meta/recipes-kernel/linux/linux-yocto-rt_3.2.bb   |    8 ++++----
 meta/recipes-kernel/linux/linux-yocto-tiny_3.2.bb |    6 +++---
 meta/recipes-kernel/linux/linux-yocto_3.0.bb      |   16 ++++++++--------
 meta/recipes-kernel/linux/linux-yocto_3.2.bb      |   18 +++++++++---------
 meta/recipes-qt/qt4/qt4-embedded.inc              |    2 +-
 6 files changed, 28 insertions(+), 28 deletions(-)

-- 
1.7.9.5


