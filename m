Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0C1424C800A6
	for <poky@yoctoproject.org>; Mon, 16 May 2011 00:25:40 -0500 (CDT)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 720922FD1D
	for <poky@yoctoproject.org>; Mon, 16 May 2011 01:25:36 -0400 (EDT)
Message-Id: <cover.1305523345.git.scott.a.garman@intel.com>
Old-Date: Sun, 15 May 2011 22:22:25 -0700
Date: Sun, 15 May 2011 22:25:30 -0700
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 720922FD1D.7344F
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 0/1] Recipe patch Upstream-Status additions
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
X-List-Received-Date: Mon, 16 May 2011 05:25:41 -0000

From: Scott Garman <scott.a.garman@intel.com>

Hi Saul,

Attached are Upstream-Status updates for nine of my recipes:

    openssh
    dbus-glib
    expat
    opensp
    sgml-common
    at
    cpio (GPLv3 version)
    libpam
    icu

I have plenty more to do, just giving you some work in progress.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgarman/patch-updates
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/patch-updates

Thanks,
    Scott Garman <scott.a.garman@intel.com>
---


Scott Garman (1):
  recipes: Add Upstream-Status to various recipe patches

 .../openssh/openssh-5.6p1/nostrip.patch            |    9 ++++++---
 .../dbus/dbus-glib-0.92/no-examples.patch          |    9 ++++++---
 .../recipes-core/expat/expat-2.0.1/autotools.patch |   10 +++++++---
 .../opensp/opensp/attributevalue.patch             |    3 +++
 .../opensp/opensp/fix-docdir.patch                 |    3 +++
 meta/recipes-devtools/opensp/opensp/m4.patch       |    3 +++
 .../opensp/opensp/rangmap-fix.patch                |    3 +++
 .../sgml-common/sgml-common-0.6.3/autohell.patch   |    3 +++
 .../sgml-common/sgml-common-0.6.3/license.patch    |    3 +++
 meta/recipes-extended/at/at-3.1.12/configure.patch |    8 ++++++--
 .../at/at-3.1.12/fix_parallel_build_error.patch    |    4 ++++
 meta/recipes-extended/cpio/cpio-2.11/statdef.patch |    8 ++++++--
 .../pam/libpam/pam-no-innetgr.patch                |    5 +++++
 meta/recipes-extended/sudo/files/libtool.patch     |   10 +++++++---
 meta/recipes-support/icu/files/gccfix.patch        |    6 ++++++
 meta/recipes-support/icu/files/noldlibpath.patch   |    5 +++++
 .../icu/files/use-g++-for-linking.patch            |    7 +++++++
 17 files changed, 83 insertions(+), 16 deletions(-)


