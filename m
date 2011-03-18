Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 662F54C80878
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 04:08:38 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2I98cng011476
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 02:08:38 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 18 Mar 2011 02:08:37 -0700
Message-ID: <cover.1300438663.git.xiaofeng.yan@windriver.com>
Old-Date: Fri, 18 Mar 2011 16:57:43 +0800
Date: Fri, 18 Mar 2011 17:04:19 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 0/1] Modify script "creat-lsb-image" to create lsb-image which can be used by lsb test suite on hardware platform
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
X-List-Received-Date: Fri, 18 Mar 2011 09:08:38 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

The previous version can only create a useable lsb-image for qemu. So I fix it. 

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: xiaofeng/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/distro

Thanks,
    Xiaofeng Yan <xiaofeng.yan@windriver.com>
---


Xiaofeng Yan (1):
  creat-lsb-image: Modify some contents to support hardware platfrom

 scripts/creat-lsb-image |   95 ++++++++++++++++++++++------------------------
 1 files changed, 45 insertions(+), 50 deletions(-)


