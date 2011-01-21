Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 97B724C811B1
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 03:40:05 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0L9e53Q007644
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 01:40:05 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 21 Jan 2011 01:40:04 -0800
Received: from localhost ([128.224.162.176]) by ala-mail06.corp.ad.wrs.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 21 Jan 2011 01:40:04 -0800
Message-Id: <cover.1295602319.git.jingdong.lu@windriver.com>
From: Jingdong Lu <jingdong.lu@windriver.com>
Old-Date: Fri, 21 Jan 2011 17:31:59 +0800
Date: Fri, 21 Jan 2011 17:38:46 +0800
To: poky@yoctoproject.org
CC: 
X-OriginalArrivalTime: 21 Jan 2011 09:40:05.0517 (UTC)
	FILETIME=[2F2C2BD0:01CBB94F]
Subject: [PATCH 0/2] Fix some failures of LSB.
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
X-List-Received-Date: Fri, 21 Jan 2011 09:40:05 -0000

Libstdc++, Cpp-T2C tests: need a number of locales setup and need libstdc++.so support.
Core tests: will check some directory whether they exist, eg, "/usr/local".

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: jingdonglu/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jingdonglu/distro

Thanks,
    Jingdong Lu <jingdong.lu@windriver.com>
---


Jingdong Lu (2):
  base-files: Add to make some directories needed by LSB.
  gcc: Add "--enable-clocale=gnu" option explicitly

 meta/recipes-core/base-files/base-files_3.0.14.bb  |   18 +++++++++++++++++-
 meta/recipes-devtools/gcc/gcc-configure-common.inc |    2 +-
 2 files changed, 18 insertions(+), 2 deletions(-)


