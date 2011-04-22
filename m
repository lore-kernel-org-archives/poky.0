Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 642E74C80A73
	for <poky@yoctoproject.org>; Fri, 22 Apr 2011 01:45:26 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3M6jPdt027966
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 21 Apr 2011 23:45:25 -0700 (PDT)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Thu, 21 Apr 2011 23:45:24 -0700
Message-ID: <cover.1303454125.git.kai.kang@windriver.com>
Old-Date: Fri, 22 Apr 2011 14:35:25 +0800
Date: Fri, 22 Apr 2011 14:45:24 +0800
To: <sgw@linux.intel.com>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Cc: poky@yoctoproject.org
Subject: [PATCH 0/1] lsbsetup: add some workaround for LSB tests
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
X-List-Received-Date: Fri, 22 Apr 2011 06:45:27 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

Hi Saul,

If this patch ok, could you please merge it before next lsb image autobuild. We hope
we can check this in image which download from autobuilder next week. Thank you!

Add some workaround for LSB libstdcpp and tcl tests.
Recreate locales for libstdcpp test, and resolve localhost is for
tcl test [Yocto 898]
Bump PR, update LICENSE information and installed file mode

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kangkai/lsbsetup
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/lsbsetup

Thanks,
    Kang Kai <kai.kang@windriver.com>
---


Kang Kai (1):
  lsbsetup: add some workaround for LSB tests

 meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh |   15 ++++++++++++++-
 meta/recipes-extended/lsb/lsbsetup_0.9.bb       |    8 ++++----
 2 files changed, 18 insertions(+), 5 deletions(-)


