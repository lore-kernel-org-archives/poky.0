Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0E1234C80772
	for <poky@yoctoproject.org>; Thu, 24 Feb 2011 19:07:55 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 0A42B30522
	for <poky@yoctoproject.org>; Thu, 24 Feb 2011 20:07:49 -0500 (EST)
Message-Id: <cover.1298592962.git.scott.a.garman@intel.com>
Old-Date: Thu, 24 Feb 2011 16:16:02 -0800
Date: Thu, 24 Feb 2011 17:07:41 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 0A42B30522.58566
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 0/2] build libuser documentation
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
X-List-Received-Date: Fri, 25 Feb 2011 01:07:55 -0000

From: Scott Garman <scott.a.garman@intel.com>

Hi Saul,

This pull request fixes bug #213, allowing the documentation for
libuser to be generated.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgarman/libuser-fix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/libuser-fix

Thanks,
    Scott Garman <scott.a.garman@intel.com>
---


Scott Garman (2):
  linuxdoc-tools-native: new recipe v0.99.6
  libuser: enable documentation

 .../linuxdoc-tools-native/disable_sgml2rtf.patch   |   49 ++++++++++++++++++++
 .../linuxdoc-tools/linuxdoc-tools-native_0.9.66.bb |   21 ++++++++
 .../libuser/libuser-0.57.1/disable-sgml-doc.patch  |   18 -------
 meta/recipes-extended/libuser/libuser_0.57.1.bb    |    9 ++--
 4 files changed, 74 insertions(+), 23 deletions(-)
 create mode 100644 meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_sgml2rtf.patch
 create mode 100644 meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native_0.9.66.bb
 delete mode 100644 meta/recipes-extended/libuser/libuser-0.57.1/disable-sgml-doc.patch


