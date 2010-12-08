Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (li38-254.members.linode.com
	[207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0352E4C811F4
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 23:25:52 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id C349E304F6
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 00:25:44 -0500 (EST)
Message-Id: <cover.1291785237.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Date: Tue, 7 Dec 2010 21:13:57 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: C349E304F6.BE30E
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 0/1] Make poky-qemu and related scripts work with arbitrary SDK locations
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
X-List-Received-Date: Wed, 08 Dec 2010 05:25:52 -0000

Hi Saul,

This commit needs to precede a merge of Josh's work to add a version directory to SDK toolchain installations. It eliminates all assumptions that toolchains are installed in /opt/poky and allows for arbitrary toolchain location locations.

It also fixes a bug I ran across when paths to both the kernel and filesystem image are specified, leading to POKY_NATIVE_SYSROOT not being set, which causes poky-qemu-ifup/ifdown to fail. [BUGFIX #568]


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgarman/poky-qemu-changes
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/poky-qemu-changes

Thanks,
    Scott Garman <scott.a.garman@intel.com>
---


Scott Garman (1):
  Make poky-qemu and related scripts work with arbitrary SDK locations

 scripts/poky-find-native-sysroot |    2 +-
 scripts/poky-qemu                |   38 ++++++++++++++++++++++----------------
 scripts/poky-qemu-ifdown         |    9 +--------
 scripts/poky-qemu-ifup           |    9 +--------
 scripts/poky-qemu-internal       |   16 +---------------
 5 files changed, 26 insertions(+), 48 deletions(-)


