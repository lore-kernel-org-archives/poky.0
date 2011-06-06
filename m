Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4154C4C800B0
	for <poky@yoctoproject.org>; Mon,  6 Jun 2011 11:21:13 -0500 (CDT)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p56GKaTV021688;
	Mon, 6 Jun 2011 09:20:37 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Mon,  6 Jun 2011 12:19:22 -0400
Message-Id: <cover.1307377052.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/1] linux-yocto/meta-yocto: make e1000e structure common [commit: bec3f1e8c]
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
X-List-Received-Date: Mon, 06 Jun 2011 16:21:13 -0000

Richard/Saul,

This is the meta-yocto equivalent updates to the oe-core
change for the same fix. If you know of a better way than
getting all these pull requests twice .. let me know.

cc: Tom Zanussi <tom.zanussi@intel.com>

The following changes since commit bc69b356b4476d8eb2bbc169498b6b86423251e3:
  Bruce Ashfield (1):
        linux-yocto: make e1000e structure common [commit: bec3f1e8c]

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib zedd/e1000-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/e1000-yocto

Bruce Ashfield (1):
  linux-yocto/meta-yocto: make e1000e structure common [commit:
    bec3f1e8c]

 .../recipes-kernel/linux/linux-yocto_git.bbappend  |   10 +++++-----
 1 files changed, 5 insertions(+), 5 deletions(-)


