Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1A9D84C800BF
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 13:36:12 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p13JaBKC005835
	for <poky@yoctoproject.org>; Thu, 3 Feb 2011 11:36:11 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 3 Feb 2011 11:36:11 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 3 Feb 2011 11:36:11 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Thu,  3 Feb 2011 13:32:49 -0600
Message-Id: <cover.1296761455.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
X-OriginalArrivalTime: 03 Feb 2011 19:36:11.0429 (UTC)
	FILETIME=[9CAFFD50:01CBC3D9]
Subject: [PATCH 0/2] Revised summary & description patch
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
X-List-Received-Date: Thu, 03 Feb 2011 19:36:14 -0000

This is an update pull request for the revised summary & description
patch.  It stop the failure mentioned by Saul in a previous email.

The second chunk of the patch is new and includes the workaround I sent 
earlier today on the prelink documentation issue.  I'm not sure this is 
really the right patch, but it should unblock people.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: mhatle/wrsync
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/wrsync

Thanks,
    Mark Hatle <mark.hatle@windriver.com>
---


Mark Hatle (2):
  bitbake.conf & package.bbclass: Use default SUMMARY and DESCRIPTION
  Docbook workaround

 meta/classes/package.bbclass                 |    5 +++-
 meta/conf/bitbake.conf                       |   30 +++++++++++++++++++-------
 meta/recipes-devtools/prelink/prelink_git.bb |    5 ++++
 3 files changed, 31 insertions(+), 9 deletions(-)

-- 
1.7.3.4


