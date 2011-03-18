Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 799664C800A6
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 12:31:00 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 18 Mar 2011 10:30:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,206,1299484800"; d="scan'208";a="898737989"
Received: from unknown (HELO localhost) ([10.255.12.99])
	by fmsmga001.fm.intel.com with ESMTP; 18 Mar 2011 10:30:59 -0700
Message-Id: <cover.1300469401.git.scott.m.rifenbark@intel.com>
Old-Date: Fri, 18 Mar 2011 11:30:01 -0600
Date: Fri, 18 Mar 2011 11:31:52 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 0/6] [DOCS] Quick STart updates
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
X-List-Received-Date: Fri, 18 Mar 2011 17:31:00 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

UPdtates to the QS inculding style sheet, example changes (these 
were guesses), FAQ reference for proxy issue.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/qs-work
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/qs-work

Thanks,
     <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (6):
  [BUGID# 857] - documentation/yocto-project-qs/yocto-project-qs.xml:
    added groff package
  documentation/yocto-project-qs/style.css:  Updated styles
  documentation/yocto-project-qs/style.css:  Updated note text color
  documentation/yocto-project-qs/yocto-project-qs.xml: 1.0 edits
    applied to examples
  documentation/yocto-project-qs/yocto-project-qs.xml: Added references
    to FAQs
  documentation/yocto-project-qs/yocto-project-qs.xml: Note added about
    proxy

 documentation/yocto-project-qs/style.css           |   23 ++++---
 .../yocto-project-qs/yocto-project-qs.xml          |   63 ++++++++++++-------
 2 files changed, 54 insertions(+), 32 deletions(-)


