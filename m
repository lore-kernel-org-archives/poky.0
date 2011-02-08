Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id BB9814C80053
	for <poky@yoctoproject.org>; Tue,  8 Feb 2011 10:50:26 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p18GoQK1007448
	for <poky@yoctoproject.org>; Tue, 8 Feb 2011 08:50:26 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 8 Feb 2011 08:50:25 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 8 Feb 2011 08:50:25 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Tue,  8 Feb 2011 10:47:35 -0600
Message-Id: <cover.1297183506.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
X-OriginalArrivalTime: 08 Feb 2011 16:50:25.0816 (UTC)
	FILETIME=[48B4A180:01CBC7B0]
Subject: [PATCH 0/2] Fix a couple of minor bugs...
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
X-List-Received-Date: Tue, 08 Feb 2011 16:50:27 -0000

The primary change is to the fetcher to enable it to be able to unpack
SRPMs.

The second is a bug fix for something minor that just came in from the mailing
list.  It's a slight change to an error msg.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: mhatle/fetcher
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/fetcher

Thanks,
    Mark Hatle <mark.hatle@windriver.com>
---


Mark Hatle (2):
  fetch2: Add SRPM knowledge
  insane.bbclass: Fix config.log error message

 bitbake/lib/bb/fetch2/__init__.py      |   62 +++++++++++++++++++------------
 meta/classes/insane.bbclass            |    2 +-
 meta/recipes-devtools/rpm/rpm_5.4.0.bb |   52 +-------------------------
 scripts/rpm2cpio.sh                    |   53 +++++++++++++++++++++++++++
 4 files changed, 94 insertions(+), 75 deletions(-)
 create mode 100755 scripts/rpm2cpio.sh

-- 
1.7.3.4


