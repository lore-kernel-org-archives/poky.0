Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7DE414C80861
	for <poky@yoctoproject.org>; Fri,  4 Mar 2011 03:06:22 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2496MjQ029503
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 4 Mar 2011 01:06:22 -0800 (PST)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 4 Mar 2011 01:06:21 -0800
Message-ID: <cover.1299227973.git.xiaofeng.yan@windriver.com>
Old-Date: Fri, 4 Mar 2011 16:39:33 +0800
Date: Fri, 4 Mar 2011 17:05:29 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 0/1] Add four variables to eglibc-package.inc for installing packages relating to locale easy
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
X-List-Received-Date: Fri, 04 Mar 2011 09:06:23 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

Because there are thousands of packages about locale which needed by LSB Test Suite in our poky rpms. So for installing them to lsb-image easy I define four variables which instead of thousands of locale packages in list task-poky-lsb.bb

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: xiaofeng/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/distro

Thanks,
    Xiaofeng Yan <xiaofeng.yan@windriver.com>
---


Xiaofeng Yan (1):
  eglibc: Add eglibc-binarys, eglibc-localedatas, eglibc-gconvs and
    eglibc-charmps to variable PACKAGE

 meta/recipes-core/eglibc/eglibc-package.inc |   20 ++++++++++++++++++++
 1 files changed, 20 insertions(+), 0 deletions(-)


