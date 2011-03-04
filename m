Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id CB23F4C800A3
	for <poky@yoctoproject.org>; Fri,  4 Mar 2011 05:13:33 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p24BDXok019459
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 4 Mar 2011 03:13:33 -0800 (PST)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 4 Mar 2011 03:13:32 -0800
Message-ID: <cover.1299236942.git.xiaofeng.yan@windriver.com>
Old-Date: Fri, 4 Mar 2011 19:09:02 +0800
Date: Fri, 4 Mar 2011 19:12:39 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 0/1] Perfet file LSB_Setup.sh to set up lsb test environment automatically
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
X-List-Received-Date: Fri, 04 Mar 2011 11:13:34 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

I modify this file to set up lsb test environment on more platfrom automatically for yocto 1.0 passing lsb test.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: xiaofeng/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/distro

Thanks,
    Xiaofeng Yan <xiaofeng.yan@windriver.com>
---


Xiaofeng Yan (1):
  LSB_Setup.sh:Install LSB Test Suite and set lsb test environment

 meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh |   20 ++++++++++----------
 1 files changed, 10 insertions(+), 10 deletions(-)


