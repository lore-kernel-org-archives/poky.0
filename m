Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6628C4C802F2
	for <poky@yoctoproject.org>; Tue, 22 Mar 2011 12:42:20 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 22 Mar 2011 10:42:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,225,1299484800"; d="scan'208";a="722987359"
Received: from unknown (HELO localhost) ([10.255.12.169])
	by orsmga001.jf.intel.com with ESMTP; 22 Mar 2011 10:42:19 -0700
Message-Id: <cover.1300815668.git.scott.m.rifenbark@intel.com>
Old-Date: Tue, 22 Mar 2011 11:41:08 -0600
Date: Tue, 22 Mar 2011 11:43:18 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 0/1] [DOCS] Quick Start update from Colin Walters
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
X-List-Received-Date: Tue, 22 Mar 2011 17:42:20 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

In the Quick Start there is a note indicating that you should run
'bitbake make-native' followed by 'bitbake poky-image-sato' if you
are running Fedora 14 or another distribution that ships with GNU.
Colin Walters submitted a patch that offerred an URL for further
explanation on a Make Bug.  The URL is
http://www.mail-archive.com/bug-make@gnu.org/msg06220.html.  Rather
than submit Colin's patch verbatim I updated the note to include the
reference with a little different wording.

This extra information submitted by Colin will be very helpful.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/qs-work
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/qs-work

Thanks,
     <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (1):
  documentation/yocto-project-qs/yocto-project-qs.xml: Bug reference
    added courtesy Colin Walters

 .../yocto-project-qs/yocto-project-qs.xml          |    6 ++++--
 1 files changed, 4 insertions(+), 2 deletions(-)


