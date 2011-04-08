Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2CA4C4C80132
	for <poky@yoctoproject.org>; Fri,  8 Apr 2011 03:53:09 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p388r88D025975
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 8 Apr 2011 01:53:08 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 8 Apr 2011 01:53:07 -0700
Message-ID: <cover.1302252022.git.xiaofeng.yan@windriver.com>
Old-Date: Fri, 8 Apr 2011 16:40:22 +0800
Date: Fri, 8 Apr 2011 16:43:40 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 0/1] Add four variables to eglibc-package.inc for installing packages relating to locale
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
X-List-Received-Date: Fri, 08 Apr 2011 08:53:09 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

Because there are thousands of packages about locale which needed by LSB Test Suite in our poky rpms. So for installing them to lsb-image easy I define four variables which instead of thousands of locale packages in list task-poky-lsb.bb

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: xiaofeng/eglibc-package.inc
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/eglibc-package.inc

Thanks,
    Xiaofeng Yan <xiaofeng.yan@windriver.com>
---


Xiaofeng Yan (1):
  eglibc-package.inc: Add eglibc-binarys, eglibc-localedatas,
    eglibc-gconvs and eglibc-charmps to variable PACKAGE

 meta/recipes-core/eglibc/eglibc-package.inc |   20 ++++++++++++++++++++
 1 files changed, 20 insertions(+), 0 deletions(-)


