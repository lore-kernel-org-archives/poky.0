Return-Path: <max.eliaser@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBBCCE00809; Thu,  7 Aug 2014 14:22:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD3A3E0034B
	for <poky@yoctoproject.org>; Thu,  7 Aug 2014 14:22:47 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 07 Aug 2014 14:16:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,820,1400050800"; d="scan'208";a="584990808"
Received: from maxtothemax-studio-xps-8000.jf.intel.com ([10.7.196.63])
	by orsmga002.jf.intel.com with ESMTP; 07 Aug 2014 14:22:46 -0700
From: Max Eliaser <max.eliaser@intel.com>
To: poky@yoctoproject.org
Date: Thu,  7 Aug 2014 14:20:36 -0700
Message-Id: <cover.1407446390.git.max.eliaser@intel.com>
X-Mailer: git-send-email 1.8.3.2
Subject: [PATCH 0/1] Remove references to ubootchart recipe from meta-yocto
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
X-List-Received-Date: Thu, 07 Aug 2014 21:22:58 -0000

Hello list,

This is a quick patch to remove all references to ubootchart from meta-yocto.
It accompanies a patch series I just sent to openembedded-core, removing the
ubootchart recipe from oe-core, as it is being superseded by bootchart2. See
bug 5893. [1]

Regards,
-Max Eliaser

[1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=5893
The following changes since commit 86afd7eb7c679eb065706137f28f44248f3fbc5a:

  ghostscript: Remove bogus gsfonts reference from DESCRIPTION (2014-08-06 11:14:40 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib meliaser/poky-ubootchart-removal
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=meliaser/poky-ubootchart-removal

Max Eliaser (1):
  meta-yocto: delete references to ubootchart recipe

 meta-yocto/conf/distro/include/distro_alias.inc      | 1 -
 meta-yocto/conf/distro/include/maintainers.inc       | 1 -
 meta-yocto/conf/distro/include/recipe_color.inc      | 1 -
 meta-yocto/conf/distro/include/upstream_tracking.inc | 2 --
 4 files changed, 5 deletions(-)

-- 
1.8.3.2


