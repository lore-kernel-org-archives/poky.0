Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id F30CB4C8009D
	for <poky@yoctoproject.org>; Tue,  5 Jul 2011 07:15:52 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p65CFqvD015990
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 5 Jul 2011 05:15:52 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Tue, 5 Jul 2011 05:15:52 -0700
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
To: <poky@yoctoproject.org>
Date: Tue, 5 Jul 2011 20:10:44 +0800
Message-ID: <cover.1309867650.git.xiaofeng.yan@windriver.com>
X-Mailer: git-send-email 1.7.0.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 0/1] libQtOpenGL: Install libQtOpenGL to an lsb image
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
X-List-Received-Date: Tue, 05 Jul 2011 12:15:53 -0000
Content-Type: text/plain

Hi Saul,

I add this pakcage to task-core-lsb.bb to support qtopengl in an lsb image.


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: xiaofeng/opengl-lsb
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/opengl-lsb

Thanks,
    Xiaofeng Yan <xiaofeng.yan@windriver.com>
---


Xiaofeng Yan (1):
  libQtOpenGL: Install libQtOpenGL to an lsb image

 meta-yocto/conf/distro/poky-lsb.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)


