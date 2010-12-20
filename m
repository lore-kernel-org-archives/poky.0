Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (li38-254.members.linode.com
	[207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 386E34C81001
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 12:11:03 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 208B3304F7
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 13:10:56 -0500 (EST)
Message-Id: <cover.1292868390.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Date: Mon, 20 Dec 2010 10:06:30 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 208B3304F7.6ED73
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 0/1] gettext: Add source and license checkums
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
X-List-Received-Date: Mon, 20 Dec 2010 18:11:03 -0000

Richard inadvertently made checksum errors fatal in master, so while
he fixed it, I added checksums to the first recipe I encountered which
was missing them - gettext.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgarman/checksum-additions
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/checksum-additions

Thanks,
    Scott Garman <scott.a.garman@intel.com>
---


Scott Garman (1):
  gettext: Add source and license checkums

 meta/recipes-core/gettext/gettext_0.14.1.bb |   19 +++++++-------
 meta/recipes-core/gettext/gettext_0.17.bb   |   35 +++++++++++++++-----------
 2 files changed, 30 insertions(+), 24 deletions(-)


