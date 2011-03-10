Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 883224C80050
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 00:07:52 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2A67psf019589
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 9 Mar 2011 22:07:51 -0800 (PST)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 9 Mar 2011 22:07:50 -0800
Message-ID: <cover.1299727511.git.kai.kang@windriver.com>
Old-Date: Thu, 10 Mar 2011 11:25:11 +0800
Date: Thu, 10 Mar 2011 14:07:13 +0800
To: <poky@yoctoproject.org>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Subject: [PATCH 0/1] PATCH:fix Bug 812
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
X-List-Received-Date: Thu, 10 Mar 2011 06:07:52 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

When cross build slang, it links to build machine's libraries, so remove the 
absolute path to fix it. I confirm it is ok to do native build too.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kangkai/distro01
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/distro01

Thanks,
    Kang Kai <kai.kang@windriver.com>
---


Kang Kai (1):
  PATCH: fix Bug 812 about slang

 .../slang/slang/fix-cross-configure.patch          |   16 ++++++++++++++++
 meta/recipes-extended/slang/slang_2.2.2.bb         |    7 +++++--
 2 files changed, 21 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-extended/slang/slang/fix-cross-configure.patch


