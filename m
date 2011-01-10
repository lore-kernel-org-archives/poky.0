Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 31DB64C8085F
	for <poky@yoctoproject.org>; Mon, 10 Jan 2011 13:08:33 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 10 Jan 2011 11:08:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,302,1291622400"; d="scan'208";a="591586744"
Received: from eflanlinux.jf.intel.com (HELO localhost) ([10.7.201.154])
	by orsmga002.jf.intel.com with ESMTP; 10 Jan 2011 11:08:32 -0800
Message-Id: <cover.1294686399.git.elizabeth.flanagan@intel.com>
From: Beth Flanagan <elizabeth.flanagan@intel.com>
Old-Date: Mon, 10 Jan 2011 11:06:39 -0800
Date: Mon, 10 Jan 2011 11:09:31 -0800
To: poky@yoctoproject.org
Subject: [PATCH 0/1] Poky License Reporting
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
X-List-Received-Date: Mon, 10 Jan 2011 19:08:33 -0000

Initial commit of license reporting:

This is an intial commit for the license reporting system. A few notes:
The LICENSE fields needs to be standardized throughout poky.

I've seen a few places where Apache-v2.0 is written differently and
I'm sure this will bug things out. This does not put the license data
on the rootfs. I'm still working on that capability. Also, I provide both
the actual license text and a link to the best guess of the
generic_license. That guessing is not very robust and I'm loath to get
into a bunch of pattern matching rather than standardize LICENSE.

This adds one new param to poky.conf and one new to license.bbclass:

LICENSE_DIR: the base directory we copy all the license results to (set
in license.bbclass)
COMMON_LICENSE_DIR: this is the directory that holds all the common
generic license files. currently meta/files/common-licenses (set in
poky.conf)

TODO:
- We should verify the common-licenses. I stripped these from my Ubuntu
  10.10 system.
- Enable ENABLE_ROOTFS_LICENSES. This is commented out in poky.conf. The
  code isn't written for it, but we should allow that capability, although
  the resulting image created would be a lot larger.
- More common-licenses. I don't include bzip, zlib, ICS.... I should,
  but that means tracking down a lot of licenses.
- General cleanup of licensing and standardization of names. We should
  standardize on a naming convention. What's in licenses.conf should
  match up with what is in the recipes which should match with what is
  in common-licenses. Outside the scope of this though. See:
  http://bugzilla.pokylinux.org/show_bug.cgi?id=650

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: eflanagan/license
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=eflanagan/license

Thanks,
    Beth Flanagan <elizabeth.flanagan@intel.com>
---


Beth Flanagan (1):
  Initial commit of license reporting:

 meta/classes/license.bbclass          |   92 +++++
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
 15 files changed, 4765 insertions(+), 1 deletions(-)
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


