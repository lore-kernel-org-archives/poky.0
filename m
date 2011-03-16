Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7AACE4C805A8
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 12:49:33 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 16 Mar 2011 10:49:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,195,1299484800"; d="scan'208";a="897955110"
Received: from unknown (HELO helios) ([10.255.12.144])
	by fmsmga001.fm.intel.com with SMTP; 16 Mar 2011 10:49:31 -0700
Received: by helios (sSMTP sendmail emulation); Wed, 16 Mar 2011 17:49:30 +0000
Message-Id: <cover.1300297594.git.paul.eggleton@linux.intel.com>
Old-Date: Wed, 16 Mar 2011 17:46:34 +0000
Date: Wed, 16 Mar 2011 17:49:30 +0000
To: poky@yoctoproject.org
CC: 
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 0/1] check bitbake wrapper/pseudo functionality
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
X-List-Received-Date: Wed, 16 Mar 2011 17:49:33 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

This patch detects basic problems with the bitbake wrapper and pseudo.

Fixes [YOCTO #653]

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: paule/master-pseudo-sanity
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/master-pseudo-sanity

Thanks,
    Paul Eggleton <paul.eggleton@linux.intel.com>
---


Paul Eggleton (1):
  sanity: detect if bitbake wrapper is not being used or pseudo is
    broken

 meta/classes/sanity.bbclass |   25 ++++++++++++++++++++++++-
 scripts/bitbake             |    3 +++
 scripts/poky-env-internal   |    2 +-
 3 files changed, 28 insertions(+), 2 deletions(-)


