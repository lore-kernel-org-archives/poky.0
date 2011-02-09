Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5FB614C8006D
	for <poky@yoctoproject.org>; Wed,  9 Feb 2011 07:58:43 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 09 Feb 2011 05:58:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,446,1291622400"; d="scan'208";a="705772564"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga001.jf.intel.com with ESMTP; 09 Feb 2011 05:58:42 -0800
From: Yu Ke <ke.yu@intel.com>
To: poky@yoctoproject.org
Date: Wed,  9 Feb 2011 22:00:51 +0800
Message-Id: <30cb044469c390de534b770ce7c33a7e1b8499cc.1297258936.git.ke.yu@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1297258935.git.ke.yu@intel.com>
References: <cover.1297258935.git.ke.yu@intel.com>
Subject: [PATCH 1/4] mesa-dri-7.10: replace GPLv3 talloc with MIT-x licensed ralloc
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
X-List-Received-Date: Wed, 09 Feb 2011 13:58:43 -0000

mesa 7.10.1 devel branch has the patch to replace talloc with ralloc.
so add a patch to sync with 7.10.1 devel branch.

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../mesa/files/talloc-removal.patch                |15571 ++++++++++++++++++++
 meta/recipes-graphics/mesa/mesa-dri_7.10.bb        |    5 +-
 2 files changed, 15574 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-graphics/mesa/files/talloc-removal.patch

 the patch is too big (>500K) to be attached in this email. please see detail in
 http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/commit/?h=kyu3/mesa&id=30cb044469c390de534b770ce7c33a7e1b8499cc


