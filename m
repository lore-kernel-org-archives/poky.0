Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0791E4C802F2
	for <poky@yoctoproject.org>; Sat, 21 May 2011 03:24:25 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4L8NqJK025754
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 21 May 2011 01:23:52 -0700 (PDT)
Received: from localhost (128.224.162.196) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Sat, 21 May 2011 01:23:51 -0700
Message-ID: <cover.1305963432.git.kai.kang@windriver.com>
Old-Date: Sat, 21 May 2011 15:37:12 +0800
Date: Sat, 21 May 2011 16:24:37 +0800
To: <richard.purdie@linuxfoundation.org>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.196]
Cc: poky@yoctoproject.org
Subject: [PATCH 0/1]ghostscript: add patches to make it run cross compile platform V2
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
X-List-Received-Date: Sat, 21 May 2011 08:24:26 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

Hi Richard,

I update the patches with your opinion, thanks!

When test lsb on ppc find that gs can't run. The root cause is gs determines some target configuration
on build system. According to the document of ghostscript,
http://pages.cs.wisc.edu/~ghost/doc/cvs/Make.htm#Cross-compiling
when cross compile ghostscript need some manual work.
So import patches from WindRiver Linux to make sure ghostscript can be cross compiled, and spit the patches
into arch/[so]obj.h source files.

The following changes since commit 7706d5d844db2725f4118207d90e302679eacdfe:

  linux-yocto/meta-yocto: fix gcc 4.6.0 compilation failures (2011-05-19 17:33:50 -0700)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib.git kangkai/distro
  http://git.pokylinux.org/cgit.cgi//log/?h=kangkai/distro

Kang Kai (1):
  ghostscript: fix run failure on mpc8315e

 meta/recipes-extended/ghostscript/arm/objarch.h    |   40 +++++++++++++++++++
 meta/recipes-extended/ghostscript/arm/soobjarch.h  |   40 +++++++++++++++++++
 .../ghostscript/ghostscript-9.02-genarch.patch     |   27 +++++++++++++
 .../ghostscript/ghostscript_9.02.bb                |   22 +++++++++-
 meta/recipes-extended/ghostscript/i586/objarch.h   |   41 ++++++++++++++++++++
 meta/recipes-extended/ghostscript/i586/soobjarch.h |   41 ++++++++++++++++++++
 meta/recipes-extended/ghostscript/mips/objarch.h   |   40 +++++++++++++++++++
 meta/recipes-extended/ghostscript/mips/soobjarch.h |   40 +++++++++++++++++++
 .../recipes-extended/ghostscript/powerpc/objarch.h |   40 +++++++++++++++++++
 .../ghostscript/powerpc/soobjarch.h                |   40 +++++++++++++++++++
 meta/recipes-extended/ghostscript/x86_64/objarch.h |   40 +++++++++++++++++++
 .../ghostscript/x86_64/soobjarch.h                 |   40 +++++++++++++++++++
 12 files changed, 448 insertions(+), 3 deletions(-)
 create mode 100644 meta/recipes-extended/ghostscript/arm/objarch.h
 create mode 100644 meta/recipes-extended/ghostscript/arm/soobjarch.h
 create mode 100644 meta/recipes-extended/ghostscript/ghostscript/ghostscript-9.02-genarch.patch
 create mode 100644 meta/recipes-extended/ghostscript/i586/objarch.h
 create mode 100644 meta/recipes-extended/ghostscript/i586/soobjarch.h
 create mode 100644 meta/recipes-extended/ghostscript/mips/objarch.h
 create mode 100644 meta/recipes-extended/ghostscript/mips/soobjarch.h
 create mode 100644 meta/recipes-extended/ghostscript/powerpc/objarch.h
 create mode 100644 meta/recipes-extended/ghostscript/powerpc/soobjarch.h
 create mode 100644 meta/recipes-extended/ghostscript/x86_64/objarch.h
 create mode 100644 meta/recipes-extended/ghostscript/x86_64/soobjarch.h

-- 
1.7.5.1.300.gc565c


