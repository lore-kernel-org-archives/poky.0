Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3F4AD4C800A3
	for <poky@yoctoproject.org>; Wed, 16 Feb 2011 09:50:57 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 Feb 2011 07:50:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,480,1291622400"; d="scan'208";a="708520602"
Received: from unknown (HELO [10.255.15.17]) ([10.255.15.17])
	by orsmga001.jf.intel.com with ESMTP; 16 Feb 2011 07:50:56 -0800
Message-ID: <4D5BF25E.7030401@linux.intel.com>
Date: Wed, 16 Feb 2011 07:50:54 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "poky >> \"poky@yoctoproject.org\"" <poky@yoctoproject.org>
Subject: [PULL] Consolidated pull request
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
X-List-Received-Date: Wed, 16 Feb 2011 15:50:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Richard,

This  builds and address issues with RPM, adds parallel make back to 
some recipes and adds support for building more docs.

Sau!



Pull URL: git://git.pokylinux.org/poky-contrib.git
   Branch: distro/master
   Browse: 
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/master

Thanks,
     Saul Wold <sgw@linux.intel.com>
---


Beth Flanagan (1):
   Doing uname without subprocess: buildstats.bbclass

Lianhao Lu (1):
   linux-libc-headers-yocto: Added RPROVIDES.

Mark Hatle (4):
   rpm: Add the ability to use the platform file during install
   rpm: Avoid fsync when writing files
   image.bbclass: Disable shell debug messages
   package_rpm: Fix solverdb generation

Saul Wold (6):
   poky.conf: make the WHITELIST for INCOMPATIBLE_LICENSE overridable
   gettext: reenable PARALLEL_MAKE
   ncurses: reenable PARALLEL_MAKE
   pango: reenable PARALLEL_MAKE
   eds-dbus: reenable PARALLEL_MAKE
   rpm: Fix upstream checksums

Scott Garman (5):
   texinfo: recipe cleanup, add native support
   sgml-common-native: fix license info and checksum fields
   docbook-utils-native: new recipe v0.6.14
   opensp: improve configuration and install steps
   iputils: enable generation of man pages

  meta/classes/buildstats.bbclass                    |   11 +-
  meta/classes/image.bbclass                         |    2 +-
  meta/classes/package_rpm.bbclass                   |   47 +++++---
  meta/classes/populate_sdk_rpm.bbclass              |    7 +-
  meta/classes/rootfs_rpm.bbclass                    |    9 +-
  meta/conf/distro/poky.conf                         |    6 +-
  meta/recipes-core/gettext/gettext_0.17.bb          |    2 +-
  meta/recipes-core/ncurses/ncurses_5.7.bb           |    2 +-
  .../docbook-utils/docbook-utils-native_0.6.14.bb   |   48 +++++++
  meta/recipes-devtools/opensp/opensp_1.5.bb         |   18 +++
  meta/recipes-devtools/rpm/rpm/rpm-nofsync.patch    |   34 +++++
  meta/recipes-devtools/rpm/rpm/rpm-platform.patch   |  132 
++++++++++++++++++++
  meta/recipes-devtools/rpm/rpm/rpm-showrc.patch     |   23 ++++
  meta/recipes-devtools/rpm/rpm_5.4.0.bb             |   13 ++-
  .../sgml-common/sgml-common-native_0.6.3.bb        |   10 +-
  meta/recipes-extended/iputils/iputils_s20101006.bb |   13 +--
  meta/recipes-extended/texinfo/texinfo_4.13a.bb     |   26 +++--
  meta/recipes-graphics/pango/pango_1.28.3.bb        |    2 +-
  .../linux-libc-headers-yocto_git.bb                |    4 +-
  meta/recipes-sato/eds/eds-dbus_git.bb              |    2 +-
  20 files changed, 344 insertions(+), 67 deletions(-)
  create mode 100644 
meta/recipes-devtools/docbook-utils/docbook-utils-native_0.6.14.bb
  create mode 100644 meta/recipes-devtools/rpm/rpm/rpm-nofsync.patch
  create mode 100644 meta/recipes-devtools/rpm/rpm/rpm-platform.patch
  create mode 100644 meta/recipes-devtools/rpm/rpm/rpm-showrc.patch


-- 
     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System


