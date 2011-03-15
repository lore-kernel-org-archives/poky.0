Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 28DA44C8009A
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 00:38:05 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2F5c4i5026275
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 14 Mar 2011 22:38:04 -0700 (PDT)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Mon, 14 Mar 2011 22:38:03 -0700
Message-ID: <cover.1300167046.git.kai.kang@windriver.com>
Old-Date: Tue, 15 Mar 2011 13:30:46 +0800
Date: Tue, 15 Mar 2011 13:36:35 +0800
To: <sgw@linux.intel.com>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Cc: poky@yoctoproject.org
Subject: [PATCH 0/1] slang: export INST_LIB_DIR to fix compile problems
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
X-List-Received-Date: Tue, 15 Mar 2011 05:38:05 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

Hi Soul,

I have amend slang patch according to your demand, and resend it.
Thank you!

When bitbake slang/slsh, it links to building machine's libraries by using INST_LIB_DIR.
Export INST_LIB_DIR in do_install to fix the cross compile problems.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kangkai/distro01
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/distro01

Thanks,
    Kang Kai <kai.kang@windriver.com>
---


Kang Kai (1):
  slang: export INST_LIB_DIR to fix compile problems

 meta/recipes-extended/slang/slang_2.2.2.bb |    8 +++++++-
 1 files changed, 7 insertions(+), 1 deletions(-)


