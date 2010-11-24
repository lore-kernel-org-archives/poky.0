Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (li38-254.members.linode.com
	[207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id CAFB54C810B1
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 12:56:34 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id A2616302B8
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 13:56:22 -0500 (EST)
Message-Id: <cover.1290624288.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Date: Wed, 24 Nov 2010 10:44:48 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: A2616302B8.CFFCE
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 0/4] Recipe upgrades: sudo, libpam, and mtools
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
X-List-Received-Date: Wed, 24 Nov 2010 18:56:35 -0000

Hi Saul,

Here are a few distro recipe upgrades. Some things to note:

* The version of mtools we have had to date is a GPLv2 version, so I
  left that recipe as-is and added the latest release, which is GPLv3.
* I've added source checksums, LIC_FILES_CHKSUM, and SUMMARY fields
  where needed, etc.
* I was able to remove obsolete patches from sudo and libpam after
  doing close verification.
* I have successfully built these on all of our nightly-release qemu
  machine arches - build testing should be solid. I also verfied the
  output of the final packages to check for missing files or other
  significant changes.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgarman/recipe-upgrades
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/recipe-upgrades

Thanks,
    Scott Garman <scott.a.garman@intel.com>
---


Scott Garman (4):
  sudo: upgrade to version 1.7.4p4
  libpam: upgrade to version 1.1.3
  mtools: add version 4.0.15
  distro_tracking_fields.inc: update sudo, libpam, and mtools

 .../conf/distro/include/distro_tracking_fields.inc |   31 +++--
 .../mtools/mtools/no-x11.gplv3.patch               |   15 ++
 meta/recipes-devtools/mtools/mtools_4.0.15.bb      |   21 +++
 .../pam/libpam-1.1.1/disable_crossbinary.patch     |   34 -----
 .../pam/{libpam-1.1.1 => libpam}/99_pam            |    0
 .../{libpam-1.1.1 => libpam}/pam.d/common-account  |    0
 .../pam/{libpam-1.1.1 => libpam}/pam.d/common-auth |    0
 .../{libpam-1.1.1 => libpam}/pam.d/common-password |    0
 .../{libpam-1.1.1 => libpam}/pam.d/common-session  |    0
 .../pam.d/common-session-noninteractive            |    0
 .../pam/{libpam-1.1.1 => libpam}/pam.d/other       |    0
 .../pam/{libpam_1.1.1.bb => libpam_1.1.3.bb}       |   12 ++-
 meta/recipes-extended/sudo/files/autofoo.patch     |  143 --------------------
 meta/recipes-extended/sudo/files/libtool.patch     |   20 +++
 meta/recipes-extended/sudo/files/noexec-link.patch |   17 ---
 meta/recipes-extended/sudo/files/nostrip.patch     |   23 ---
 meta/recipes-extended/sudo/site/bit-32             |    2 -
 meta/recipes-extended/sudo/site/bit-64             |    2 -
 meta/recipes-extended/sudo/sudo.inc                |   21 ++--
 meta/recipes-extended/sudo/sudo_1.7.2p7.bb         |    7 -
 meta/recipes-extended/sudo/sudo_1.7.4p4.bb         |   11 ++
 21 files changed, 102 insertions(+), 257 deletions(-)
 create mode 100644 meta/recipes-devtools/mtools/mtools/no-x11.gplv3.patch
 create mode 100644 meta/recipes-devtools/mtools/mtools_4.0.15.bb
 delete mode 100644 meta/recipes-extended/pam/libpam-1.1.1/disable_crossbinary.patch
 rename meta/recipes-extended/pam/{libpam-1.1.1 => libpam}/99_pam (100%)
 rename meta/recipes-extended/pam/{libpam-1.1.1 => libpam}/pam.d/common-account (100%)
 rename meta/recipes-extended/pam/{libpam-1.1.1 => libpam}/pam.d/common-auth (100%)
 rename meta/recipes-extended/pam/{libpam-1.1.1 => libpam}/pam.d/common-password (100%)
 rename meta/recipes-extended/pam/{libpam-1.1.1 => libpam}/pam.d/common-session (100%)
 rename meta/recipes-extended/pam/{libpam-1.1.1 => libpam}/pam.d/common-session-noninteractive (100%)
 rename meta/recipes-extended/pam/{libpam-1.1.1 => libpam}/pam.d/other (100%)
 rename meta/recipes-extended/pam/{libpam_1.1.1.bb => libpam_1.1.3.bb} (89%)
 delete mode 100644 meta/recipes-extended/sudo/files/autofoo.patch
 create mode 100644 meta/recipes-extended/sudo/files/libtool.patch
 delete mode 100644 meta/recipes-extended/sudo/files/noexec-link.patch
 delete mode 100644 meta/recipes-extended/sudo/files/nostrip.patch
 delete mode 100644 meta/recipes-extended/sudo/site/bit-32
 delete mode 100644 meta/recipes-extended/sudo/site/bit-64
 delete mode 100644 meta/recipes-extended/sudo/sudo_1.7.2p7.bb
 create mode 100644 meta/recipes-extended/sudo/sudo_1.7.4p4.bb


