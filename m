Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2FFAA4C80191
	for <poky@yoctoproject.org>; Thu,  2 Jun 2011 04:42:06 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p529g3cU010197
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 2 Jun 2011 02:42:03 -0700 (PDT)
Received: from localhost (128.224.162.198) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Thu, 2 Jun 2011 02:42:03 -0700
Message-ID: <cover.1307005797.git.kai.kang@windriver.com>
Old-Date: Thu, 2 Jun 2011 17:09:57 +0800
Date: Thu, 2 Jun 2011 17:41:52 +0800
To: <mark.hatle@windriver.com>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.198]
Cc: poky@yoctoproject.org
Subject: [PATCH 0/1] eglibc: enable eglibc configurability
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
X-List-Received-Date: Thu, 02 Jun 2011 09:42:06 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

Sorry, forget the maillist.

Migrate configurability from oe, try to shrink minimal image size

The switch is in local.conf.sample, uncomment the line
DISTRO_FEATURES_EGLIBC = ""
and write what options you want to enable.

If want to disable locale-code charsets or locales, you have to uncomment
PACKAGE_NO_GCONV = 1
Because without this, it fails on package_do_split_gconvs in libc-package.bbclass

The following changes since commit fabfd7ec97af3ae2eef39b94d52b49ad565aed90:

  task-core-lsb: add cups and ghostscript into image (2011-06-02 15:51:23 +0800)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib.git kangkai/distro
  http://git.pokylinux.org/cgit.cgi//log/?h=kangkai/distro

Kang Kai (1):
  eglibc: migrate configurability from oe

 meta-yocto/conf/local.conf.sample                  |   17 ++++++
 .../eglibc-2.13-fix-macro-RTLD_DEBUG.patch         |   20 +++++++
 meta/recipes-core/eglibc/eglibc-options.inc        |   55 ++++++++++++++++++++
 meta/recipes-core/eglibc/eglibc.inc                |    6 ++
 meta/recipes-core/eglibc/eglibc_2.13.bb            |    4 +-
 5 files changed, 101 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-core/eglibc/eglibc-2.13/eglibc-2.13-fix-macro-RTLD_DEBUG.patch
 create mode 100644 meta/recipes-core/eglibc/eglibc-options.inc

-- 
1.7.5.1.300.gc565c


