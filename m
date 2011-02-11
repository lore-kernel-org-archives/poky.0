Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2EEAF4C800AF
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 09:47:12 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1BFlBNP026346
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 07:47:11 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 11 Feb 2011 07:47:11 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 11 Feb 2011 07:47:11 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Fri, 11 Feb 2011 09:44:41 -0600
Message-Id: <cover.1297438842.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
X-OriginalArrivalTime: 11 Feb 2011 15:47:11.0516 (UTC)
	FILETIME=[F25DA5C0:01CBCA02]
Subject: [PATCH 0/4] Revised the debug info patches...
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
X-List-Received-Date: Fri, 11 Feb 2011 15:47:12 -0000

After talking with Richard a bit, I've revised the configuration of the
debug info, patch 2 of 4.  1, 3 and 4 remain unchanged.

The primary difference is to change the naming from "debian style", and
"fedora style" to a more accurate representation based on the GDB
documentation and usage I recently found.  In addition to the simple
name changing, the source code copying is now defined for both styles
and simply places the code in /usr/src/debug.

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
 meta/conf/bitbake.conf                             |    9 +-
 meta/conf/local.conf.sample                        |   31 ++
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
 19 files changed, 344 insertions(+), 69 deletions(-)

-- 
1.7.3.4


