Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 08BE74C800AF
	for <poky@yoctoproject.org>; Wed, 18 May 2011 06:24:34 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4IBOYut015150
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 18 May 2011 04:24:34 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 18 May 2011 04:24:33 -0700
Message-ID: <cover.1305717523.git.xiaofeng.yan@windriver.com>
Old-Date: Wed, 18 May 2011 19:18:43 +0800
Date: Wed, 18 May 2011 19:23:21 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 0/1] [YOCTO #1079]: Rename this file and add a link for lsb test
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
X-List-Received-Date: Wed, 18 May 2011 11:24:35 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

Fix bug [YOCTO #1079], It could be not the most solution for this bug but could pass lsb test

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: xiaofeng/lsb
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/lsb

Thanks,
    Xiaofeng Yan <xiaofeng.yan@windriver.com>
---


Xiaofeng Yan (1):
  lsbsetup: Rename this file and add a link for lsb test

 meta/recipes-extended/lsb/lsbsetup_0.9.bb |   25 -------------------------
 meta/recipes-extended/lsb/lsbsetup_1.0.bb |   27 +++++++++++++++++++++++++++
 2 files changed, 27 insertions(+), 25 deletions(-)
 delete mode 100644 meta/recipes-extended/lsb/lsbsetup_0.9.bb
 create mode 100644 meta/recipes-extended/lsb/lsbsetup_1.0.bb


