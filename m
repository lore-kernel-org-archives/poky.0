Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6E95F4C81231
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 13:31:08 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 27 Jan 2011 11:31:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,387,1291622400"; d="scan'208";a="701391641"
Received: from eflanlinux.jf.intel.com (HELO localhost) ([10.7.201.154])
	by orsmga001.jf.intel.com with ESMTP; 27 Jan 2011 11:31:08 -0800
Message-Id: <cover.1296156450.git.elizabeth.flanagan@intel.com>
Old-Date: Thu, 27 Jan 2011 11:27:30 -0800
Date: Thu, 27 Jan 2011 11:33:05 -0800
To: poky@yoctoproject.org
CC: 
From: Beth Flanagan <elizabeth.flanagan@intel.com>
Subject: [PATCH 0/1] License tracking
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
X-List-Received-Date: Thu, 27 Jan 2011 19:31:08 -0000

From: Beth Flanagan <elizabeth.flanagan@intel.com>

Re-pull request for license tracking with Josh's requested fixes.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: eflanagan/license
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=eflanagan/license

Thanks,
    Beth Flanagan <elizabeth.flanagan@intel.com>
---


Beth Flanagan (1):
  Initial commit of license reporting:

 meta/classes/license.bbclass          |  101 +++++
 meta/conf/distro/poky.conf            |    4 +-
 meta/files/common-licenses/Apache-2.0 |  202 ++++++++++
 meta/files/common-licenses/Artistic   |  131 +++++++
 meta/files/common-licenses/BSD        |   26 ++
 meta/files/common-licenses/GFDL       |  451 ++++++++++++++++++++++
 meta/files/common-licenses/GFDL-1.2   |  397 +++++++++++++++++++
 meta/files/common-licenses/GFDL-1.3   |  451 ++++++++++++++++++++++
 meta/files/common-licenses/GPL        |  676 +++++++++++++++++++++++++++++++++
 meta/files/common-licenses/GPLv2      |  339 +++++++++++++++++
 meta/files/common-licenses/GPLv3      |  676 +++++++++++++++++++++++++++++++++
 meta/files/common-licenses/LGPL       |  165 ++++++++
 meta/files/common-licenses/LGPLv2     |  481 +++++++++++++++++++++++
 meta/files/common-licenses/LGPLv2.1   |  510 +++++++++++++++++++++++++
 meta/files/common-licenses/LGPLv3     |  165 ++++++++
 15 files changed, 4774 insertions(+), 1 deletions(-)
 create mode 100644 meta/classes/license.bbclass
 create mode 100644 meta/files/common-licenses/Apache-2.0
 create mode 100644 meta/files/common-licenses/Artistic
 create mode 100644 meta/files/common-licenses/BSD
 create mode 100644 meta/files/common-licenses/GFDL
 create mode 100644 meta/files/common-licenses/GFDL-1.2
 create mode 100644 meta/files/common-licenses/GFDL-1.3
 create mode 100644 meta/files/common-licenses/GPL
 create mode 100644 meta/files/common-licenses/GPLv2
 create mode 100644 meta/files/common-licenses/GPLv3
 create mode 100644 meta/files/common-licenses/LGPL
 create mode 100644 meta/files/common-licenses/LGPLv2
 create mode 100644 meta/files/common-licenses/LGPLv2.1
 create mode 100644 meta/files/common-licenses/LGPLv3


