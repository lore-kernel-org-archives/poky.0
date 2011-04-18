Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id C65184C804CA
	for <poky@yoctoproject.org>; Mon, 18 Apr 2011 16:21:33 -0500 (CDT)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id E73822FFC2
	for <poky@yoctoproject.org>; Mon, 18 Apr 2011 17:21:22 -0400 (EDT)
Message-Id: <cover.1302892024.git.scott.a.garman@intel.com>
Old-Date: Fri, 15 Apr 2011 11:27:04 -0700
Date: Mon, 18 Apr 2011 14:21:18 -0700
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: E73822FFC2.E4C18
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 0/1] cdrtools upgrade
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
X-List-Received-Date: Mon, 18 Apr 2011 21:21:33 -0000

From: Scott Garman <scott.a.garman@intel.com>

Hi Saul,

Here is an upgrade of cdrtools. 

* Addresses CVE-2003-0655
* Fixes [YOCTO #976]

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgarman/cdrtools
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/cdrtools

Thanks,
    Scott Garman <scott.a.garman@intel.com>
---


Scott Garman (1):
  cdrtools: upgrade to v3.00

 .../cdrtools-native/glibc-conflict-rename.patch    |  228 --------------------
 .../cdrtools/cdrtools-native/no_usr_src.patch      |   26 ---
 .../cdrtools/cdrtools-native_2.01.bb               |   26 ---
 .../cdrtools/cdrtools-native_3.00.bb               |   24 ++
 4 files changed, 24 insertions(+), 280 deletions(-)
 delete mode 100644 meta/recipes-devtools/cdrtools/cdrtools-native/glibc-conflict-rename.patch
 delete mode 100644 meta/recipes-devtools/cdrtools/cdrtools-native/no_usr_src.patch
 delete mode 100644 meta/recipes-devtools/cdrtools/cdrtools-native_2.01.bb
 create mode 100644 meta/recipes-devtools/cdrtools/cdrtools-native_3.00.bb


