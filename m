Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id C60504C80050
	for <poky@yoctoproject.org>; Sat,  2 Apr 2011 03:43:10 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p328hAYF020596
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Sat, 2 Apr 2011 01:43:10 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Sat, 2 Apr 2011 01:43:09 -0700
Message-ID: <cover.1301733116.git.xiaofeng.yan@windriver.com>
Old-Date: Sat, 2 Apr 2011 16:31:56 +0800
Date: Sat, 2 Apr 2011 16:35:10 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 0/1] LSB_Setup.sh: Add function to install all test packages
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
X-List-Received-Date: Sat, 02 Apr 2011 08:43:11 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

Add function to install all of lsb test suite packages instead of parts of packages before.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: xiaofeng/LSB_Setup.sh
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/LSB_Setup.sh

Thanks,
    Xiaofeng Yan <xiaofeng.yan@windriver.com>
---


Xiaofeng Yan (1):
  LSB_Setup.sh: Add function to install all test packages

 meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh |   50 ++++++++++++++---------
 1 files changed, 30 insertions(+), 20 deletions(-)


