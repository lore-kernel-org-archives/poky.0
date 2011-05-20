Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id E1FA34C800AC
	for <poky@yoctoproject.org>; Fri, 20 May 2011 04:40:45 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4K9ejwx007441
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 20 May 2011 02:40:45 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 20 May 2011 02:40:45 -0700
Message-ID: <cover.1305884138.git.xiaofeng.yan@windriver.com>
Old-Date: Fri, 20 May 2011 17:35:38 +0800
Date: Fri, 20 May 2011 17:39:23 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 0/1] [YOCTO #1090]: Fix this bug
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
X-List-Received-Date: Fri, 20 May 2011 09:40:46 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

If don't change this task list, then the previous list of same name will be
covered.
For example,

RDEPENDS_task-core-lsb-graphic-add_emenlow = "\
    libqtopengl4 \
"
should change to  

RDEPENDS_task-core-lsb-graphic-add_append_emenlow = "\
    libqtopengl4 \
"
"task-core-lsb-graphic-add_emenlow" will instead of previous list "task-core-lsb-graphic-add"


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: xiaofeng/task-core-lsb
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/task-core-lsb

Thanks,
    Xiaofeng Yan <xiaofeng.yan@windriver.com>
---


Xiaofeng Yan (1):
  [YOCTO #1090]: Fix bugs

 meta/recipes-extended/tasks/task-core-lsb.bb |   10 +++++-----
 1 files changed, 5 insertions(+), 5 deletions(-)


