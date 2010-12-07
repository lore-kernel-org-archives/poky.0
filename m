Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id 001B24C811E4
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 15:14:27 -0600 (CST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 27DB718059F6;
	Tue,  7 Dec 2010 22:14:26 +0100 (CET)
X-Auth-Info: AtrY9kE1I+MFs8Ovyqew1tgS6yGqvCtD/tc+Us40+/Q=
Received: from diddl.denx.de (ppp-188-174-79-57.dynamic.mnet-online.de
	[188.174.79.57])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 6B17E1C00129;
	Tue,  7 Dec 2010 22:14:26 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 3C5253335217;
	Tue,  7 Dec 2010 22:14:26 +0100 (CET)
Received: by gemini.denx.de (Postfix, from userid 500)
	id 1500FD0B11B; Tue,  7 Dec 2010 22:14:26 +0100 (CET)
From: Wolfgang Denk <wd@denx.de>
To: poky@yoctoproject.org
Date: Tue,  7 Dec 2010 22:13:58 +0100
Message-Id: <1291756443-28767-1-git-send-email-wd@denx.de>
X-Mailer: git-send-email 1.7.3.2
Cc: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: [PATCH 0/5] Fedora 14 Patches
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
X-List-Received-Date: Tue, 07 Dec 2010 21:14:28 -0000

From: Vasily Khoruzhick <anarsoul@gmail.com>

The following is a series of patches trying to get Poky (both laverne
4.0 and top of tree) to build under a Fedora 14 x86_64 system.

I'm not through yet (for example, commenting out NO32LIBS=1 still
fails), but eventually others find this helpful, or tell me that there
is an easier way to get Poky to build.

Thanks.

Summary:

[1/5] eglibc: fix build issue with make-3.82
 meta/recipes-core/eglibc/eglibc_2.12.bb            |    3 ++-
 .../eglibc/files/eglibc-make-382.patch             |   15 +++++++++++++++
 2 files changed, 17 insertions(+), 1 deletions(-)

[2/5] gstreamer: fix build issue with make-3.82
 .../gstreamer-0.10.29/gstreamer-make-382.patch     |  178 ++++++++++++++++++++
 .../gstreamer/gstreamer_0.10.30.bb                 |    5 +-
 2 files changed, 181 insertions(+), 2 deletions(-)

[3/5] Add support for 40x configuration (kilauea from OE)
 meta/conf/machine/include/tune-ppc405.inc          |    6 ++++++
 meta/conf/machine/kilauea.conf                     |   22 ++++++++++++++++++++++
 2 files changed, 28 insertions(+), 0 deletions(-)

[4/5] elfutils-0.148: fix build problem with "ar"
 .../elfutils/elfutils-0.148/ar-options.patch       |   11 +++++++++++
 meta/recipes-devtools/elfutils/elfutils_0.148.bb   |    3 ++-
 2 files changed, 13 insertions(+), 1 deletions(-)

[5/5] elfutils-0.148: fix problems with `ld' not recognizing options
 .../elfutils/elfutils-0.148/ld-compatibility.patch |   56 ++++++++++++++++++++
 meta/recipes-devtools/elfutils/elfutils_0.148.bb   |    3 +-
 2 files changed, 58 insertions(+), 1 deletions(-)



Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Always try to do things in chronological order; it's  less  confusing
that way.

