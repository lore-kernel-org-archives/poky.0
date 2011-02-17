Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 136684C8007E
	for <poky@yoctoproject.org>; Thu, 17 Feb 2011 17:40:28 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id E0E6330969
	for <poky@yoctoproject.org>; Thu, 17 Feb 2011 18:40:20 -0500 (EST)
Message-Id: <cover.1297985951.git.scott.a.garman@intel.com>
Old-Date: Thu, 17 Feb 2011 15:39:11 -0800
Date: Thu, 17 Feb 2011 15:40:16 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: E0E6330969.17ACB
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 0/4] Urgent doc fixes for gtk+
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
X-List-Received-Date: Thu, 17 Feb 2011 23:40:28 -0000

From: Scott Garman <scott.a.garman@intel.com>

Hi Richard/Saul,

This pull request should finally sort out the issues building
documentation for gtk+.

I was able to reproduce the problem reliably by building
docbook-utils-native *before* attempting to build gtk+. With
that known, I have tested this under an openSUSE 11.2 chroot
and on a 40-core Fedora 13 server, building for qemux86
and qemuppc. I also did a full poky-image-sato build on the
 40-way which completed successfully after I disabled
PARALLEL_MAKE for perl-native.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgarman/gtk-doc-fixes
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/gtk-doc-fixes

Thanks,
    Scott Garman <scott.a.garman@intel.com>
---


Scott Garman (4):
  docbook-dsssl-stylesheets-native: add missing files to install
  openjade-native: Set datadir explicitly
  docbook-utils-native: set SGML_EXTRA_CATALOGS in jw
  gtk+: Fix build of documentation

 .../docbook-dsssl-stylesheets-native_1.79.bb       |    4 +-
 .../docbook-utils/docbook-utils-native_0.6.14.bb   |    5 ++-
 .../openjade/openjade-native_1.3.2.bb              |    6 +++-
 .../recipes-gnome/gtk+/gtk+-2.22.1/doc-fixes.patch |   33 ++++++++++++++++++++
 meta/recipes-gnome/gtk+/gtk+.inc                   |    5 ++-
 meta/recipes-gnome/gtk+/gtk+_2.12.7.bb             |    2 +-
 meta/recipes-gnome/gtk+/gtk+_2.16.6.bb             |    2 +-
 meta/recipes-gnome/gtk+/gtk+_2.22.1.bb             |    5 ++-
 8 files changed, 52 insertions(+), 10 deletions(-)
 create mode 100644 meta/recipes-gnome/gtk+/gtk+-2.22.1/doc-fixes.patch


