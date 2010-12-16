Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 92AC04C80BD4
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 00:46:59 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBG6kxDv017968
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 22:46:59 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 15 Dec 2010 22:46:58 -0800
Received: from localhost ([128.224.162.176]) by ala-mail06.corp.ad.wrs.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 15 Dec 2010 22:46:58 -0800
Message-Id: <cover.1292466169.git.jingdong.lu@windriver.com>
From: Jingdong Lu <jingdong.lu@windriver.com>
Date: Thu, 16 Dec 2010 10:22:49 +0800
To: poky@yoctoproject.org
CC: 
X-OriginalArrivalTime: 16 Dec 2010 06:46:58.0992 (UTC)
	FILETIME=[09733B00:01CB9CED]
Subject: [PATCH 0/1] This is fix lsb failure of ed - ed: change bin path.
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
X-List-Received-Date: Thu, 16 Dec 2010 06:47:00 -0000

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: jingdonglu/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jingdonglu/distro

Thanks,
    Jingdong Lu <jingdong.lu@windriver.com>
---


Jingdong Lu (1):
  ed: Change bin path

 meta/recipes-extended/ed/ed_1.5.bb |    6 +++++-
 1 files changed, 5 insertions(+), 1 deletions(-)


