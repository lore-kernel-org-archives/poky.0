Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id BB9154C80A73
	for <poky@yoctoproject.org>; Mon, 23 May 2011 06:57:35 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4NBvYJX005017
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 23 May 2011 04:57:34 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Mon, 23 May 2011 04:57:34 -0700
Message-ID: <cover.1306150610.git.xiaofeng.yan@windriver.com>
Old-Date: Mon, 23 May 2011 19:36:50 +0800
Date: Mon, 23 May 2011 19:55:57 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 0/1] poky-lsb: Add libQtOpenGL to all lsb image for different platform
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
X-List-Received-Date: Mon, 23 May 2011 11:57:36 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

Hi Saul,
[YOCTO #1020]
I know you want to get a new solution to add libQtOpenGL* to image which support graphic function with graphic hardware.
We need learn which platform support graphic function and then we can add libQtOpenGL* to corresponding qt4-x11-free_4.*.bbappend.
If a target platform don't support graphic function, then this library should not be added to image.
But for lsb image, as you know, library libQtOpenGL* must be included lsb image to meet lsb requirement. So I summit this patch to fix [YOCTO #1020].
In fact, LSB can run on platform without graphic function when libQtOpenGL*.so* is supported because "meta-xlib" is default conflagration for libX11 in poky.
As you know, opengl run on meta-xlib or meta-dri.  

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: xiaofeng/opengl
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/opengl

Thanks,
    Xiaofeng Yan <xiaofeng.yan@windriver.com>
---


Xiaofeng Yan (1):
  poky-lsb: Add libQtOpenGL* to lsb image for all platform

 meta-yocto/conf/distro/poky-lsb.conf         |    2 +-
 meta/recipes-extended/tasks/task-core-lsb.bb |   18 +-----------------
 2 files changed, 2 insertions(+), 18 deletions(-)


