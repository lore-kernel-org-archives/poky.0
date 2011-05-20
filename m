Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id B72CF4C802F2
	for <poky@yoctoproject.org>; Fri, 20 May 2011 07:19:21 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4KCJKxC001901
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 20 May 2011 05:19:20 -0700 (PDT)
Received: from localhost (128.224.162.196) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 20 May 2011 05:19:20 -0700
Message-ID: <cover.1305891945.git.kai.kang@windriver.com>
Old-Date: Fri, 20 May 2011 19:45:45 +0800
Date: Fri, 20 May 2011 20:19:55 +0800
To: <sgw@linux.intel.com>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.196]
Cc: poky@yoctoproject.org
Subject: [PATCH 0/1] ghostscript: add patches to make it run cross compile platform
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
X-List-Received-Date: Fri, 20 May 2011 12:19:22 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

Hi Saul,

When test lsb on ppc find that gs can't run. The root cause is gs determines some target configuration
on build system. According to the document of ghostscript,
http://pages.cs.wisc.edu/~ghost/doc/cvs/Make.htm#Cross-compiling
when cross compile ghostscript need some manual work.
So import patches from WindRiver Linux to make sure ghostscript can be cross compiled.

The following changes since commit 7706d5d844db2725f4118207d90e302679eacdfe:

  linux-yocto/meta-yocto: fix gcc 4.6.0 compilation failures (2011-05-19 17:33:50 -0700)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib.git kangkai/distro
  http://git.pokylinux.org/cgit.cgi//log/?h=kangkai/distro

Kang Kai (1):
  ghostscript: fix run failure on mpc8315e

 .../ghostscript-8.64-mips64n32-build.patch         |  113 +++++++++++++++++++
 .../ghostscript/ghostscript-8.64-ppc32-build.patch |  113 +++++++++++++++++++
 .../ghostscript/ghostscript-8.64-x86-build.patch   |  115 ++++++++++++++++++++
 .../ghostscript-8.64-x86_64-build.patch            |  113 +++++++++++++++++++
 .../ghostscript/ghostscript-9.02-arm-build.patch   |  109 +++++++++++++++++++
 .../ghostscript/ghostscript_9.02.bb                |   17 +++-
 6 files changed, 577 insertions(+), 3 deletions(-)
 create mode 100644 meta/recipes-extended/ghostscript/ghostscript/ghostscript-8.64-mips64n32-build.patch
 create mode 100644 meta/recipes-extended/ghostscript/ghostscript/ghostscript-8.64-ppc32-build.patch
 create mode 100644 meta/recipes-extended/ghostscript/ghostscript/ghostscript-8.64-x86-build.patch
 create mode 100644 meta/recipes-extended/ghostscript/ghostscript/ghostscript-8.64-x86_64-build.patch
 create mode 100644 meta/recipes-extended/ghostscript/ghostscript/ghostscript-9.02-arm-build.patch

-- 
1.7.5.1.300.gc565c


