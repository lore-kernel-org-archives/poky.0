Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9D9764C8007E
	for <poky@yoctoproject.org>; Tue, 15 Feb 2011 22:33:09 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 4E7F8308F8
	for <poky@yoctoproject.org>; Tue, 15 Feb 2011 23:32:57 -0500 (EST)
Message-Id: <cover.1297830466.git.scott.a.garman@intel.com>
Old-Date: Tue, 15 Feb 2011 20:27:46 -0800
Date: Tue, 15 Feb 2011 20:32:51 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 4E7F8308F8.89528
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 0/5] docbook-utils and friends
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
X-List-Received-Date: Wed, 16 Feb 2011 04:33:09 -0000

From: Scott Garman <scott.a.garman@intel.com>

Hi Saul,

This pull request includes documentation-related dependencies
and fixes so that the iputils recipe (and most likely many others)
can build its documentation correctly.

I tested it on qemux86 and qemumips, and on a stripped-down
openSUSE 11.2 chroot where I even removed documentation-related
host utilities that we list in our quick start guide.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgarman/docbook-fixes-final
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/docbook-fixes-final

Thanks,
    Scott Garman <scott.a.garman@intel.com>
---


Scott Garman (5):
  texinfo: recipe cleanup, add native support
  sgml-common-native: fix license info and checksum fields
  docbook-utils-native: new recipe v0.6.14
  opensp: improve configuration and install steps
  iputils: enable generation of man pages

 .../docbook-utils/docbook-utils-native_0.6.14.bb   |   48 ++++++++++++++++++++
 meta/recipes-devtools/opensp/opensp_1.5.bb         |   18 +++++++
 .../sgml-common/sgml-common-native_0.6.3.bb        |   10 ++---
 meta/recipes-extended/iputils/iputils_s20101006.bb |   13 ++---
 meta/recipes-extended/texinfo/texinfo_4.13a.bb     |   26 ++++++-----
 5 files changed, 90 insertions(+), 25 deletions(-)
 create mode 100644 meta/recipes-devtools/docbook-utils/docbook-utils-native_0.6.14.bb


