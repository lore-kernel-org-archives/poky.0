Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 62FA14C803D6
	for <poky@yoctoproject.org>; Tue, 24 May 2011 06:14:07 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4OBE6pm029423
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 24 May 2011 04:14:06 -0700 (PDT)
Received: from localhost (128.224.162.193) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Tue, 24 May 2011 04:14:06 -0700
Message-ID: <cover.1306235471.git.jingdong.lu@windriver.com>
Old-Date: Tue, 24 May 2011 19:11:11 +0800
Date: Tue, 24 May 2011 19:13:25 +0800
To: <poky@yoctoproject.org>
CC: 
From: Jingdong Lu <jingdong.lu@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.193]
Subject: [PATCH 0/1] libx11: fix libX11 keysyms to pass xts5 of lsb
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
X-List-Received-Date: Tue, 24 May 2011 11:14:07 -0000
Content-Type: text/plain

From: Jingdong Lu <jingdong.lu@windriver.com>

Fixes bug: [YOCTO #1095]
    Because of cross-compiling libx11 keysyms will cause Xts5 test of LSB fail.
    libx11 use a tool named "makekey" which compiled as a native tool to generate
    ks_tables.h. Because the size of "unsigned long" is different between 32-bit
    and 64-bit, we should judge whether our target is 32-bit or 64-bit and tell
    "makekey".
    I add a patch to "makekeys_crosscompile.patch" to "src/utils/makekeys.c" in
    order to deal with the different targets. If our target is 32-bit, we force
    the variable its type is "unsigned long" to "uint32_t". So we can generate a
    correct keysyms. 

The following changes since commit 7706d5d844db2725f4118207d90e302679eacdfe:
  Bruce Ashfield (1):
        linux-yocto/meta-yocto: fix gcc 4.6.0 compilation failures

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib.git jingdonglu/distro
  http://git.pokylinux.org/cgit.cgi//log/?h=jingdonglu/distro

Jingdong Lu (1):
  libx11: fix libX11 keysyms to pass xts5 of lsb

 .../libx11-1.3.4/makekeys_crosscompile.patch       |   37 ++++++++++++++++++++
 .../recipes-graphics/xorg-lib/libx11-trim_1.3.4.bb |    5 ++-
 meta/recipes-graphics/xorg-lib/libx11.inc          |    8 ++++-
 meta/recipes-graphics/xorg-lib/libx11_1.3.4.bb     |    5 ++-
 4 files changed, 50 insertions(+), 5 deletions(-)
 create mode 100644 meta/recipes-graphics/xorg-lib/libx11-1.3.4/makekeys_crosscompile.patch


