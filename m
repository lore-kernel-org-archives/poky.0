Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 672E54C8009D
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 18:12:05 -0500 (CDT)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id B26EA304EF
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 19:11:59 -0400 (EDT)
Message-Id: <cover.1300230459.git.scott.a.garman@intel.com>
Old-Date: Tue, 15 Mar 2011 16:07:39 -0700
Date: Tue, 15 Mar 2011 16:11:53 -0700
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: B26EA304EF.41773
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 0/7] Set ssh server using IMAGE_FEATURES, v3
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
X-List-Received-Date: Tue, 15 Mar 2011 23:12:05 -0000

From: Scott Garman <scott.a.garman@intel.com>

Hi Saul,

It turns out the approach I was previously using to try to change
the ssh server using IMAGE_FEATURES had a fundamental flaw. I
confirmed the problem with Richard, and now take a slightly different
approach where separate tasks are created to use dropbear vs. openssh
as an SSH server. This means we can't set the SSH server explicitly
by overriding a variable in local.conf, but it does improve the
infrastructure to something more sensible and document-able.

This pull request will fix [YOCTO #378].

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgarman/ssh-switch2
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/ssh-switch2

Thanks,
    Scott Garman <scott.a.garman@intel.com>
---


Scott Garman (7):
  task-base, task-poky-basic, task-poky: Remove hard-coded references
    to dropbear
  task-poky-ssh-dropbear: new task recipe for dropbear ssh
  task-poky-ssh-openssh: new task recipe for openssh ssh
  poky-image.bbclass: add new IMAGE_FEATURES for ssh servers
  poky-image.bbclass: add ssh-server-dropbear to SATO_IMAGE_FEATURES
  poky-image-lsb: add ssh-server-openssh to IMAGE_FEATURES
  poky-image-basic: add ssh-server-openssh to IMAGE_FEATURES

 meta/classes/poky-image.bbclass                    |   13 +++++++++++--
 meta/recipes-core/tasks/task-base.bb               |    8 +-------
 meta/recipes-core/tasks/task-poky-ssh-dropbear.bb  |   17 +++++++++++++++++
 meta/recipes-core/tasks/task-poky-ssh-openssh.bb   |   17 +++++++++++++++++
 meta/recipes-extended/images/poky-image-basic.bb   |    2 +-
 meta/recipes-extended/images/poky-image-lsb-dev.bb |    2 +-
 meta/recipes-extended/images/poky-image-lsb-sdk.bb |    2 +-
 meta/recipes-extended/images/poky-image-lsb.bb     |    2 +-
 meta/recipes-extended/tasks/task-poky-basic.bb     |    3 +--
 meta/recipes-sato/tasks/task-poky.bb               |    3 +--
 10 files changed, 52 insertions(+), 17 deletions(-)
 create mode 100644 meta/recipes-core/tasks/task-poky-ssh-dropbear.bb
 create mode 100644 meta/recipes-core/tasks/task-poky-ssh-openssh.bb


