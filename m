Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id A47174C81081
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 07:55:44 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 23 Dec 2010 05:55:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="690179104"
Received: from unknown (HELO helios) ([10.255.16.56])
	by orsmga001.jf.intel.com with SMTP; 23 Dec 2010 05:55:42 -0800
Received: by helios (sSMTP sendmail emulation); Thu, 23 Dec 2010 13:55:42 +0000
Message-Id: <cover.1293112192.git.paul.eggleton@linux.intel.com>
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Old-Date: Thu, 23 Dec 2010 13:49:52 +0000
Date: Thu, 23 Dec 2010 13:55:42 +0000
To: poky@yoctoproject.org,scott.m.rifenbark@intel.com
Subject: [PATCH 0/2] Minor documentation fixes
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
X-List-Received-Date: Thu, 23 Dec 2010 13:55:45 -0000

Some minor documentation fixes. Please review for wording and formatting.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: paule/doc-fixes
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/doc-fixes

Thanks,
    Paul Eggleton <paul.eggleton@linux.intel.com>
---


Paul Eggleton (2):
  documentation/bsp-guide/bsp.xml: fix typo in variable name
  documentation/poky-ref-manual: expand discussion of PR and INC_PR

 documentation/bsp-guide/bsp.xml                 |    2 +-
 documentation/poky-ref-manual/extendpoky.xml    |   17 +++++++++++------
 documentation/poky-ref-manual/ref-variables.xml |    8 ++++++--
 3 files changed, 18 insertions(+), 9 deletions(-)


