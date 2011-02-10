Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 968594C8006D
	for <poky@yoctoproject.org>; Thu, 10 Feb 2011 13:17:05 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 10 Feb 2011 11:17:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,451,1291622400"; d="scan'208";a="886321882"
Received: from unknown (HELO localhost) ([10.255.14.122])
	by fmsmga001.fm.intel.com with ESMTP; 10 Feb 2011 11:17:05 -0800
Message-Id: <cover.1297365140.git.sgw@linux.intel.com>
Old-Date: Thu, 10 Feb 2011 11:12:20 -0800
Date: Thu, 10 Feb 2011 11:17:04 -0800
To: poky@yoctoproject.org
From: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 0/1] Create new clean() mechanism inside fetcher2 code
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
X-List-Received-Date: Thu, 10 Feb 2011 19:17:05 -0000

From: Saul Wold <sgw@linux.intel.com>

This moves the knowledge about what to clean up from the fetcher2 in to
each of the fetcher modules.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgw/fetcher_fixes
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgw/fetcher_fixes

Thanks,
    Saul Wold <sgw@linux.intel.com>
---


Saul Wold (1):
  fetch2: Correct the clean() mechanism for the fetcher2 code

 bitbake/lib/bb/fetch2/__init__.py |   34 ++++++++++++++++++++++++++++++++++
 bitbake/lib/bb/fetch2/cvs.py      |   12 ++++++++++++
 bitbake/lib/bb/fetch2/git.py      |    6 ++++++
 bitbake/lib/bb/fetch2/local.py    |    4 ++++
 bitbake/lib/bb/fetch2/svn.py      |    7 +++++++
 meta/classes/base.bbclass         |   24 +++++++++---------------
 6 files changed, 72 insertions(+), 15 deletions(-)


