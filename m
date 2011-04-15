Return-Path: <lei.mei@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 224724C810A9
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 09:18:10 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 15 Apr 2011 07:18:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,219,1301900400"; d="scan'208";a="419907097"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.47.161])
	by azsmga001.ch.intel.com with ESMTP; 15 Apr 2011 07:17:51 -0700
Message-Id: <cover.1302856115.git.lei.mei@intel.com>
Old-Date: Fri, 15 Apr 2011 16:28:35 +0800
To: poky@yoctoproject.org
CC: 
From: Mei Lei <lei.mei@intel.com>
Subject: [PATCH 0/5]libffi,psmisc,e2fsprogs,libidn upgrade
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
Date: Fri, 15 Apr 2011 14:18:10 -0000
X-Original-Date: 五, 15  4月 2011 22:22:39 +0800
X-List-Received-Date: Fri, 15 Apr 2011 14:18:10 -0000

From: Mei Lei <lei.mei@intel.com>

Hi Saul,
	This pull request contain 4 recipes upgrade, please help to review it and pull.

Thanks,
Lei

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lmei3/upgrade-0413
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/upgrade-0413

Thanks,
    Mei Lei <lei.mei@intel.com>
---


Mei Lei (5):
  libidn: upgrade from 1.19 to 1.20
  e2fsprogs: Upgrade from 1.41.12 to 1.41.14
  psmisc: Upgrade from 22.2 to 22.13
  libffi: Upgrade from 3.0.9 to 3.0.10rc0
  distro_tracking_fields.inc: update e2fsprogs,libidn,libffi,psmisc
    information

 .../conf/distro/include/distro_tracking_fields.inc |   27 ++++++++++---------
 .../acinclude.m4                                   |    0
 .../mkdir.patch                                    |    3 ++
 .../quotefix.patch                                 |    4 +++
 .../{e2fsprogs_1.41.12.bb => e2fsprogs_1.41.14.bb} |    6 ++--
 .../libidn/{libidn_1.19.bb => libidn_1.20.bb}      |    8 +++---
 .../psmisc/files/libintl-link.patch                |   27 ++++++++++---------
 meta/recipes-extended/psmisc/psmisc_22.13.bb       |    7 +++++
 meta/recipes-extended/psmisc/psmisc_22.2.bb        |    7 -----
 .../{libffi_3.0.9.bb => libffi_3.0.10rc0.bb}       |    6 ++--
 10 files changed, 52 insertions(+), 43 deletions(-)
 rename meta/recipes-devtools/e2fsprogs/{e2fsprogs-1.41.12 => e2fsprogs-1.41.14}/acinclude.m4 (100%)
 rename meta/recipes-devtools/e2fsprogs/{e2fsprogs-1.41.12 => e2fsprogs-1.41.14}/mkdir.patch (91%)
 rename meta/recipes-devtools/e2fsprogs/{e2fsprogs-1.41.12 => e2fsprogs-1.41.14}/quotefix.patch (93%)
 rename meta/recipes-devtools/e2fsprogs/{e2fsprogs_1.41.12.bb => e2fsprogs_1.41.14.bb} (91%)
 rename meta/recipes-extended/libidn/{libidn_1.19.bb => libidn_1.20.bb} (68%)
 create mode 100644 meta/recipes-extended/psmisc/psmisc_22.13.bb
 delete mode 100644 meta/recipes-extended/psmisc/psmisc_22.2.bb
 rename meta/recipes-gnome/libffi/{libffi_3.0.9.bb => libffi_3.0.10rc0.bb} (79%)


