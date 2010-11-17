Return-Path: <qing.he@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4240A4C80A74
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 02:41:15 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 17 Nov 2010 00:41:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,210,1288594800"; d="scan'208";a="574631997"
Received: from qhe2-db.sh.intel.com ([10.239.13.109])
	by orsmga002.jf.intel.com with ESMTP; 17 Nov 2010 00:41:14 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>) id 1PIdVM-0007gA-1H
	for poky@yoctoproject.org; Wed, 17 Nov 2010 16:36:36 +0800
Message-Id: <cover.1289982751.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Date: Wed, 17 Nov 2010 16:32:31 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/1] curl-native build fix
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
X-List-Received-Date: Wed, 17 Nov 2010 08:41:15 -0000


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: qhe/fix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/fix

Thanks,
    Qing He
---


Qing He (1):
  curl: fix native dependency

 meta/recipes-support/curl/curl_7.21.2.bb |    7 +++++--
 1 files changed, 5 insertions(+), 2 deletions(-)


