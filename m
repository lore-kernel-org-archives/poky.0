Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3CCE94C80A8C
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 17:45:31 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 259FE30527
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 18:45:22 -0500 (EST)
Message-Id: <cover.1298677440.git.scott.a.garman@intel.com>
Old-Date: Fri, 25 Feb 2011 15:44:00 -0800
Date: Fri, 25 Feb 2011 15:45:17 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 259FE30527.26A4D
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 0/1] linuxdoc-tools-native bugfix
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
X-List-Received-Date: Fri, 25 Feb 2011 23:45:31 -0000

From: Scott Garman <scott.a.garman@intel.com>

Hi Saul,

This pull request fixes bug #774, which is a do_install error which
can occur for linuxdoc-tools-native if the host OS has latex or dvips
installed.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgarman/linuxdoc-tools-fix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/linuxdoc-tools-fix

Thanks,
    Scott Garman <scott.a.garman@intel.com>
---


Scott Garman (1):
  linuxdoc-tools-native: disable doc builds requriing latex and dvips

 .../linuxdoc-tools-native/disable_dvips_doc.patch  |   29 ++++++++++++++++++++
 .../linuxdoc-tools-native/disable_tex_doc.patch    |   25 +++++++++++++++++
 .../linuxdoc-tools/linuxdoc-tools-native_0.9.66.bb |    6 +++-
 3 files changed, 58 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_dvips_doc.patch
 create mode 100644 meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_tex_doc.patch


