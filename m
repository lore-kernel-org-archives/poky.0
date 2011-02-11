Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id EF6144C8006D
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 08:58:32 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1BEwWaD016941
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 06:58:32 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 11 Feb 2011 06:58:31 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 11 Feb 2011 06:58:31 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Fri, 11 Feb 2011 08:55:58 -0600
Message-Id: <cover.1297435715.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
X-OriginalArrivalTime: 11 Feb 2011 14:58:32.0138 (UTC)
	FILETIME=[2647EAA0:01CBC9FC]
Subject: [PATCH 0/4] Refactor debug info generation
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
X-List-Received-Date: Fri, 11 Feb 2011 14:58:33 -0000

The primary purpose of this patch is to refactor the way the -dbg packages
and associated files are generated.  In the original code it's being done
in one operation with the splitting and stripping of the files within the
populate_packages.  The code was split from there, and then modified in two
steps to get to the final version.

The first step implemented the new method where the split occurs and then the
strip occurs.  This makes it easier to tailor each of them as things change
in the future.

The second path refactors this to eleminate multiple file walks and file
identification processing.  The behavior of the system is the same, only
things are more efficient.

The fourth patch is simply a bug fix to some pre/post actions I found
while diagnosing and debugging.  This patch is separate from the rest of the
refactoring and should be merged, even if the others are not.

FYI, I also did timing on this to see how it impacted system performance.
The times below affect ONLY the do_package [and later] stages, on my specific
host.  (8 core with a 16/16 build configuration)

Original before these changes:
real    37m29.035s
user    41m14.322s
sys     31m0.006s

After the changes -- using "debian" style debuginfo, i.e. the same output
as the original style:
real    36m48.160s
user    42m17.636s
sys     31m47.846s

After the changes -- using the new "fedora" style debug info:
real    38m48.793s
user    44m9.822s
sys     37m48.803s

The first two are nearly the same.  Any deviation is likely due to the 
additional hardlink/symlink processing.

The fedora style introduces additional steps in the process that rewrite
source code references and duplicate specific source code files into the
-dbg directory for later (easier) debugging.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: mhatle/debuginfo
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/debuginfo

Thanks,
    Mark Hatle <mark.hatle@windriver.com>
---


Mark Hatle (4):
  package.bbclass: Breakout the strip from the populate_packages
  Revise stripping and splitting of debug information
  package.bbclass: Refactor split and strip function
  recipes: pre/post actions

 meta/classes/insane.bbclass                        |    4 +-
 meta/classes/package.bbclass                       |  325 +++++++++++++++++---
 meta/conf/bitbake.conf                             |    7 +-
 meta/conf/local.conf.sample                        |   28 ++
 meta/recipes-bsp/hostap/hostap-conf_1.0.bb         |    4 +-
 meta/recipes-bsp/lrzsz/lrzsz_0.12.20.bb            |    4 +-
 meta/recipes-bsp/orinoco/orinoco-conf_1.0.bb       |    4 +-
 .../libnss-mdns/libnss-mdns_0.10.bb                |    4 +-
 .../ppp-dialin/ppp-dialin_0.1.bb                   |    4 +-
 .../recipes-core/base-passwd/base-passwd_3.5.22.bb |    2 +-
 meta/recipes-core/dropbear/dropbear.inc            |    4 +-
 .../sgml-common/sgml-common_0.6.3.bb               |    4 +-
 meta/recipes-extended/bash/bash.inc                |    2 +-
 meta/recipes-extended/bash/bash_3.2.48.bb          |    2 +-
 meta/recipes-extended/sudo/sudo.inc                |    2 +-
 .../ttf-fonts/liberation-fonts_1.04.bb             |    2 +-
 .../ttf-fonts/liberation-fonts_1.06.bb             |    2 +-
 .../ttf-fonts/ttf-bitstream-vera_1.10.bb           |    2 +-
 .../update-modules/update-modules_1.0.bb           |    2 +-
 19 files changed, 340 insertions(+), 68 deletions(-)

-- 
1.7.3.4


