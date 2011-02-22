Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id A8D854C800C0
	for <poky@yoctoproject.org>; Tue, 22 Feb 2011 14:59:53 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 22 Feb 2011 12:59:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,207,1297065600"; d="scan'208";a="711920127"
Received: from unknown (HELO localhost) ([10.255.12.90])
	by orsmga001.jf.intel.com with ESMTP; 22 Feb 2011 12:59:52 -0800
Message-Id: <cover.1298408196.git.scott.m.rifenbark@intel.com>
Old-Date: Tue, 22 Feb 2011 14:56:36 -0600
Date: Tue, 22 Feb 2011 15:00:44 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 0/2] [DOCS] [BUGID# 628] - Added new question and note for Python 2.6 requirement.
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
X-List-Received-Date: Tue, 22 Feb 2011 20:59:53 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Part of the fix for Bug 628 is to add a note that bitbake requires
python 2.6.  I added this note in the Yocto Quick Start Guide
before the example bitbake command
that builds an image.

The other part of the fix for #628 required adding a new question to the 
FAQ appendix in the Poky Reference Manual for use of Poky when you do not 
have Python 2.6.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/docs
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/docs

Thanks,
     <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (2):
  documentation/yocto-project-qs/yocto-project-qs.xml: [BUGID# 628] -
    Added note about Python 2.6 bitbake requirement
  documentation/poky-ref-manual/faq.xml: [BUGID# 628] - Added new
    question for Python 2.6 requirement.

 documentation/poky-ref-manual/faq.xml              |   41 ++++++++++++++++++++
 .../yocto-project-qs/yocto-project-qs.xml          |    6 +++
 2 files changed, 47 insertions(+), 0 deletions(-)


