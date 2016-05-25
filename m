Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2813BE00D33; Wed, 25 May 2016 11:32:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E62E5E00D08
	for <poky@yoctoproject.org>; Wed, 25 May 2016 11:32:49 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 25 May 2016 11:32:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,364,1459839600"; d="scan'208";a="974465639"
Received: from spmorimo-mobl3.amr.corp.intel.com (HELO localhost)
	([10.254.125.102])
	by fmsmga001.fm.intel.com with ESMTP; 25 May 2016 11:32:48 -0700
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: poky@yoctoproject.org,
	alejandro.hernandez@intel.com
Date: Wed, 25 May 2016 13:32:46 -0500
Message-Id: <cover.1464119315.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.9.3
Subject: [PATCH 0/4] Use */intel branches in genericX86 BSPs
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
X-List-Received-Date: Wed, 25 May 2016 18:32:53 -0000

In order to provide more timely support for Intel platforms, this
patchset switches the genericX86 BSPs over to using a set of dedicated
*/intel branches created for linux-yocto 4.1 and 4.4 kernels.

These branches and the corresponding kernel metadata branches provide
a place to add Intel-specific features and updates which aren't yet
upstream or may never go upstream but nevertheless are useful for
various users.

In order to have all Intel-related BSPs derive from a common source,
the genericX86 BSPs (in addition to the meta-intel BSPs) are being
switched over to these branches - there should be no loss in
functionality by doing so.

The following changes since commit 28433319ad8299aa23b1fcfdddbe100b29e86517:

  bitbake: toaster: tests browser Add test for creating a project (2016-05-11 11:32:58 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib tzanussi/intel-branches
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/intel-branches

Tom Zanussi (4):
  meta-yocto-bsp: Switch linux-yocto 4.4 genericx86* BSPs to
    standard/intel
  meta-yocto-bsp: Switch linux-yocto 4.1 genericx86* BSPs to
    standard/intel
  linux-yocto/4.1: Make standard/intel branches available
  linux-yocto/4.4: Make standard/intel branches available

 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend | 8 ++++----
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 8 ++++----
 meta/recipes-kernel/linux/linux-yocto_4.1.bb                 | 2 +-
 meta/recipes-kernel/linux/linux-yocto_4.4.bb                 | 2 +-
 4 files changed, 10 insertions(+), 10 deletions(-)

-- 
1.9.3


