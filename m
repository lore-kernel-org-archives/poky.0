Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF9C6E016D8
	for <poky@yoctoproject.org>; Mon,  4 Nov 2013 12:58:32 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 04 Nov 2013 12:58:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="384578177"
Received: from unknown (HELO localhost) ([10.255.15.34])
	by azsmga001.ch.intel.com with ESMTP; 04 Nov 2013 12:58:31 -0800
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon,  4 Nov 2013 14:58:29 -0600
Message-Id: <cover.1383598600.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 0/1] poky-tiny fix
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
X-List-Received-Date: Mon, 04 Nov 2013 20:58:38 -0000

This fixes a boot problem I had with poky-tiny.

The following changes since commit 9160f376065752e2e92c8b37ee9a80d0eb86b53b:

  bitbake: toaster: enable required classes in the toaster startup script (2013-11-04 09:36:22 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/tiny-busybox-defconfig-fix
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/tiny-busybox-defconfig-fix

Tom Zanussi (1):
  busybox.bbappend: add override for poky-tiny defconfig

 meta-yocto/recipes-core/busybox/busybox_1.21.1.bbappend | 1 +
 1 file changed, 1 insertion(+)

-- 
1.8.3.1


