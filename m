Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id EC8A14C80AB7;
	Wed, 30 Mar 2011 15:53:17 -0500 (CDT)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2UKqiab007446;
	Wed, 30 Mar 2011 13:52:44 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Wed, 30 Mar 2011 16:53:16 -0400
Message-Id: <cover.1301518292.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: [PATCH 0/1] linux-yocto/crownbay: update configuration
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
X-List-Received-Date: Wed, 30 Mar 2011 20:53:18 -0000

The crownbay has been updated for 2.6.37, the BSP branch
already contans the changes, and this is the update of meta
to the new config values:

  crownbay: update eg20t config
  crownbay: set cpu type to MATOM

Tom: the crownbay layer can have its SRCREVs update now

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: zedd/crownbay
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/crownbay

Thanks,
    Bruce Ashfield <bruce.ashfield@windriver.com>
---


Bruce Ashfield (1):
  linux-yocto/crownbay: update configuration

 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)


