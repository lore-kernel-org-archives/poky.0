Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id D4E734C81065
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 03:27:40 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0L9Re98004762
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 01:27:40 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 21 Jan 2011 01:27:40 -0800
Received: from localhost ([128.224.162.176]) by ala-mail06.corp.ad.wrs.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 21 Jan 2011 01:27:40 -0800
Message-Id: <cover.1295601800.git.jingdong.lu@windriver.com>
From: Jingdong Lu <jingdong.lu@windriver.com>
Old-Date: Fri, 21 Jan 2011 17:23:20 +0800
Date: Fri, 21 Jan 2011 17:26:21 +0800
To: poky@yoctoproject.org
CC: 
X-OriginalArrivalTime: 21 Jan 2011 09:27:40.0613 (UTC)
	FILETIME=[732CD750:01CBB94D]
Subject: [PATCH 0/4] [PULL] Add some new packages and rename liburi-perl.
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
X-List-Received-Date: Fri, 21 Jan 2011 09:27:41 -0000

Add mailx, cups, msmtp.
Rename liburi-perl_1.56 to liburi-perl_1.56.bb

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: jingdonglu/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jingdonglu/distro

Thanks,
    Jingdong Lu <jingdong.lu@windriver.com>
---


Jingdong Lu (4):
  mailx: Add mailx
  cups: Add cups
  msmtp: Add msmtp
  liburi-perl: Rename liburi-perl

 .../perl/{liburi-perl_1.56 => liburi-perl_1.56.bb} |    0
 .../cups/cups-1.4.4/configure.patch                |  117 ++++++++++++++++++++
 .../cups/cups-1.4.4/skip_tools.patch               |   51 +++++++++
 .../cups/cups-1.4.4/use_echo_only_in_init.patch    |   11 ++
 meta/recipes-extended/cups/cups14.inc              |   86 ++++++++++++++
 meta/recipes-extended/cups/cups_1.4.4.bb           |   17 +++
 meta/recipes-extended/mailx/mailx_12.4.bb          |   23 ++++
 meta/recipes-extended/msmtp/msmtp_1.4.21.bb        |   31 +++++
 8 files changed, 336 insertions(+), 0 deletions(-)
 rename meta/recipes-devtools/perl/{liburi-perl_1.56 => liburi-perl_1.56.bb} (100%)
 create mode 100644 meta/recipes-extended/cups/cups-1.4.4/configure.patch
 create mode 100644 meta/recipes-extended/cups/cups-1.4.4/skip_tools.patch
 create mode 100644 meta/recipes-extended/cups/cups-1.4.4/use_echo_only_in_init.patch
 create mode 100644 meta/recipes-extended/cups/cups14.inc
 create mode 100644 meta/recipes-extended/cups/cups_1.4.4.bb
 create mode 100644 meta/recipes-extended/mailx/mailx_12.4.bb
 create mode 100644 meta/recipes-extended/msmtp/msmtp_1.4.21.bb


