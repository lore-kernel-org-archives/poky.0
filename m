Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CADC9E00895
	for <poky@yoctoproject.org>; Thu, 27 Feb 2014 13:15:16 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s1RLFD9x000284
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 27 Feb 2014 13:15:14 -0800 (PST)
Received: from yow-bashfiel-d3.wrs.com (128.224.147.67) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Thu, 27 Feb 2014 13:15:13 -0800
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Thu, 27 Feb 2014 16:15:02 -0500
Message-ID: <cover.1393535621.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.8.1.2
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 0/2] meta-yocto-bsps: update h/w reference SRCREVs
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
X-List-Received-Date: Thu, 27 Feb 2014 21:15:17 -0000
Content-Type: text/plain

Richard/Saul,

Here's the follow on update to the h/w reference BSPs to make them match
the linux-yocto version for the qemu* BSPs.

Cheers,

Bruce

The following changes since commit f3621116af5bc08ddcfdb7b888db561f35e49ac1:

  linux-yocto/3.10: integrate latest LTSI changes (2014-02-27 16:04:51 -0500)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel

Bruce Ashfield (2):
  bsps: update to 3.10.28
  bsps: update H/W reference boards to v3.10.32

 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

-- 
1.8.1.2


