Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 21A014C800A3
	for <poky@yoctoproject.org>; Wed, 16 Feb 2011 09:47:09 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1GFl8Hl005834
	for <poky@yoctoproject.org>; Wed, 16 Feb 2011 07:47:08 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 16 Feb 2011 07:47:07 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 16 Feb 2011 07:47:07 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Wed, 16 Feb 2011 09:45:10 -0600
Message-Id: <cover.1297871058.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
X-OriginalArrivalTime: 16 Feb 2011 15:47:08.0019 (UTC)
	FILETIME=[C458CC30:01CBCDF0]
Subject: [PATCH 0/1] Fix rootfs construction
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
X-List-Received-Date: Wed, 16 Feb 2011 15:47:09 -0000

The lttng-viewer package was pulling in the lttng-viewer-dev package.
This caused a large number of -dev packages to be pulled into the rootfs.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: mhatle/lttng
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/lttng

Thanks,
    Mark Hatle <mark.hatle@windriver.com>
---


Mark Hatle (1):
  lttng-viewer: Fix rootfs contruction

 meta/recipes-kernel/lttng/lttng-viewer_0.12.36.bb |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

-- 
1.7.3.4


