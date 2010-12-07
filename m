Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id EE2CE4C811C1
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 12:11:18 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 07 Dec 2010 10:11:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,311,1288594800"; d="scan'208";a="581442719"
Received: from unknown (HELO helios) ([10.255.16.62])
	by orsmga002.jf.intel.com with SMTP; 07 Dec 2010 10:11:17 -0800
Received: by helios (sSMTP sendmail emulation); Tue, 07 Dec 2010 18:11:15 +0000
Message-Id: <cover.1291744633.git.paul.eggleton@linux.intel.com>
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Tue, 7 Dec 2010 17:57:13 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/1] openssl-native: disable execstack flag to prevent problems with SELinux [v2]
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
X-List-Received-Date: Tue, 07 Dec 2010 18:11:19 -0000

This new version of the patch only applies the fix to native. We can deal 
with the issue of SELinux on the target if it comes up in future.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: paule/fixes
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/fixes

Thanks,
    Paul Eggleton <paul.eggleton@linux.intel.com>
---


Paul Eggleton (1):
  openssl-native: disable execstack flag to prevent problems with
    SELinux

 meta/recipes-connectivity/openssl/openssl.inc      |    4 ++++
 .../recipes-connectivity/openssl/openssl_0.9.8p.bb |    2 +-
 2 files changed, 5 insertions(+), 1 deletions(-)


