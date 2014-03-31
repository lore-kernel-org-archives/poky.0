Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E35CBE00C23
	for <poky@yoctoproject.org>; Mon, 31 Mar 2014 11:02:11 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s2VI26QQ016806
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 31 Mar 2014 11:02:06 -0700 (PDT)
Received: from yow-bashfiel-d3.wrs.com (128.224.56.46) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.169.1; Mon, 31 Mar 2014 11:02:06 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Mon, 31 Mar 2014 14:01:53 -0400
Message-ID: <cover.1396288654.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.8.1.2
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [v2 PATCH 0/7] poky/yocto-bsps: 3.10 and 3.14 updates
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
X-List-Received-Date: Mon, 31 Mar 2014 18:02:15 -0000
Content-Type: text/plain

Richard/Saul,

Here's the resend of the 3.10 and 3.14 updates for the 3.14 kernel
and 3.10.34 update.

Outside of a few minor SRCREV changes, these are the same as the
v1 series.

Cheers,

Bruce

The following changes since commit 9f8d4e24f7c9b261597aaaa1a2085858a5178324:

  linux-libc-headers: remove 3.10 recipe (2014-03-31 13:49:58 -0400)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (5):
  poky: set qemu BSPs preferred version to 3.14
  yocto-bsps: update reference BSPs to v3.10.34
  yocto-bsps: remove linux-yocto 3.8 bbappend
  yocto-bsps: edgerouter: explicitly set preferred version
  meta-yocto-bsp: populate 3.14 bbappend

Yang Wei (2):
  yocto-bsps: Add a new BSP to support edgerouter
  poky: add edgerouter information to README.hardware

 README.hardware                                    | 81 ++++++++++++++++++++++
 meta-yocto-bsp/conf/machine/edgerouter.conf        | 22 ++++++
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 10 +--
 .../recipes-kernel/linux/linux-yocto_3.14.bbappend | 17 +++++
 .../recipes-kernel/linux/linux-yocto_3.8.bbappend  | 19 -----
 meta-yocto/conf/distro/poky.conf                   | 14 ++--
 6 files changed, 132 insertions(+), 31 deletions(-)
 create mode 100644 meta-yocto-bsp/conf/machine/edgerouter.conf
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend
 delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend

-- 
1.8.1.2


