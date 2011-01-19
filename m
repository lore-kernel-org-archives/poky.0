Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 000194C81065
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 02:55:32 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0J8tWLb021391
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 00:55:32 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 19 Jan 2011 00:55:31 -0800
Received: from localhost ([128.224.162.176]) by ala-mail06.corp.ad.wrs.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 19 Jan 2011 00:55:31 -0800
Message-Id: <cover.1295426481.git.jingdong.lu@windriver.com>
From: Jingdong Lu <jingdong.lu@windriver.com>
Old-Date: Wed, 19 Jan 2011 16:41:21 +0800
Date: Wed, 19 Jan 2011 16:53:54 +0800
To: poky@yoctoproject.org
CC: 
X-OriginalArrivalTime: 19 Jan 2011 08:55:32.0546 (UTC)
	FILETIME=[A121AA20:01CBB7B6]
Subject: [PATCH 0/4][PULL] Add "poky-lsb" distro and add lsb features into related recipes.
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
X-List-Received-Date: Wed, 19 Jan 2011 08:55:33 -0000

Create poky-lsb-distro to place some config change in order to pass LSB test.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: jingdonglu/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jingdonglu/distro

Thanks,
    Jingdong Lu <jingdong.lu@windriver.com>
---


Jingdong Lu (4):
  qt4: Enable accessibility and sm option for LSB.
  glib-2.0: Enable debug option for LSB test.
  libxml2: Enable "--with-docbook --with-debug --with-catalog" for LSB
    test.
  poky-lsb: Add poky-lsb.conf as distro of lsb image

 meta/classes/qmake2.bbclass                   |    1 +
 meta/conf/distro/poky-lsb.conf                |    6 ++++++
 meta/recipes-core/glib-2.0/glib-2.0_2.27.5.bb |    2 +-
 meta/recipes-core/glib-2.0/glib.inc           |    1 +
 meta/recipes-core/libxml/libxml2.inc          |    1 +
 meta/recipes-core/libxml/libxml2_2.7.7.bb     |    2 +-
 meta/recipes-qt/qt4/qt4-x11-free_4.6.3.bb     |    2 +-
 meta/recipes-qt/qt4/qt4.inc                   |   10 +++++++---
 8 files changed, 19 insertions(+), 6 deletions(-)
 create mode 100644 meta/conf/distro/poky-lsb.conf


