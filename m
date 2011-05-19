Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3A6BE4C80FBE
	for <poky@yoctoproject.org>; Wed, 18 May 2011 21:54:49 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4J2sms0008514
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 18 May 2011 19:54:48 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 18 May 2011 19:54:48 -0700
Message-ID: <cover.1305773471.git.xiaofeng.yan@windriver.com>
Old-Date: Thu, 19 May 2011 10:51:11 +0800
Date: Thu, 19 May 2011 10:53:32 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 0/1] [YOCTO #1079]Rename lsbsetup_0.9 file and add a link for lsb test
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
X-List-Received-Date: Thu, 19 May 2011 02:54:49 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

Rename this file version from 0.9 to 1.0.
Link time environment for Hong Kong time for solving [YOCTO #1079].

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: xiaofeng/lsb
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/lsb

Thanks,
    Xiaofeng Yan <xiaofeng.yan@windriver.com>
---


Xiaofeng Yan (1):
  [YOCTO #1079]:Rename this file and add a link for lsb

 meta/recipes-extended/lsb/lsbsetup_0.9.bb |   25 -------------------------
 meta/recipes-extended/lsb/lsbsetup_1.0.bb |   27 +++++++++++++++++++++++++++
 2 files changed, 27 insertions(+), 25 deletions(-)
 delete mode 100644 meta/recipes-extended/lsb/lsbsetup_0.9.bb
 create mode 100644 meta/recipes-extended/lsb/lsbsetup_1.0.bb


