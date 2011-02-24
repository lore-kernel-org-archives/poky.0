Return-Path: <scott.a.garman@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 91E724C800B1
	for <poky@yoctoproject.org>; Thu, 24 Feb 2011 12:26:55 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 24 Feb 2011 10:26:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,219,1297065600"; d="scan'208";a="712863980"
Received: from sgarman-ws.jf.intel.com (HELO localhost) ([10.7.199.157])
	by orsmga001.jf.intel.com with ESMTP; 24 Feb 2011 10:26:51 -0800
Message-Id: <cover.1298571891.git.scott.a.garman@intel.com>
Old-Date: Thu, 24 Feb 2011 10:24:51 -0800
Date: Thu, 24 Feb 2011 10:27:07 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
Subject: [PATCH 0/1] gtk+ doc build fix
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
X-List-Received-Date: Thu, 24 Feb 2011 18:26:55 -0000

From: Scott Garman <scott.a.garman@intel.com>

Hi Saul,

This commit fixes a bug reported by Wolfgang Denk. I was able to
reproduce it on my Fedora 14 build system and verify this fix works.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgarman/gtk-doc-fix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/gtk-doc-fix

Thanks,
    Scott Garman <scott.a.garman@intel.com>
---


Scott Garman (1):
  gtk+: disable build of faq and tutorial docs

 .../recipes-gnome/gtk+/gtk+-2.22.1/doc-fixes.patch |   44 +++++++-------------
 meta/recipes-gnome/gtk+/gtk+_2.22.1.bb             |    2 +-
 2 files changed, 16 insertions(+), 30 deletions(-)

-- 
1.7.4


