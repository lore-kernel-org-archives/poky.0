Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 419BBE007C0
	for <poky@yoctoproject.org>; Fri, 14 Feb 2014 10:21:20 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 14 Feb 2014 10:17:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,846,1384329600"; d="scan'208";a="455666402"
Received: from yocto-hm1.jf.intel.com ([10.23.232.34])
	by orsmga001.jf.intel.com with ESMTP; 14 Feb 2014 10:21:19 -0800
From: nitin.a.kamble@intel.com
To: tom.zanussi@intel.com, poky@yoctoproject.org,
	richard.purdie@linuxfoundation.org, saul.wold@intel.com
Date: Fri, 14 Feb 2014 10:17:59 -0800
Message-Id: <cover.1392401757.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.8.1.4
Subject: [PATCH 0/1] A fix for systemtap recipe
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 14 Feb 2014 18:21:21 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Here is a fix for the systemtap recipe build failure observed on AB.

Thanks,
Nitin

The following changes since commit b38c7cb7a6ab787d7be2b2c295ba58a98a954cd5:

  socat: upgrade to 1.7.2.3 (2014-02-14 12:31:10 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib nitin/misc
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=nitin/misc

Nitin A Kamble (1):
  systemtap_git: update to newer version to fix a build issue

 meta/recipes-kernel/systemtap/systemtap_git.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

-- 
1.8.1.4


