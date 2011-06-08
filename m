Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 85CC34C800FB
	for <poky@yoctoproject.org>; Wed,  8 Jun 2011 07:00:18 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p58C0Go3013815
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 8 Jun 2011 05:00:16 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 8 Jun 2011 05:00:15 -0700
Message-ID: <cover.1307533714.git.xiaofeng.yan@windriver.com>
Old-Date: Wed, 8 Jun 2011 19:48:34 +0800
Date: Wed, 8 Jun 2011 19:57:21 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 0/1] meta-qt3 : Add a patch to pass the compiling of qt3
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
X-List-Received-Date: Wed, 08 Jun 2011 12:00:24 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

Failed to compile qt3 because of the updated of library libstdc++ and compilation tool.
The error information from compiling qt3 is that "error: 'ptrdiff_t' does not name a type".
So I add head file "cstddef" which defines this data type to "qvaluelist.h" from qt3. 

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: xiaofeng/meta-qt3
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/meta-qt3

Thanks,
    Xiaofeng Yan <xiaofeng.yan@windriver.com>
---


Xiaofeng Yan (1):
  Qt3: Add head file "cstddef" to Qt3

 recipes-qt3/qt3/qt-x11-free/qt3-cstddef.patch |   18 ++++++++++++++++++
 recipes-qt3/qt3/qt-x11-free_3.3.7.bb          |    3 ++-
 2 files changed, 20 insertions(+), 1 deletions(-)
 create mode 100644 recipes-qt3/qt3/qt-x11-free/qt3-cstddef.patch


