Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 228B74C800A6
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 14:37:27 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p11KbN2K025526
	for <poky@yoctoproject.org>; Tue, 1 Feb 2011 12:37:23 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 1 Feb 2011 12:37:23 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 1 Feb 2011 12:37:22 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Tue,  1 Feb 2011 14:33:49 -0600
Message-Id: <cover.1296592165.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
X-OriginalArrivalTime: 01 Feb 2011 20:37:23.0109 (UTC)
	FILETIME=[D45A6550:01CBC24F]
Subject: [PATCH 0/1] Fix run-time relocation of rpm-native
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
X-List-Received-Date: Tue, 01 Feb 2011 20:37:27 -0000

Fix runtime relocation of rpm-native, bug 668.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: mhatle/rpm5
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/rpm5

Thanks,
    Mark Hatle <mark.hatle@windriver.com>
---


Mark Hatle (1):
  rpm: Add relocation to rpm-native

 meta/recipes-devtools/rpm/rpm_5.4.0.bb    |   28 +++++++++++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

-- 
1.7.3.4


