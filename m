Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id EBC974C804D4
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 01:31:14 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2E6VDOi012342
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 13 Mar 2011 23:31:13 -0700 (PDT)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Sun, 13 Mar 2011 23:31:12 -0700
Message-ID: <cover.1300083112.git.kai.kang@windriver.com>
Old-Date: Mon, 14 Mar 2011 14:11:52 +0800
Date: Mon, 14 Mar 2011 14:29:54 +0800
To: <sgw@linux.intel.com>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Cc: poky@yoctoproject.org
Subject: [PATCH 0/1] PATCH RESEND: fix Bug 812 about slang
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
X-List-Received-Date: Mon, 14 Mar 2011 06:31:15 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

Hi Soul,

Resend patch for bug 812.

When do install, export "INST_LIB_DIR=${STAGING_DIR_HOST}/usr/lib" to slsh so
that it will go to the right place to search libraries.

And add necessary files to run slsh.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kangkai/distro01
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/distro01

Thanks,
    Kang Kai <kai.kang@windriver.com>
---


Kang Kai (1):
  PATCH: fix Bug 812 about slang

 meta/recipes-extended/slang/slang_2.2.2.bb |    8 +++++++-
 1 files changed, 7 insertions(+), 1 deletions(-)


