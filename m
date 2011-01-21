Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6E9ED4C81206
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 03:27:51 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0L9RpJx004819
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 01:27:51 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 21 Jan 2011 01:27:50 -0800
Received: from localhost ([128.224.162.176]) by ala-mail06.corp.ad.wrs.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 21 Jan 2011 01:27:50 -0800
Message-Id: <a03065ccf1d4ffbccab27db567b2f201f5dd753e.1295601800.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1295601800.git.jingdong.lu@windriver.com>
References: <cover.1295601800.git.jingdong.lu@windriver.com>
From: Jingdong Lu <jingdong.lu@windriver.com>
Old-Date: Fri, 21 Jan 2011 17:20:46 +0800
Date: Fri, 21 Jan 2011 17:26:32 +0800
To: poky@yoctoproject.org
CC: 
X-OriginalArrivalTime: 21 Jan 2011 09:27:51.0378 (UTC)
	FILETIME=[79977320:01CBB94D]
Subject: [PATCH 4/4] liburi-perl: Rename liburi-perl
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
X-List-Received-Date: Fri, 21 Jan 2011 09:27:51 -0000

Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
---
 .../perl/{liburi-perl_1.56 => liburi-perl_1.56.bb} |    0
 1 files changed, 0 insertions(+), 0 deletions(-)
 rename meta/recipes-devtools/perl/{liburi-perl_1.56 => liburi-perl_1.56.bb} (100%)

diff --git a/meta/recipes-devtools/perl/liburi-perl_1.56 b/meta/recipes-devtools/perl/liburi-perl_1.56.bb
similarity index 100%
rename from meta/recipes-devtools/perl/liburi-perl_1.56
rename to meta/recipes-devtools/perl/liburi-perl_1.56.bb
-- 
1.7.0.4


