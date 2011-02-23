Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 812914C80049
	for <poky@yoctoproject.org>; Wed, 23 Feb 2011 00:23:06 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id E79AF30511
	for <poky@yoctoproject.org>; Wed, 23 Feb 2011 01:22:58 -0500 (EST)
Message-Id: <cover.1298441824.git.scott.a.garman@intel.com>
Old-Date: Tue, 22 Feb 2011 22:17:04 -0800
Date: Tue, 22 Feb 2011 22:22:53 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: E79AF30511.B5E3B
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 0/4] SGML catalog generation fixes
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
X-List-Received-Date: Wed, 23 Feb 2011 06:23:06 -0000

From: Scott Garman <scott.a.garman@intel.com>

Hi Saul,

This pull request improves the way the SGML catalog files are
generated in the native sysroot. Richard helped out with the
addition of SSTATEPOSTINSTFUNCS when we realized there was no
way to dynamically run a post-install script when doing a build
from sstate cache.

I believe this should fix bug #748.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgarman/sgml-catalog-fixes
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/sgml-catalog-fixes

Thanks,
    Scott Garman <scott.a.garman@intel.com>
---


Scott Garman (4):
  sstate.bbclass: add SSTATEPOSTINSTFUNCS
  docbook-sgml-dtd-native.inc: run install-catalog from
    SSTATEPOSTINSTFUNCS
  docbook-dsssl-stylesheets-native: run install-catalog from
    SSTATEPOSTINSTFUNCS
  openjade-native: run install-catalog from SSTATEPOSTINSTFUNCS

 meta/classes/sstate.bbclass                        |    8 +++++
 .../docbook-dsssl-stylesheets-native_1.79.bb       |   30 ++++++++------------
 .../docbook-sgml-dtd/docbook-sgml-dtd-native.inc   |   26 ++++++----------
 .../openjade/openjade-native_1.3.2.bb              |   17 ++++++++---
 4 files changed, 42 insertions(+), 39 deletions(-)


