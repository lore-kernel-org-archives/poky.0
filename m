Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 5518DE00498
	for <poky@yoctoproject.org>; Tue, 26 Feb 2013 21:11:29 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r1R5BR3t026634
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 26 Feb 2013 21:11:27 -0800 (PST)
Received: from yow-bashfiel-d3.corp.ad.wrs.com (128.224.145.220) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.328.9; Tue, 26 Feb 2013 21:11:27 -0800
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Wed, 27 Feb 2013 00:11:25 -0500
Message-ID: <cover.1361941712.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.10.4
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 0/1] linux-yocto/meta-yocto-bsp: introduce 3.8 and remove 3.0
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
X-List-Received-Date: Wed, 27 Feb 2013 05:11:29 -0000
Content-Type: text/plain

Richard/Saul,

Here's the meta-yocto-bsp updates that go along with my 3.8 oe-core kernel
recipe series. Without this change, you'll have dangling bbappends and
build failures ensue :)

Also note that the hardware reference platforms are being held at 3.4 until
boot testing can be completed.

Cheers,

Bruce

The following changes since commit 645f62e63e6205b5307ccafbca12038af68c25ad:

  linux-yocto: introduce 3.8 kernel recipe (2013-02-26 23:47:15 -0500)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (1):
  meta-yocto/linux-yocto: update qemu BSPs to 3.8 kernel

 .../linux/linux-yocto-rt_3.0.bbappend              |   25 --------------------
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   15 ------------
 .../recipes-kernel/linux/linux-yocto_3.8.bbappend  |   14 +++++++++++
 meta-yocto/conf/distro/poky.conf                   |   10 ++++----
 4 files changed, 19 insertions(+), 45 deletions(-)
 delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.0.bbappend
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend

-- 
1.7.10.4


