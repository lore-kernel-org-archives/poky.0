Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 12BB74C80A9F
	for <poky@yoctoproject.org>; Tue, 17 May 2011 01:02:22 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4H62L5R020893
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 16 May 2011 23:02:21 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Mon, 16 May 2011 23:02:21 -0700
Message-ID: <cover.1305611792.git.xiaofeng.yan@windriver.com>
Old-Date: Tue, 17 May 2011 13:56:32 +0800
Date: Tue, 17 May 2011 14:01:14 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 0/3] Add init-functions, libQtOpenGL.so* to lsb-image
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
X-List-Received-Date: Tue, 17 May 2011 06:02:22 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

These files are needed by LSB Test Suite. So I push them to poky.


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: xiaofeng/lsb
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/lsb

Thanks,
    Xiaofeng Yan <xiaofeng.yan@windriver.com>
---


Xiaofeng Yan (3):
  lsb: Install init-functions to rpm package
  lsbsetup: Add a link for lsb test
  task-core-lsb: Add libQtOpenGL.so* library to lsb-image

 meta/recipes-extended/lsb/lsb_1.4.bb         |    6 ++++--
 meta/recipes-extended/lsb/lsbsetup_0.9.bb    |    8 +++++---
 meta/recipes-extended/tasks/task-core-lsb.bb |    9 ++++++++-
 3 files changed, 17 insertions(+), 6 deletions(-)


