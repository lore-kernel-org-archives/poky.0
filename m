Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C935EE006CB
	for <poky@yoctoproject.org>; Mon, 11 Mar 2013 01:05:08 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r2B8578n001251
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 11 Mar 2013 01:05:07 -0700 (PDT)
Received: from pek-wfan-d2.corp.ad.wrs.com (128.224.162.243) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.342.3; Mon, 11 Mar 2013 01:05:06 -0700
From: <wenzong.fan@windriver.com>
To: <poky@yoctoproject.org>
Date: Mon, 11 Mar 2013 16:04:57 +0800
Message-ID: <1362989098-9567-1-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.10.4
MIME-Version: 1.0
Cc: wenzong.fan@windriver.com
Subject: [PATCH 0/1] layer.conf: Add LAYERVERSION and LAYERDEPENDS
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
X-List-Received-Date: Mon, 11 Mar 2013 08:05:09 -0000
Content-Type: text/plain

Add LAYERVERSION and LAYERDEPENDS to following yocto layers:

    meta-yocto, meta-yocto-bsp

The following changes since commit 365eb9b5d22208c967dcd91d8ab52faed20f04b5:

  bitbake: bitbake-layers: fix duplicated help info (2013-03-10 04:36:52 +0000)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib wenzong/yocto-layers
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=wenzong/yocto-layers

Wenzong Fan (1):
  layer.conf: Add LAYERVERSION and LAYERDEPENDS

 meta-yocto-bsp/conf/layer.conf |    5 +++++
 meta-yocto/conf/layer.conf     |    5 +++++
 2 files changed, 10 insertions(+)

-- 
1.7.10.4


