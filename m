Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id DF7794C80053
	for <poky@yoctoproject.org>; Tue,  8 Feb 2011 23:54:31 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p195sVuv011476
	for <poky@yoctoproject.org>; Tue, 8 Feb 2011 21:54:31 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 8 Feb 2011 21:54:30 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 8 Feb 2011 21:54:30 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Tue,  8 Feb 2011 23:51:44 -0600
Message-Id: <cover.1297230569.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
X-OriginalArrivalTime: 09 Feb 2011 05:54:30.0886 (UTC)
	FILETIME=[D1C0A060:01CBC81D]
Subject: [PATCH 0/2] Preserve hard links
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
X-List-Received-Date: Wed, 09 Feb 2011 05:54:32 -0000

While working on another part of the system, I noticed that Poky didn't appear
to be preserving any hard links in the system.  This change not only
preserves hardlinks during packaging, but also shrinks the overall
disk space required for a build.  In my poky-image-minimal my required
footprint shank by 200+ MB.

The second part of this patch I took a guess as to the right components to
modify.  It has passed the testing I've performed so far, but I'm not
100% sure that it's correct.  I believe a bit of additional review may be
necessary.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: mhatle/hardlink
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/hardlink

Thanks,
    Mark Hatle <mark.hatle@windriver.com>
---


Mark Hatle (2):
  package.bbclass: Preserve hard links!
  Misc hard link fixes

 meta/classes/libc-package.bbclass     |   12 ++++++------
 meta/classes/package.bbclass          |   18 +++++++++++++++++-
 meta/classes/populate_sdk_deb.bbclass |    2 +-
 meta/classes/sourcepkg.bbclass        |    2 +-
 meta/classes/staging.bbclass          |    2 +-
 5 files changed, 26 insertions(+), 10 deletions(-)

-- 
1.7.3.4


