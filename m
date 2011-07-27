Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 046D44C801DA
	for <poky@yoctoproject.org>; Tue, 26 Jul 2011 22:58:19 -0500 (CDT)
Received: from yow-bashfiel-l1.corp.ad.wrs.com
	(dhcp-146-223.ottawa.windriver.com [128.224.146.223])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p6R3wFMQ016749;
	Tue, 26 Jul 2011 20:58:16 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Tue, 26 Jul 2011 23:58:12 -0400
Message-Id: <cover.1311738987.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.4.1
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/1] meta-yocto: create linux-yocto-3.0 infastructure
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
X-List-Received-Date: Wed, 27 Jul 2011 03:58:20 -0000

Richard/Saul,

The patch pretty much says it all:

[
  linux-yocto/meta-yocto: create linux-yocto 3.0 bbappend                                                                          
                                                                                                                                                      
  Creating a 3.0 bbappend to enable work on the hardware yocto targets.                                                                                 
  The SRCREV updates in this file are accurate, but compatibility                                                                                       
  has been commented out until support can be verified.  
]


The following changes since commit 35a96b8d01511443b0743cca3543a4cdc007cff2:

  linux-yocto: update SRCREVs (2011-07-26 23:43:03 -0400)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib zedd/yocto-kern-update
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/yocto-kern-update

Bruce Ashfield (1):
  linux-yocto/meta-yocto: create linux-yocto 3.0 bbappend

 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   15 +++++++++++++++
 1 files changed, 15 insertions(+), 0 deletions(-)
 create mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend

-- 
1.7.4.1


