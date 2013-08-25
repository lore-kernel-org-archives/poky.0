Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D140E00406
	for <poky@yoctoproject.org>; Sat, 24 Aug 2013 22:21:06 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r7P5L6K9021788
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 24 Aug 2013 22:21:06 -0700 (PDT)
Received: from yow-bashfiel-d3.wrs.com (128.224.147.67) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Sat, 24 Aug 2013 22:21:04 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Sun, 25 Aug 2013 01:20:56 -0400
Message-ID: <cover.1377407870.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.10.4
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 0/1] meta-yocto-bsp: add linux-yocto-3.10 bbappend
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
X-List-Received-Date: Sun, 25 Aug 2013 05:21:07 -0000
Content-Type: text/plain

Richard/Saul,

This is the follow up to my oe-core series for linux-yocto-3.10.

It adds the 3.10 bbappend for the yocto reference boards, and updates
the routerstation pro to 3.10.

The other reference boards will follow, but they need some boot
testing early next week. the routerstationpro was prioritized, since
now that is is off 3.8, I was able to remove the 3.8 kernel recipes.

I'm keeping the 3.8 bbappend in meta-yocto-bsps for a bit longer,
but it should be removed as well, once all boards are updated.

Cheers,

Bruce

The following changes since commit 2a6e1a99b776f536e12c0de196eaa5d2f0a1025d:

  linux-yocto: remove 3.8 recipes (2013-08-25 00:27:57 -0400)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (1):
  yocto-bsp: add 3.10 bbappend and update routerstationpro's preferred
    version

 meta-yocto-bsp/conf/machine/routerstationpro.conf  |    2 +-
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend |   20 ++++++++++++++++++++
 2 files changed, 21 insertions(+), 1 deletion(-)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend

-- 
1.7.10.4


