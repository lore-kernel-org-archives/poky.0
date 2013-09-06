Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B5D5E003FB
	for <poky@yoctoproject.org>; Fri,  6 Sep 2013 13:58:43 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r86Kwe5f010034
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 6 Sep 2013 13:58:40 -0700 (PDT)
Received: from yow-bashfiel-d3.wrs.com (128.224.147.67) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Fri, 6 Sep 2013 13:58:40 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Fri, 6 Sep 2013 16:58:33 -0400
Message-ID: <cover.1378500902.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.10.4
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 0/4] meta-yocto-bsp: 3.10 updates
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 06 Sep 2013 20:58:45 -0000
Content-Type: text/plain

Richard/Saul,

Here's the last set of updates on the heels of the 3.10
stabilization.

I realize that these are later than I wanted to send them,
but with other issues around 3.10, it didn't make sense
to pile them on.

They are kernel version uprevs, but there are a number of
ourstanding bugs on all the boards that make no sense to
fix on 3.4. With this, we do take the risk of new bugs, but
the newer kernel fixes a lot, and hopefully breaks very
little.

Also with this, we have all reference BSPs on 3.10!

So here they are, tested locall and by the Wind River 
BSP team.

Cheers,

Bruce


The following changes since commit fc8a99ffc3974a5cb2b6d12a5a95d019f15c5f22:

  kern-tools: support no author patches (2013-09-06 00:14:11 -0400)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (2):
  meta-yocto-bsp: update h/w reference boards SRCREVs
  linux-yocto/3.10: update meta SRCREV for beagleboard config changes

Kevin Hao (1):
  mpc8315e-rdb: update to the 3.10 kernel

Liming Wang (1):
  beagleboard: upgrade the kernel to 3.10.x

 meta-yocto-bsp/conf/machine/beagleboard.conf                 |    5 +++--
 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf                |    2 +-
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend           |   10 +++++-----
 meta/recipes-kernel/linux/linux-yocto-rt_3.10.bb             |    2 +-
 meta/recipes-kernel/linux/linux-yocto-tiny_3.10.bb           |    2 +-
 meta/recipes-kernel/linux/linux-yocto_3.10.bb                |    2 +-
 6 files changed, 12 insertions(+), 11 deletions(-)

-- 
1.7.10.4


