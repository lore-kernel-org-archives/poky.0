Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 268B24C803BA
	for <poky@yoctoproject.org>; Fri, 20 May 2011 07:29:02 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4KCT11S003395
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 20 May 2011 05:29:01 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 20 May 2011 05:29:01 -0700
Message-ID: <cover.1305894267.git.xiaofeng.yan@windriver.com>
Old-Date: Fri, 20 May 2011 20:24:27 +0800
Date: Fri, 20 May 2011 20:27:39 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 0/1] Add libQtOpenGL* to three hardware platform
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
X-List-Received-Date: Fri, 20 May 2011 12:29:02 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

For passing lsb test on hardware, I add this library to n450,sugarbay and jasperforest.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: xiaofeng/opengl
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/opengl

Thanks,
    Xiaofeng Yan <xiaofeng.yan@windriver.com>
---


Xiaofeng Yan (1):
  task-core-lsb: Add library libQtOpenGL* to n450,sugarbay and
    jasperforest

 .../recipes-qt/qt4/qt4-x11-free_4.7.3.bbappend     |    3 +++
 meta/recipes-extended/tasks/task-core-lsb.bb       |   10 ++++++++++
 2 files changed, 13 insertions(+), 0 deletions(-)


