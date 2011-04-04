Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 63FD94C80050
	for <poky@yoctoproject.org>; Mon,  4 Apr 2011 15:19:48 -0500 (CDT)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id D5087308CF
	for <poky@yoctoproject.org>; Mon,  4 Apr 2011 16:19:43 -0400 (EDT)
Message-Id: <cover.1301948162.git.scott.a.garman@intel.com>
Old-Date: Mon, 4 Apr 2011 13:16:02 -0700
Date: Mon, 04 Apr 2011 13:19:38 -0700
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: D5087308CF.04F5B
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 0/3] Fixes for doc-related build failures.
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
X-List-Received-Date: Mon, 04 Apr 2011 20:19:48 -0000

From: Scott Garman <scott.a.garman@intel.com>

Hi Saul,

Paul identified the root cause of the build failures occurring with
the documentation related packages. The problem is that functions
appended to SSTATEPOSTINSTFUNCS can now be run for *all* tasks.
These commits ensure the sysroot-related operations only happen
during the do_populate_sysroot tasks.

This fixes [YOCTO #948] (Thank you Dexuan for the bug report).

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgarman/docbook-fix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/docbook-fix

Thanks,
    Scott Garman <scott.a.garman@intel.com>
---


Scott Garman (3):
  docbook-sgml-dtd-native.inc: run install-catalog only during
    do_populate_sysroot
  openjade-native: run install-catalog only during do_populate_sysroot
  docbook-dsssl-stylesheets-native: run install-catalog only during
    do_populate_sysroot

 .../docbook-dsssl-stylesheets-native_1.79.bb       |   12 +++++++-----
 .../docbook-sgml-dtd/docbook-sgml-dtd-native.inc   |   12 +++++++-----
 .../openjade/openjade-native_1.3.2.bb              |   12 +++++++-----
 3 files changed, 21 insertions(+), 15 deletions(-)


