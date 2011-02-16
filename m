Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id A408B4C800A5
	for <poky@yoctoproject.org>; Wed, 16 Feb 2011 01:59:27 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1G7xRxL017684
	for <poky@yoctoproject.org>; Tue, 15 Feb 2011 23:59:27 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 15 Feb 2011 23:59:26 -0800
Received: from localhost ([128.224.162.205]) by ala-mail06.corp.ad.wrs.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 15 Feb 2011 23:59:25 -0800
Message-Id: <cover.1297843029.git.jingdong.lu@windriver.com>
Old-Date: Wed, 16 Feb 2011 15:57:09 +0800
Date: Wed, 16 Feb 2011 15:59:43 +0800
To: poky@yoctoproject.org
CC: 
From: Jingdong Lu <jingdong.lu@windriver.com>
X-OriginalArrivalTime: 16 Feb 2011 07:59:26.0780 (UTC)
	FILETIME=[6E8B87C0:01CBCDAF]
Subject: [PATCH 0/1] gtk+: add BASE_RRECOMMANDS_poky-lsb
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
X-List-Received-Date: Wed, 16 Feb 2011 07:59:28 -0000

From: Jingdong Lu <jingdong.lu@windriver.com>

Gtk+ will fail during compiling poky-image-lsb and DISTRO is "poky-lsb" because of "BASE_RRECOMMANDS".
Add BASE_RRECOMMANDS_poky-lsb for gtk+ in order to avoid the dependence of "BASE_RRECOMMANDS".

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: jingdonglu/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jingdonglu/distro

Thanks,
    Jingdong Lu <jingdong.lu@windriver.com>
---


Jingdong Lu (1):
  gtk+: add BASE_RRECOMMANDS_poky-lsb for gtk+

 meta/recipes-gnome/gtk+/gtk+.inc       |    1 +
 meta/recipes-gnome/gtk+/gtk+_2.22.1.bb |    2 +-
 2 files changed, 2 insertions(+), 1 deletions(-)


