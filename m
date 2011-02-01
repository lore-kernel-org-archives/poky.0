Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4AC214C80093
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 20:43:11 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p112h5dd005656
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 18:43:05 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 31 Jan 2011 18:43:05 -0800
Received: from localhost ([128.224.162.176]) by ala-mail06.corp.ad.wrs.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 31 Jan 2011 18:43:05 -0800
Message-Id: <cover.1296527961.git.jingdong.lu@windriver.com>
Old-Date: Tue, 1 Feb 2011 10:39:21 +0800
Date: Tue, 01 Feb 2011 10:41:23 +0800
To: poky@yoctoproject.org
CC: 
From: Jingdong Lu <jingdong.lu@windriver.com>
X-OriginalArrivalTime: 01 Feb 2011 02:43:05.0519 (UTC)
	FILETIME=[C0A2B3F0:01CBC1B9]
Subject: [PATCH 0/4] [PULL] Add packages and fix failures of LSB.
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
X-List-Received-Date: Tue, 01 Feb 2011 02:43:11 -0000

From: Jingdong Lu <jingdong.lu@windriver.com>

* Add mailx, msmtp, cups based on Open Embedded
* Enable "--with-legacy" for libxml2 in order to pass LSB test

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: jingdonglu/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jingdonglu/distro

Thanks,
    Jingdong Lu <jingdong.lu@windriver.com>
---


Jingdong Lu (4):
  mailx: add mailx 12.4
  msmtp: add msmtp 1.4.23
  libxml2: Enable "--with-legacy" for LSB test.
  cups: add cups 1.4.6

 meta/recipes-core/libxml/libxml2.inc               |    2 +-
 meta/recipes-core/libxml/libxml2_2.7.7.bb          |    2 +-
 .../0001-don-t-try-to-run-generated-binaries.patch |   68 ++++++++++++++++
 .../cups/cups-1.4.6/use_echo_only_in_init.patch    |   11 +++
 meta/recipes-extended/cups/cups14.inc              |   85 ++++++++++++++++++++
 meta/recipes-extended/cups/cups_1.4.6.bb           |   17 ++++
 meta/recipes-extended/mailx/mailx_12.4.bb          |   26 ++++++
 meta/recipes-extended/msmtp/msmtp_1.4.23.bb        |   21 +++++
 8 files changed, 230 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-extended/cups/cups-1.4.6/0001-don-t-try-to-run-generated-binaries.patch
 create mode 100644 meta/recipes-extended/cups/cups-1.4.6/use_echo_only_in_init.patch
 create mode 100644 meta/recipes-extended/cups/cups14.inc
 create mode 100644 meta/recipes-extended/cups/cups_1.4.6.bb
 create mode 100644 meta/recipes-extended/mailx/mailx_12.4.bb
 create mode 100644 meta/recipes-extended/msmtp/msmtp_1.4.23.bb


