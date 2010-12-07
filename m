Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (li38-254.members.linode.com
	[207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 89E7C4C80050
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 02:52:10 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 43D25304EF
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 03:52:03 -0500 (EST)
Message-Id: <cover.1291711822.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Date: Tue, 7 Dec 2010 00:50:22 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 43D25304EF.67E02
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 0/2] Add sanity scenarios for -lsb images
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
X-List-Received-Date: Tue, 07 Dec 2010 08:52:10 -0000

Hi Saul,

This pull request adds sanity test scenarios for -lsb images, and also
removes a leftover file from when tunctl used to be built from within
scripts/

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgarman/lsb_sanity_tests
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/lsb_sanity_tests

Thanks,
    Scott Garman <scott.a.garman@intel.com>
---


Scott Garman (2):
  Add sanity test scenarios for -lsb images
  Remove unused tunctl-src/Makefile from scripts/

 .../scenario/qemuarm/poky-image-lsb                |    5 +++++
 .../scenario/qemumips/poky-image-lsb               |    5 +++++
 .../scenario/qemuppc/poky-image-lsb                |    5 +++++
 .../scenario/qemux86-64/poky-image-lsb             |    5 +++++
 .../scenario/qemux86/poky-image-lsb                |    5 +++++
 scripts/tunctl-src/Makefile                        |   17 -----------------
 6 files changed, 25 insertions(+), 17 deletions(-)
 create mode 100644 scripts/qemuimage-tests/scenario/qemuarm/poky-image-lsb
 create mode 100644 scripts/qemuimage-tests/scenario/qemumips/poky-image-lsb
 create mode 100644 scripts/qemuimage-tests/scenario/qemuppc/poky-image-lsb
 create mode 100644 scripts/qemuimage-tests/scenario/qemux86-64/poky-image-lsb
 create mode 100644 scripts/qemuimage-tests/scenario/qemux86/poky-image-lsb
 delete mode 100644 scripts/tunctl-src/Makefile


