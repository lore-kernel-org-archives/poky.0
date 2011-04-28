Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5C93A4C80337
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 22:15:08 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3S3F7NR016803
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 27 Apr 2011 20:15:07 -0700 (PDT)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 27 Apr 2011 20:15:06 -0700
Message-ID: <cover.1303960219.git.kai.kang@windriver.com>
Old-Date: Thu, 28 Apr 2011 11:10:19 +0800
Date: Thu, 28 Apr 2011 11:15:55 +0800
To: <saul.wold@intel.com>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Cc: poky@yoctoproject.org
Subject: [PATCH 0/3] Fixes for LSB command check
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
X-List-Received-Date: Thu, 28 Apr 2011 03:15:09 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

Hi Saul,

This time update groff and removing old version bb file and patches, 
and groff-native is needed for compiling packages like libuser.
Update lsbsetup_0.9.bb by using install to create directory.
Add xdg-utils into lsb image to provides xdg-* commands.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kangkai/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/distro

Thanks,
    Kang Kai <kai.kang@windriver.com>
---


Kang Kai (3):
  groff: update to 1.20.1
  lsbsetup: add commands install_initd and remove_initd
  task-core-lsb: add xdg-utils into lsb image

 .../groff-1.18.1.4/groff-1.18.1.4-remove-mom.patch |   35 ---------------
 .../groff/groff-1.18.1.4/man-local.patch           |   32 --------------
 .../groff/groff-1.18.1.4/mdoc-local.patch          |   31 -------------
 meta/recipes-extended/groff/groff_1.18.1.4.bb      |   46 --------------------
 meta/recipes-extended/groff/groff_1.20.1.bb        |   36 +++++++++++++++
 meta/recipes-extended/lsb/lsbsetup_0.9.bb          |    7 +++-
 meta/recipes-extended/tasks/task-core-lsb.bb       |    1 +
 7 files changed, 43 insertions(+), 145 deletions(-)
 delete mode 100644 meta/recipes-extended/groff/groff-1.18.1.4/groff-1.18.1.4-remove-mom.patch
 delete mode 100644 meta/recipes-extended/groff/groff-1.18.1.4/man-local.patch
 delete mode 100644 meta/recipes-extended/groff/groff-1.18.1.4/mdoc-local.patch
 delete mode 100644 meta/recipes-extended/groff/groff_1.18.1.4.bb
 create mode 100644 meta/recipes-extended/groff/groff_1.20.1.bb


