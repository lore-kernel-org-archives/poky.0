Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5C9634C80BD8
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 02:43:57 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBT8huQY026063
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 00:43:56 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 29 Dec 2010 00:43:55 -0800
Received: from localhost ([128.224.162.176]) by ala-mail06.corp.ad.wrs.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 29 Dec 2010 00:43:54 -0800
Message-Id: <cover.1293612044.git.jingdong.lu@windriver.com>
From: Jingdong Lu <jingdong.lu@windriver.com>
Old-Date: Wed, 29 Dec 2010 16:40:44 +0800
Date: Wed, 29 Dec 2010 16:45:17 +0800
To: poky@yoctoproject.org
CC: 
X-OriginalArrivalTime: 29 Dec 2010 08:43:55.0744 (UTC)
	FILETIME=[87215E00:01CBA734]
Subject: [PATCH 0/1] Add source package names into task-poky-lsb.bb
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
X-List-Received-Date: Wed, 29 Dec 2010 08:43:57 -0000

In order to setup LSB test environment and run LSB, we should add some source packages into task-poky-lsb.bb.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: jingdonglu/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jingdonglu/distro

Thanks,
    Jingdong Lu <jingdong.lu@windriver.com>
---


Jingdong Lu (1):
  task-poky-lsb: add relevant packages into task-poky-lsb

 meta/recipes-extended/tasks/task-poky-lsb.bb |  979 +++++++++++++++++++++++++-
 1 files changed, 977 insertions(+), 2 deletions(-)


