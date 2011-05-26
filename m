Return-Path: <liping.ke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7F13E4C80A79
	for <poky@yoctoproject.org>; Wed, 25 May 2011 22:05:19 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 25 May 2011 20:05:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,270,1304319600"; 
   d="scan'208";a="5040697"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by orsmga001.jf.intel.com with ESMTP; 25 May 2011 20:05:18 -0700
From: Ke Liping <liping.ke@intel.com>
To: poky@yoctoproject.org
Date: Thu, 26 May 2011 10:53:38 +0800
Message-Id: <cover.1306376361.git.liping.ke@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/4][Image Creator]Add mulitple extra cache fields request support
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
X-List-Received-Date: Thu, 26 May 2011 03:05:19 -0000

From: Liping Ke <liping.ke@intel.com>

The series of patch are for mplementing multiple extra cache fields
request support.If user needs to request extra cache fields besides
CoreRecipeInfo fields, just add a new XXXRecipeInfo class definition
as Image Creator UI Hob Does.
For implementing this new feature, we refactory current cache code,
remove namedtuple and define corresponding class for dynamical cache
fields support per different cache usage request.

Liping Ke (4):
  Refactory Current Cache implementation
  Introduce extra cache class for image creator
  Introduce new param caches_array into Cache impl.
  Implement multiple extra cache fields request support

 bitbake/lib/bb/cache.py       |  532 ++++++++++++++++++++++-------------------
 bitbake/lib/bb/cache_extra.py |   54 ++++
 bitbake/lib/bb/cooker.py      |   70 ++++--
 bitbake/lib/bb/shell.py       |    2 +-
 bitbake/lib/bb/ui/hob.py      |    2 +
 5 files changed, 396 insertions(+), 264 deletions(-)
 create mode 100644 bitbake/lib/bb/cache_extra.py


