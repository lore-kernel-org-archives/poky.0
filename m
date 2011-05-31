Return-Path: <liping.ke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id A8D0F4C8088C
	for <poky@yoctoproject.org>; Tue, 31 May 2011 03:27:54 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 31 May 2011 01:27:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,296,1304319600"; 
   d="scan'208";a="9719504"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by fmsmga002.fm.intel.com with ESMTP; 31 May 2011 01:27:47 -0700
From: Ke Liping <liping.ke@intel.com>
To: poky@yoctoproject.org
Date: Tue, 31 May 2011 16:15:56 +0800
Message-Id: <cover.1306829495.git.liping.ke@intel.com>
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
X-List-Received-Date: Tue, 31 May 2011 08:27:54 -0000

From: Liping Ke <liping.ke@intel.com>

The series of patch are for mplementing multiple extra cache fields
request support.If user needs to request extra cache fields besides
CoreRecipeInfo fields, just add a new XXXRecipeInfo class definition
as Image Creator UI Hob Does.
For implementing this new feature, we refactory current cache code,
remove namedtuple and define corresponding class for dynamical cache
fields support per different cache usage request.

The following changes since commit 949c3521abb7fe9fc8f367ec4ce6b8a4ed8a1267:
  Bruce Ashfield (1):
        linux-yocto: update meta SRCREV

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib lke/cache
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lke/cache

Liping Ke (4):
  Refactory Current Cache implementation
  Introduce extra cache class for image creator
  Introduce new param caches_array into Cache impl.
  Implement multiple extra cache fields request support

 bitbake/lib/bb/cache.py       |  532 ++++++++++++++++++++++-------------------
 bitbake/lib/bb/cache_extra.py |   54 ++++
 bitbake/lib/bb/cooker.py      |   68 ++++--
 bitbake/lib/bb/shell.py       |    2 +-
 bitbake/lib/bb/ui/hob.py      |    2 +
 5 files changed, 394 insertions(+), 264 deletions(-)
 create mode 100644 bitbake/lib/bb/cache_extra.py


