Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id CD2254C800BA
	for <poky@yoctoproject.org>; Fri, 25 Mar 2011 12:37:54 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 25 Mar 2011 10:37:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,244,1299484800"; d="scan'208";a="725170373"
Received: from unknown (HELO localhost) ([10.255.12.171])
	by orsmga001.jf.intel.com with ESMTP; 25 Mar 2011 10:37:53 -0700
Message-Id: <cover.1301074648.git.scott.m.rifenbark@intel.com>
Old-Date: Fri, 25 Mar 2011 11:37:28 -0600
Date: Fri, 25 Mar 2011 11:38:58 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 0/1] [DOCS] ADT Manual update - Added instruction for building ADT tarball
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
X-List-Received-Date: Fri, 25 Mar 2011 17:37:55 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

I added a note in the "Installing the ADT" section (2.1) saying that
if you need to build the ADT tarball you can use
'bitbake adt-installer'.  I also changed the location of the
toolchain from '...yocto-0.9' to '...yocto-1.0'.  Finally,
I changed the host sub-directory in the toolchain directory
from 'i586' to i686'.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/adt-work
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/adt-work

Thanks,
     <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (1):
  documentation/adt-manual/adt-prepare.xml: Added instruction for
    building ADT tarball

 documentation/adt-manual/adt-prepare.xml |   14 +++++++++++---
 1 files changed, 11 insertions(+), 3 deletions(-)


