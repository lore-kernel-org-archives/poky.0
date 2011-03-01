Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id ED0954C80510
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 01:12:16 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p217CGeI012809
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 23:12:16 -0800 (PST)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Mon, 28 Feb 2011 23:12:15 -0800
Message-ID: <cover.1298961777.git.xiaofeng.yan@windriver.com>
Old-Date: Tue, 1 Mar 2011 14:42:57 +0800
Date: Tue, 1 Mar 2011 15:12:09 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 0/2] Add qt3 to poky
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
X-List-Received-Date: Tue, 01 Mar 2011 07:12:17 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

  Packages qt3 from "OE" is needed by LSB Test Suite. So I add it to Poky.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: xiaofeng/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/distro

Thanks,
    Xiaofeng Yan <xiaofeng.yan@windriver.com>
---


Xiaofeng Yan (2):
  qt3: Add qt3 because lsb test need it
  qt3: Add two class(qt3e.bbclass and qt3x11.bbclass) files into
    meta/classess/

 meta/classes/qt3e.bbclass                         |   11 +++
 meta/classes/qt3x11.bbclass                       |   15 ++++
 meta/recipes-qt/qt3/qt-x11-free-common.inc        |   91 +++++++++++++++++++++
 meta/recipes-qt/qt3/qt-x11-free-native_3.3.5.bb   |   65 +++++++++++++++
 meta/recipes-qt/qt3/qt-x11-free/configure.patch   |   51 ++++++++++++
 meta/recipes-qt/qt3/qt-x11-free/gcc4_1-HACK.patch |   28 +++++++
 meta/recipes-qt/qt3/qt-x11-free/no-examples.patch |   16 ++++
 meta/recipes-qt/qt3/qt-x11-free_3.3.6.bb          |   13 +++
 meta/recipes-qt/qt3/qt-x11-free_3.3.7.bb          |   16 ++++
 9 files changed, 306 insertions(+), 0 deletions(-)
 create mode 100644 meta/classes/qt3e.bbclass
 create mode 100644 meta/classes/qt3x11.bbclass
 create mode 100644 meta/recipes-qt/qt3/qt-x11-free-common.inc
 create mode 100644 meta/recipes-qt/qt3/qt-x11-free-native_3.3.5.bb
 create mode 100644 meta/recipes-qt/qt3/qt-x11-free/configure.patch
 create mode 100644 meta/recipes-qt/qt3/qt-x11-free/gcc4_1-HACK.patch
 create mode 100644 meta/recipes-qt/qt3/qt-x11-free/no-examples.patch
 create mode 100644 meta/recipes-qt/qt3/qt-x11-free_3.3.6.bb
 create mode 100644 meta/recipes-qt/qt3/qt-x11-free_3.3.7.bb


