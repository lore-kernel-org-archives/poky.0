Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEA5BE013D1
	for <poky@yoctoproject.org>; Tue,  3 Sep 2013 08:25:28 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r83FPROR025153
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 3 Sep 2013 08:25:27 -0700 (PDT)
Received: from yow-bashfiel-d3.wrs.com (128.224.147.67) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Tue, 3 Sep 2013 08:25:26 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Tue, 3 Sep 2013 11:25:22 -0400
Message-ID: <cover.1378221496.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.10.4
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 0/2] meta-yocto-bsp: 3.10 updates
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
X-List-Received-Date: Tue, 03 Sep 2013 15:25:28 -0000
Content-Type: text/plain

Richard/Saul,

I realize this would have been ideal with my first M4
submission, but the fsl refernce board full works with
3.10, and the team has finished testing the update, so
I'm following up with changing its preferred version and
bumping all the meta-yocto-bsp SRCREVs.

This just leaves the beagleboard to be updated, and it 
does work from 3.10 without significant changes, so I'd
expect to have the testing confirmation of that soon, but
in the meantime, there's no reason to wait on these updates.

Bruce

The following changes since commit 54544711d68cd001d57a458aa70183614b9d6e1f:

  linux-yocto/3.10: update to v3.10.10 (2013-09-03 11:13:43 -0400)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (1):
  meta-yocto-bsp: update h/w reference boards SRCREVs

Kevin Hao (1):
  mpc8315e-rdb: update to the 3.10 kernel

 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf                |    2 +-
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend           |   10 +++++-----
 2 files changed, 6 insertions(+), 6 deletions(-)

-- 
1.7.10.4


