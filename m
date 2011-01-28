Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 70E7F4C8123F
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 23:56:12 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0S5uCoI021000
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 21:56:12 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 27 Jan 2011 21:56:11 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 27 Jan 2011 21:56:11 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Thu, 27 Jan 2011 23:52:08 -0600
Message-Id: <cover.1296193803.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
X-OriginalArrivalTime: 28 Jan 2011 05:56:11.0469 (UTC)
	FILETIME=[10BF5FD0:01CBBEB0]
Subject: [PATCH 0/1] poky-image-minimal -- disable package tool
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
X-List-Received-Date: Fri, 28 Jan 2011 05:56:12 -0000

When selecting poky-image-minimal, the package database is removed by
default.  However the packaging software is still installed, but it won't
function without the database.  So in order to save space remove the
package tool from the filesystem image.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: mhatle/image
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/image

Thanks,
    Mark Hatle <mark.hatle@windriver.com>
---


Mark Hatle (1):
  poky-image-minimal*: Disable packaging tool by default

 meta/recipes-core/images/poky-image-minimal-dev.bb |    7 ++++++-
 meta/recipes-core/images/poky-image-minimal.bb     |    6 +++++-
 2 files changed, 11 insertions(+), 2 deletions(-)

-- 
1.7.3.4


