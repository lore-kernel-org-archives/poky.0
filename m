Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id B67024C8007E
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 14:40:16 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1BKeG7T020113
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 12:40:16 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 11 Feb 2011 12:40:16 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 11 Feb 2011 12:40:15 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Fri, 11 Feb 2011 14:37:47 -0600
Message-Id: <cover.1297456506.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
X-OriginalArrivalTime: 11 Feb 2011 20:40:15.0910 (UTC)
	FILETIME=[E37B3C60:01CBCA2B]
Subject: [PATCH 0/1] Update new fetcher with unpack parm
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
X-List-Received-Date: Fri, 11 Feb 2011 20:40:17 -0000

Introduce the unpack param to the new fetcher2.  This allows packages
to disable the unpack of given files, even if they would normally be
unpacked automatically.

The existing "unpack" param for SRPM handling was changed to "extract".

I did change the cp to a tar action.  This would ensure that any files
that are hardlinks are preserved once copied.  I'm not sure this is
really such a big deal in the end..  (note, the hard links are local to
the set of files.. so the set in ${WORKDIR} are not linked to the set in
the recipe.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: mhatle/fetcher
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/fetcher

Thanks,
    Mark Hatle <mark.hatle@windriver.com>
---


Mark Hatle (1):
  fetch2: unpack revision

 bitbake/lib/bb/fetch2/__init__.py      |   92 ++++++++++++++++++-------------
 bitbake/lib/bb/utils.py                |   12 ++++
 meta/recipes-devtools/rpm/rpm_5.4.0.bb |    2 +-
 3 files changed, 66 insertions(+), 40 deletions(-)

-- 
1.7.3.4


