Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5673C4C800A7
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 19:41:09 -0600 (CST)
Received: from localhost (unknown [67.232.160.146])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id A0582304F3
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 20:41:04 -0500 (EST)
Message-Id: <cover.1299807513.git.scott.a.garman@intel.com>
Old-Date: Thu, 10 Mar 2011 17:38:33 -0800
Date: Thu, 10 Mar 2011 17:41:01 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: A0582304F3.0C5DA
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 0/7] Set ssh server using IMAGE_FEATURES, v2
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
X-List-Received-Date: Fri, 11 Mar 2011 01:41:09 -0000

From: Scott Garman <scott.a.garman@intel.com>

Hi Saul,

Based on feedback from you and Joshua, here is an updated pull request
for refactoring the way an ssh server can be specified in images. It
fixes [YOCTO #378].

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgarman/ssh-switch
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/ssh-switch

Thanks,
    Scott Garman <scott.a.garman@intel.com>
---


Scott Garman (7):
  task-base, task-poky-basic, task-poky: Remove hard-coded references
    to dropbear
  openssh: allow the openssh meta package to be empty
  task-poky-ssh.bb: new task for ssh services
  poky-image.bbclass: add ssh-server as an IMAGE_FEATURES option
  poky-image.bbclass: add ssh-server to SATO_IMAGE_FEATURES
  poky-image-lsb: add ssh-server to IMAGE_FEATURES
  poky-image-basic: add ssh-server to IMAGE_FEATURES

 meta/classes/poky-image.bbclass                    |    8 +++++-
 meta/recipes-connectivity/openssh/openssh_5.6p1.bb |    4 ++-
 meta/recipes-core/tasks/task-base.bb               |    8 +------
 meta/recipes-core/tasks/task-poky-ssh.bb           |   22 ++++++++++++++++++++
 meta/recipes-extended/images/poky-image-basic.bb   |    4 ++-
 meta/recipes-extended/images/poky-image-lsb-dev.bb |    4 ++-
 meta/recipes-extended/images/poky-image-lsb-sdk.bb |    4 ++-
 meta/recipes-extended/images/poky-image-lsb.bb     |    4 ++-
 meta/recipes-extended/tasks/task-poky-basic.bb     |    4 +--
 meta/recipes-sato/tasks/task-poky.bb               |    3 +-
 10 files changed, 46 insertions(+), 19 deletions(-)
 create mode 100644 meta/recipes-core/tasks/task-poky-ssh.bb


