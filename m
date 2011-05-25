Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id B8AF64C800E5
	for <poky@yoctoproject.org>; Wed, 25 May 2011 02:05:28 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4P73DYQ021950
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 25 May 2011 00:05:28 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 25 May 2011 00:05:02 -0700
Message-ID: <cover.1306297759.git.xiaofeng.yan@windriver.com>
Old-Date: Wed, 25 May 2011 12:29:19 +0800
Date: Wed, 25 May 2011 15:03:16 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 0/2] libQtopenGL: Add this library to lsb image
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
X-List-Received-Date: Wed, 25 May 2011 07:05:29 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

Hi Saul,
[YOCTO #1020]
We make lsb test on the following platform with default "mesa-xlib" so far.
emenlow, mpc8315e, qemux86,qemux86-64,jasperforest
Perhaps some of them could have graphic hardware but lsb image  can pass test by default "mesa-xlib" except mpc8315e because of its limited memory
we don't make lsb test on lsb image with "mesa-dri".
I submit two patches to fix bug [#YOCTO 1020]

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: xiaofeng/opengl
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/opengl

Thanks,
    Xiaofeng Yan <xiaofeng.yan@windriver.com>
---


Xiaofeng Yan (2):
  poky-lsb: Compile library libQtOpenGL* for building a lsb image
  task-core-lsb: Install libQtOpenGL* to lsb image

 meta-yocto/conf/distro/poky-lsb.conf         |    2 +-
 meta/recipes-extended/tasks/task-core-lsb.bb |   18 +-----------------
 2 files changed, 2 insertions(+), 18 deletions(-)


