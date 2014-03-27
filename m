Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17F72E00ACC
	for <poky@yoctoproject.org>; Thu, 27 Mar 2014 11:30:04 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s2RIU2eb016405
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 27 Mar 2014 11:30:02 -0700 (PDT)
Received: from yow-bashfiel-d3.wrs.com (128.224.56.46) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.169.1; Thu, 27 Mar 2014 11:30:02 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Thu, 27 Mar 2014 14:29:53 -0400
Message-ID: <cover.1395944862.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.8.1.2
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 0/6] poky/yocto-bsps: 3.4, 3.8, 3.10 and 3.14 updates
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
X-List-Received-Date: Thu, 27 Mar 2014 18:30:05 -0000
Content-Type: text/plain

Richard/Saul,

As a follow on to my oe-core series that updates 3.10, removes 3.8
and introduces 3.14, here are the corresponding poky/meta-yocto-bsps
changes.

Cheers,

Bruce

The following changes since commit 63a8480507afd48cca4c411434991f0777f9308c:

  linux-libc-headers: remove 3.10 recipe (2014-03-27 14:13:13 -0400)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (4):
  poky: set qemu BSPs preferred version to 3.14
  yocto-bsps: update reference BSPs to v3.10.34
  yocto-bsps: routerstationpro: explicitly set preferred version
  yocto-bsps: remove linux-yocto 3.8 bbappend

Yang Wei (2):
  yocto-bsps: Add a new BSP to support edgerouter
  poky: add edgerouter information to README.hardware

 README.hardware                                    | 81 ++++++++++++++++++++++
 meta-yocto-bsp/conf/machine/edgerouter.conf        | 22 ++++++
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 10 +--
 .../recipes-kernel/linux/linux-yocto_3.8.bbappend  | 19 -----
 meta-yocto/conf/distro/poky.conf                   | 14 ++--
 5 files changed, 115 insertions(+), 31 deletions(-)
 create mode 100644 meta-yocto-bsp/conf/machine/edgerouter.conf
 delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend

-- 
1.8.1.2


