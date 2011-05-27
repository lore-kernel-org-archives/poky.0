Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id A5E694C80191
	for <poky@yoctoproject.org>; Fri, 27 May 2011 03:10:00 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 27 May 2011 01:10:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,279,1304319600"; 
   d="scan'208";a="5737817"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.187])
	by orsmga001.jf.intel.com with ESMTP; 27 May 2011 01:09:58 -0700
From: Yu Ke <ke.yu@intel.com>
To: poky@yoctoproject.org,
	richard.purdie@linuxfoundation.org
Date: Fri, 27 May 2011 16:14:19 +0800
Message-Id: <cover.1306483559.git.ke.yu@intel.com>
X-Mailer: git-send-email 1.7.0.4
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 0/1] use evdev driver for keyboard, fix bug 1108
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
X-List-Received-Date: Fri, 27 May 2011 08:10:00 -0000

This patch update the xorg.conf for qemux86 and qemux86-64 to make keybaord
back to work in X.

The BSP xorg.conf may also need update accoringly, the main difference with
qemux86 may be the Option "Device". it can be checked in /dev/input/

CC: Darren Hart <dvhart@linux.intel.com>
CC: Zanussi Tom <tom.zanussi@intel.com>

The following changes since commit 32a4e746273c3c7d3dd0f13b745bc0679cadaa44:
  Otavio Salvador (1):
        codeparser.py: fix syntax error in exception handling

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib kyu3/bug-1108-x-keyboard
  http://git.pokylinux.org/cgit.cgi//log/?h=kyu3/bug-1108-x-keyboard

Yu Ke (1):
  xorg.conf: update keyboard config with evdev

 .../xserver-xf86-config/qemux86-64/xorg.conf       |    5 +++--
 .../xserver-xf86-config/qemux86/xorg.conf          |    5 +++--
 .../xorg-xserver/xserver-xf86-config_0.1.bb        |    2 +-
 3 files changed, 7 insertions(+), 5 deletions(-)


