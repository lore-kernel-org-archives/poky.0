Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id B56514C804D4
	for <poky@yoctoproject.org>; Thu, 28 Apr 2011 20:26:52 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3T1QqRd007611
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 28 Apr 2011 18:26:52 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Thu, 28 Apr 2011 18:26:51 -0700
Message-ID: <cover.1303982282.git.xiaofeng.yan@windriver.com>
Old-Date: Thu, 28 Apr 2011 17:18:02 +0800
Date: Fri, 29 Apr 2011 09:26:23 +0800
To: <poky@yoctoproject.org>
CC: 
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 0/1] meta-qt3: Add qt3 to OE-CORE to fix [#816]
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
X-List-Received-Date: Fri, 29 Apr 2011 01:26:53 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

Add a new layer "meta-qt3" to OE-CORE because lsb test suite need it.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: xiaofeng/meta-qt3
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/meta-qt3

Thanks,
    Xiaofeng Yan <xiaofeng.yan@windriver.com>
---


Xiaofeng Yan (1):
  qt3: Add qt3 to poky for fixing [YOCTO #816]

 meta-qt3/classes/qt3e.bbclass                      |   11 +++
 meta-qt3/classes/qt3x11.bbclass                    |   15 +++
 meta-qt3/conf/layer.conf                           |   10 ++
 meta-qt3/recipes-qt3/images/core-image-lsb-qt3.bb  |   10 ++
 meta-qt3/recipes-qt3/qt3/qt-x11-free-common.inc    |   92 ++++++++++++++++++++
 .../recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb    |   72 +++++++++++++++
 .../recipes-qt3/qt3/qt-x11-free/configure.patch    |   51 +++++++++++
 .../recipes-qt3/qt3/qt-x11-free/gcc4_1-HACK.patch  |   28 ++++++
 .../recipes-qt3/qt3/qt-x11-free/no-examples.patch  |   16 ++++
 meta-qt3/recipes-qt3/qt3/qt-x11-free_3.3.6.bb      |   13 +++
 meta-qt3/recipes-qt3/qt3/qt-x11-free_3.3.7.bb      |   17 ++++
 meta-qt3/recipes-qt3/tasks/task-core-qt3.bb        |   23 +++++
 12 files changed, 358 insertions(+), 0 deletions(-)
 create mode 100644 meta-qt3/classes/qt3e.bbclass
 create mode 100644 meta-qt3/classes/qt3x11.bbclass
 create mode 100644 meta-qt3/conf/layer.conf
 create mode 100644 meta-qt3/recipes-qt3/images/core-image-lsb-qt3.bb
 create mode 100644 meta-qt3/recipes-qt3/qt3/qt-x11-free-common.inc
 create mode 100644 meta-qt3/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb
 create mode 100644 meta-qt3/recipes-qt3/qt3/qt-x11-free/configure.patch
 create mode 100644 meta-qt3/recipes-qt3/qt3/qt-x11-free/gcc4_1-HACK.patch
 create mode 100644 meta-qt3/recipes-qt3/qt3/qt-x11-free/no-examples.patch
 create mode 100644 meta-qt3/recipes-qt3/qt3/qt-x11-free_3.3.6.bb
 create mode 100644 meta-qt3/recipes-qt3/qt3/qt-x11-free_3.3.7.bb
 create mode 100644 meta-qt3/recipes-qt3/tasks/task-core-qt3.bb


