Return-Path: <lianhao.lu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 16E574C800A4
	for <poky@yoctoproject.org>; Fri, 10 Jun 2011 02:32:34 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 Jun 2011 00:32:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,345,1304319600"; d="scan'208";a="12533385"
Received: from llu-piketon.sh.intel.com (HELO localhost) ([10.239.36.87])
	by orsmga001.jf.intel.com with ESMTP; 10 Jun 2011 00:32:32 -0700
From: Lianhao Lu <lianhao.lu@intel.com>
To: poky@yoctoproject.org
Date: Fri, 10 Jun 2011 15:40:19 +0800
Message-Id: <cover.1307691323.git.lianhao.lu@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [IMAGE_CREATOR 0/1] Fixed the "build again" hang
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
X-List-Received-Date: Fri, 10 Jun 2011 07:32:34 -0000

NOTE: This series of patch should be applied to the branch contrib/image-creator.

Modified hob to use the correct pygtk treading model "gobject.threads_init()".
See http://faq.pygtk.org/index.py?req=show&file=faq20.006.htp for details.

This model only allows the main thread to touch the GUI (gtk) part, what is 
exactly the hob does.

The following changes since commit 116c075301878dbd769b7f39ec24381ac686502c:
  Liping Ke (1):
        Make bitbake server type configurable(xmlrpc,none)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib llu/build_again
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/build_again

Lianhao Lu (1):
  bitbake/hob: Fixed the "build again" hang.

 bitbake/lib/bb/ui/crumbs/hobeventhandler.py |    3 +++
 bitbake/lib/bb/ui/hob.py                    |    5 +++--
 2 files changed, 6 insertions(+), 2 deletions(-)


