Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 152014C80B71
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 12:16:09 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 Dec 2010 10:16:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,356,1288594800"; d="scan'208";a="637098476"
Received: from unknown (HELO helios) ([10.255.16.41])
	by fmsmga002.fm.intel.com with SMTP; 16 Dec 2010 10:16:08 -0800
Received: by helios (sSMTP sendmail emulation); Thu, 16 Dec 2010 18:16:05 +0000
Message-Id: <cover.1292523172.git.paul.eggleton@linux.intel.com>
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Thu, 16 Dec 2010 18:12:52 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/3] sanity checking improvements
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
X-List-Received-Date: Thu, 16 Dec 2010 18:16:10 -0000

These changes fix indenting in sanity.bbclass, provide a fix for bug #562
and introduce the (previously posted) check for filename length on top.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: paule/sanity-checks
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/sanity-checks

Thanks,
    Paul Eggleton <paul.eggleton@linux.intel.com>
---


Paul Eggleton (3):
  sanity.bbclass: make indenting consistent
  sanity.bbclass: allow minimisation of impact of more invasive sanity
    checks
  sanity.bbclass: add check for creation of long filenames

 meta/classes/sanity.bbclass |  502 ++++++++++++++++++++++++-------------------
 meta/conf/sanity.conf       |    1 +
 2 files changed, 287 insertions(+), 216 deletions(-)


