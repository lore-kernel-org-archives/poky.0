Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id BFF2A4C80FAD
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 13:05:30 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Jan 2011 11:05:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,345,1291622400"; d="scan'208";a="698492685"
Received: from scott-desktop.jf.intel.com (HELO localhost) ([10.7.201.149])
	by orsmga001.jf.intel.com with ESMTP; 19 Jan 2011 11:05:30 -0800
Message-Id: <cover.1295462360.git.scott@scott-desktop.(none)>
From: Scott Rifenbark <scott@scott-desktop.(none)>
Old-Date: Wed, 19 Jan 2011 10:39:20 -0800
Date: Wed, 19 Jan 2011 11:05:34 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/2] [DOCS] Updates to YP Quick Start
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
X-List-Received-Date: Wed, 19 Jan 2011 19:05:31 -0000

Revised the manual for better grammar and more technically accurate wordings.
There are lots of editorial changes here.  
Worked closely with Scott Garman on the revision.

Also updated the figure for the using a pre-built image section.  Changed
the wording from "File System" to "Filesystem"


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/docs
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/docs

Thanks,
     <>
---


Scott Rifenbark (2):
  documentation/yocto-project-qs/yocto-project-qs.xml: General edits to
    YP QS.
  documentation/yocto-project-qs/figures/using-a-pre-built-image.png: 
    Updated figure

 .../figures/using-a-pre-built-image.png            |  Bin 13228 -> 12733 bytes
 .../yocto-project-qs/yocto-project-qs.xml          |  187 ++++++++++++++------
 2 files changed, 133 insertions(+), 54 deletions(-)
 mode change 100755 => 100644 documentation/yocto-project-qs/figures/using-a-pre-built-image.png


