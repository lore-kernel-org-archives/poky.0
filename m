Return-Path: <edwin.zhai@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2A2064C811CB
	for <poky@yoctoproject.org>; Fri, 19 Nov 2010 05:21:27 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 19 Nov 2010 03:21:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,222,1288594800"; d="scan'208";a="575472789"
Received: from gzhai-nhm.sh.intel.com (HELO localhost) ([10.239.36.111])
	by orsmga002.jf.intel.com with ESMTP; 19 Nov 2010 03:21:26 -0800
Message-Id: <ae5bd3341cb1321a9a401a177ab317459740d364.1290165996.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1290165996.git.edwin.zhai@intel.com>
References: <cover.1290165996.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Fri, 19 Nov 2010 08:00:36 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 03/17] libuser: Update to 0.56.18
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
X-List-Received-Date: Fri, 19 Nov 2010 11:21:27 -0000

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../disable-sgml-doc.patch                         |    0
 .../{libuser_0.56.16.bb => libuser_0.56.18.bb}     |    0
 2 files changed, 0 insertions(+), 0 deletions(-)
 rename meta/recipes-extended/libuser/{libuser-0.56.16 => libuser-0.56.18}/disable-sgml-doc.patch (100%)
 rename meta/recipes-extended/libuser/{libuser_0.56.16.bb => libuser_0.56.18.bb} (100%)

diff --git a/meta/recipes-extended/libuser/libuser-0.56.16/disable-sgml-doc.patch b/meta/recipes-extended/libuser/libuser-0.56.18/disable-sgml-doc.patch
similarity index 100%
rename from meta/recipes-extended/libuser/libuser-0.56.16/disable-sgml-doc.patch
rename to meta/recipes-extended/libuser/libuser-0.56.18/disable-sgml-doc.patch
diff --git a/meta/recipes-extended/libuser/libuser_0.56.16.bb b/meta/recipes-extended/libuser/libuser_0.56.18.bb
similarity index 100%
rename from meta/recipes-extended/libuser/libuser_0.56.16.bb
rename to meta/recipes-extended/libuser/libuser_0.56.18.bb
-- 
1.6.3.3


