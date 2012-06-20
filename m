Return-Path: <Kai.Kang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D8AAE0070C
	for <poky@yoctoproject.org>; Wed, 20 Jun 2012 01:55:39 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q5K8tdub017376
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 20 Jun 2012 01:55:39 -0700 (PDT)
Received: from localhost.localdomain (128.224.162.164) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.1.255.0; Wed, 20 Jun 2012 01:55:39 -0700
From: Kang Kai <kai.kang@windriver.com>
To: <poky@yoctoproject.org>
Date: Wed, 20 Jun 2012 16:55:50 +0800
Message-ID: <cover.1340182393.git.kai.kang@windriver.com>
X-Mailer: git-send-email 1.7.5.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.164]
Subject: [PATCH 0/1] [Yocto 2579] fix runqemu on ext2 image
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
X-List-Received-Date: Wed, 20 Jun 2012 08:55:39 -0000
Content-Type: text/plain

Hi,

This patch is for Yocto 2579.

When set DISTRO to poky-tiny it only builds ext2 image and runqemu doesn't set qemu options for ext2 image that cause qemu fails to boot. Fix it.

Regards,
Kai

The following changes since commit e0a70547069fe7e8a2d6bdaffc985fb172d46c31:

  perl: Allow perl to cross build and native build in a directory named "t" (2012-06-18 17:33:04 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib kangkai/runqemu
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/runqemu

Kang Kai (1):
  runqemu-internal: qemu fails to run on ext2 image

 scripts/runqemu-internal |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

-- 
1.7.5.4


