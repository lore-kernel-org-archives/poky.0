Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6D7074C803BA
	for <poky@yoctoproject.org>; Wed,  2 Mar 2011 23:15:30 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p235FTc7009124
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 2 Mar 2011 21:15:29 -0800 (PST)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 2 Mar 2011 21:15:28 -0800
Message-ID: <cover.1299127174.git.kai.kang@windriver.com>
Old-Date: Thu, 3 Mar 2011 12:39:34 +0800
Date: Thu, 3 Mar 2011 13:15:25 +0800
To: <poky@yoctoproject.org>
CC: 
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Subject: [PATCH 0/3] recipes: add chkconfig and dependecies
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
X-List-Received-Date: Thu, 03 Mar 2011 05:15:30 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

Add chkconfig for lsb command test, because lsb will check 2 commands install_initd
and remove_initd linked to command chkconfig.
slang and newt are depencies both from OE.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kangkai/distro01
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/distro01

Thanks,
    Kang Kai <kai.kang@windriver.com>
---


Kang Kai (3):
  recipe: add chkconfig for LSB command test
  recipe: add newt from OE
  recipe: add slang from OE

 .../recipes-extended/chkconfig/chkconfig_1.3.49.bb |   27 ++++++++
 .../newt/files/include-without-python.patch        |   71 ++++++++++++++++++++
 meta/recipes-extended/newt/libnewt_0.52.12.bb      |   37 ++++++++++
 meta/recipes-extended/slang/slang/fix-uclibc.patch |   11 +++
 meta/recipes-extended/slang/slang_2.2.2.bb         |   25 +++++++
 5 files changed, 171 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-extended/chkconfig/chkconfig_1.3.49.bb
 create mode 100644 meta/recipes-extended/newt/files/include-without-python.patch
 create mode 100644 meta/recipes-extended/newt/libnewt_0.52.12.bb
 create mode 100644 meta/recipes-extended/slang/slang/fix-uclibc.patch
 create mode 100644 meta/recipes-extended/slang/slang_2.2.2.bb


