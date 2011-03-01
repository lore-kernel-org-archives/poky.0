Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 133F54C80AAE
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 15:27:25 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 553BC837C05
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 16:27:20 -0500 (EST)
Message-Id: <cover.1299014665.git.scott.a.garman@intel.com>
Old-Date: Tue, 1 Mar 2011 13:24:25 -0800
Date: Tue, 01 Mar 2011 13:27:15 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 553BC837C05.0AA52
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 0/1] screenshot bugfix
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
X-List-Received-Date: Tue, 01 Mar 2011 21:27:25 -0000

From: Scott Garman <scott.a.garman@intel.com>

Hi Saul,

This pull request includes a fix for bug #664.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgarman/screenshot-fix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/screenshot-fix

Thanks,
    Scott Garman <scott.a.garman@intel.com>
---


Scott Garman (1):
  screenshot: change the order of LDADD arguments

 .../files/dso_linking_change_build_fix.patch       |   49 --------------------
 .../screenshot/files/fix_ldadd_order.patch         |   12 +++++
 meta/recipes-sato/screenshot/screenshot_svn.bb     |    6 +-
 3 files changed, 15 insertions(+), 52 deletions(-)
 delete mode 100644 meta/recipes-sato/screenshot/files/dso_linking_change_build_fix.patch
 create mode 100644 meta/recipes-sato/screenshot/files/fix_ldadd_order.patch


