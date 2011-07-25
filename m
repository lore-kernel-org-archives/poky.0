Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id F17134C80332
	for <poky@yoctoproject.org>; Mon, 25 Jul 2011 13:06:25 -0500 (CDT)
Received: from yow-bashfiel-l1.corp.ad.wrs.com
	(dhcp-146-223.ottawa.windriver.com [128.224.146.223])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p6PI5pge015712;
	Mon, 25 Jul 2011 11:05:52 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Mon, 25 Jul 2011 14:05:48 -0400
Message-Id: <cover.1311616990.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.4.1
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/1] poky.conf: explicitly referenced preferred linux-yocto version
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
X-List-Received-Date: Mon, 25 Jul 2011 18:06:26 -0000

Here's a similar change to the meta-yocto boards, as was done
to the qemu machines in oe-core. Since referencing yocto makes
more sense in this layer, I made the change in the poky.conf
distro default file.

As the staging of linux-yocto-3.0 showed, we should explicitly
state our preferred version of linux-yocto. This prevents unvalidated
changes from being forced into machines. Layers and machines are free
to override this as they are updated.

cc: Tom Zanussi <tom.zanussi@intel.com>

The following changes since commit dfec64a66e66ad4ec94a06ad900307fb0d932b98:

  machine/qemu: set preferred linux-yocto kernel version (2011-07-25 10:56:46 -0400)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (1):
  poky.conf: explicitly referenced preferred linux-yocto version

 meta-yocto/conf/distro/poky.conf |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

-- 
1.7.4.1


