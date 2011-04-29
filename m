Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id E86D14C80B74
	for <poky@yoctoproject.org>; Fri, 29 Apr 2011 04:44:38 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3T9icG4020468
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 29 Apr 2011 02:44:38 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 29 Apr 2011 02:44:37 -0700
Message-ID: <cover.1304070105.git.xiaofeng.yan@windriver.com>
Old-Date: Fri, 29 Apr 2011 17:41:45 +0800
Date: Fri, 29 Apr 2011 17:44:07 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 0/2] task-lsb: Add new package and new character set to lsb-image
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
X-List-Received-Date: Fri, 29 Apr 2011 09:44:39 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

Liberation can add font set to lsb-image
LSB need en_US.ISO8859-1 

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: xiaofeng/task-lsb
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/task-lsb

Thanks,
    Xiaofeng Yan <xiaofeng.yan@windriver.com>
---


Xiaofeng Yan (2):
  task-core-lsb.bb: Add packages  liberation-fonts to lsb-imag
  LSB_Setup.sh: Add character set to lsb-image

 meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh |    1 +
 meta/recipes-extended/tasks/task-core-lsb.bb    |    1 +
 2 files changed, 2 insertions(+), 0 deletions(-)


