Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id D270C4C81003
	for <poky@yoctoproject.org>; Tue, 14 Dec 2010 12:35:39 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 14 Dec 2010 10:35:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,343,1288594800"; d="scan'208";a="687083355"
Received: from unknown (HELO helios) ([10.255.16.81])
	by orsmga001.jf.intel.com with SMTP; 14 Dec 2010 10:35:32 -0800
Received: by helios (sSMTP sendmail emulation); Tue, 14 Dec 2010 18:35:29 +0000
Message-Id: <cover.1292351445.git.paul.eggleton@linux.intel.com>
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Tue, 14 Dec 2010 18:30:45 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/3] reworked environment variable whitelisting fixes
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
X-List-Received-Date: Tue, 14 Dec 2010 18:35:40 -0000

Adjustments to variable whitelisting to fix sstate package hashing. This supersedes
the paule/sstate contrib branch.

The bitbake changes have been discussed briefly with Richard Purdie & Chris Larson.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: paule/sstate2
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/sstate2

Thanks,
    Paul Eggleton <paul.eggleton@linux.intel.com>
---


Paul Eggleton (3):
  bitbake: allow excluding dependencies of variables
  bitbake: add optional expansion to getVarFlag()
  poky.conf: adjust variable whitelisting to fix sstate checksums

 bitbake/lib/bb/data.py       |    3 ++-
 bitbake/lib/bb/data_smart.py |    9 ++++++---
 meta/conf/distro/poky.conf   |    3 ++-
 3 files changed, 10 insertions(+), 5 deletions(-)


