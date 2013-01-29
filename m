Return-Path: <Kai.Kang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DFBDE013EB
	for <poky@yoctoproject.org>; Mon, 28 Jan 2013 23:24:11 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r0T7OC18021425
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 28 Jan 2013 23:24:12 -0800 (PST)
Received: from localhost.localdomain (128.224.162.205) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.2.318.4; Mon, 28 Jan 2013 23:24:09 -0800
From: Kang Kai <kai.kang@windriver.com>
To: <poky@yoctoproject.org>
Date: Tue, 29 Jan 2013 15:25:27 +0800
Message-ID: <cover.1359444101.git.kai.kang@windriver.com>
X-Mailer: git-send-email 1.7.5.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.205]
Subject: [PATCH 0/1] Add var ROOT_HOME to local.conf.sample.extended
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
X-List-Received-Date: Tue, 29 Jan 2013 07:24:11 -0000
Content-Type: text/plain

The following changes since commit cfb082961a6c9ac3d65738031c4071210529cd07:

  bitbake: build.py: Dump out performance data of individual tasks (2013-01-28 14:49:05 +0000)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib kangkai/roothome
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/roothome

Kang Kai (1):
  local.conf.sample.extended: add variable ROOT_HOME

 meta-yocto/conf/local.conf.sample.extended |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

-- 
1.7.5.4


