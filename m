Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 75A4F4C800C1
	for <poky@yoctoproject.org>; Tue, 31 May 2011 02:17:05 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4V7H3wL024926
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 31 May 2011 00:17:03 -0700 (PDT)
Received: from localhost (128.224.162.198) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Tue, 31 May 2011 00:17:03 -0700
Message-ID: <cover.1306811461.git.kai.kang@windriver.com>
Old-Date: Tue, 31 May 2011 11:11:01 +0800
Date: Tue, 31 May 2011 15:16:57 +0800
To: <saul.wold@intel.com>, <poky@yoctoproject.org>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.198]
Subject: [PATCH 0/1] task-core-lsb: add cups and ghostscript into lsb image
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
X-List-Received-Date: Tue, 31 May 2011 07:17:05 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

[Yocto 1030]
Because it is fixed by Qing He, then add cups and ghostscipt into lsb image

The following changes since commit cdc3397262f588a901364315580256ad39cca0ac:

  bitbake.conf: make OVERRIDES match what people expect (2011-05-30 08:33:24 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib kangkai/distro
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/distro

Kang Kai (1):
  task-core-lsb: add cups and ghostscript into image

 meta/recipes-extended/tasks/task-core-lsb.bb |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

-- 
1.7.5.1.300.gc565c


