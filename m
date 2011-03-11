Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0B8944C800A3
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 18:59:42 -0600 (CST)
Received: from localhost (unknown [209.216.169.162])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 3B9D6304F3
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 19:59:34 -0500 (EST)
Message-Id: <cover.1299804498.git.scott.a.garman@intel.com>
Old-Date: Thu, 10 Mar 2011 16:48:18 -0800
Date: Thu, 10 Mar 2011 16:59:30 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 3B9D6304F3.E8BAD
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 0/6] Set ssh server using IMAGE_FEATURES
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
X-List-Received-Date: Fri, 11 Mar 2011 00:59:42 -0000

From: Scott Garman <scott.a.garman@intel.com>

Hi Saul,

This pull request refactors the way an ssh server can be specified,
making it simpler to switch between dropbear and openssh. It fixes
[YOCTO #378]

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgarman/ssh-switch
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/ssh-switch

Thanks,
    Scott Garman <scott.a.garman@intel.com>
---


Scott Garman (6):
  task-base, task-poky-basic, task-poky: Remove hard-coded references
    to dropbear
  openssh: allow the openssh meta package to be empty
  task-poky-ssh.bb: new task for ssh services
  poky-image.bbclass: add ssh-server as an IMAGE_FEATURES option
  poky-image-sato.bb: add ssh-server to IMAGE_FEATURES
  poky-image-lsb: add ssh-server to IMAGE_FEATURES

 meta/classes/poky-image.bbclass                    |    6 ++++-
 meta/recipes-connectivity/openssh/openssh_5.6p1.bb |    4 ++-
 meta/recipes-core/tasks/task-base.bb               |    8 +------
 meta/recipes-core/tasks/task-poky-ssh.bb           |   22 ++++++++++++++++++++
 meta/recipes-extended/images/poky-image-lsb-dev.bb |    2 +-
 meta/recipes-extended/images/poky-image-lsb-sdk.bb |    2 +-
 meta/recipes-extended/images/poky-image-lsb.bb     |    2 +-
 meta/recipes-extended/tasks/task-poky-basic.bb     |    3 +-
 meta/recipes-sato/images/poky-image-sato-dev.bb    |    2 +-
 meta/recipes-sato/images/poky-image-sato-sdk.bb    |    2 +-
 meta/recipes-sato/images/poky-image-sato.bb        |    2 +-
 meta/recipes-sato/tasks/task-poky.bb               |    3 +-
 12 files changed, 39 insertions(+), 19 deletions(-)
 create mode 100644 meta/recipes-core/tasks/task-poky-ssh.bb


