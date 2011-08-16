Return-Path: <jiajun.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53E27E00321
	for <poky@pokylinux.org>; Mon, 15 Aug 2011 23:41:03 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 15 Aug 2011 23:41:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,378,1309762800"; d="scan'208";a="41832402"
Received: from unknown (HELO localhost) ([10.239.48.201])
	by fmsmga001.fm.intel.com with ESMTP; 15 Aug 2011 23:41:11 -0700
From: Jiajun Xu <jiajun.xu@intel.com>
To: poky@pokylinux.org
Date: Tue, 16 Aug 2011 14:59:52 +0800
Message-Id: <cover.1313477829.git.jiajun.xu@intel.com>
X-Mailer: git-send-email 1.7.1
Subject: [PATCH 0/1] Add flag opengl into DISTRO_FEATURES
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
X-List-Received-Date: Tue, 16 Aug 2011 06:41:03 -0000

Fix [YOCTO #883]

libsdl will check if opengl is set in DISTRO_FEATURES, then enable
openGL option during do_configure. It is required for 3D game testing.

The following changes since commit a21ff559e7c93e9da61104f4a33e42e6004189fd:

  Fixup remaining bb.msg.domain users (2011-08-15 17:31:52 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib jxu49/bugfix
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jxu49/bugfix

Jiajun Xu (1):
  poky.conf: add flag opengl into DISTRO_FEATURES

 meta-yocto/conf/distro/poky.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)


