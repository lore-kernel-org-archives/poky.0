Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5765D4C80852
	for <poky@yoctoproject.org>; Tue, 26 Apr 2011 13:27:16 -0500 (CDT)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 70C26308D8
	for <poky@yoctoproject.org>; Tue, 26 Apr 2011 14:27:08 -0400 (EDT)
Message-Id: <cover.1303842200.git.scott.a.garman@intel.com>
Old-Date: Tue, 26 Apr 2011 11:23:20 -0700
Date: Tue, 26 Apr 2011 11:27:01 -0700
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 70C26308D8.D3FA8
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 0/2] cdrtools recipe cleanup v2
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
X-List-Received-Date: Tue, 26 Apr 2011 18:27:16 -0000

From: Scott Garman <scott.a.garman@intel.com>

(v2 of this pull request, includes SRC_URI checksums)

Hi Saul,

Looking closer at the existing cdrtools recipe we have, in fact the
CVE advisory does not apply, since the problematic utility (rscsi)
is staged in ${sbindir} and the custom do_install() function only
packages ${bindir}.

So instead I took the opportunity to do some recipe cleanup, updated
the patches, and added distro tracking information.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgarman/cdrtools-cve
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/cdrtools-cve

Thanks,
    Scott Garman <scott.a.garman@intel.com>
---


Scott Garman (2):
  cdrtools: recipe and patch cleanup
  distro_tracking_fields.inc: add cdrtools recipe

 .../conf/distro/include/distro_tracking_fields.inc |   11 ++++++++++
 .../cdrtools-native/glibc-conflict-rename.patch    |    8 +++++++
 .../cdrtools/cdrtools-native/no_usr_src.patch      |    7 ++++++
 .../cdrtools/cdrtools-native_2.01.bb               |   22 +++++++++++--------
 4 files changed, 39 insertions(+), 9 deletions(-)


