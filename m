Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6EAED4C80332
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 04:29:29 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3R9TSsl013657
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 27 Apr 2011 02:29:28 -0700 (PDT)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 27 Apr 2011 02:29:27 -0700
Message-ID: <cover.1303895739.git.kai.kang@windriver.com>
Old-Date: Wed, 27 Apr 2011 17:15:39 +0800
Date: Wed, 27 Apr 2011 17:30:03 +0800
To: <saul.wold@intel.com>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Cc: poky@yoctoproject.org
Subject: [PATCH 0/3] Fixes for LSB command check
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
X-List-Received-Date: Wed, 27 Apr 2011 09:29:29 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

Update groff to 1.20.1 from OE
Add commands install_initd and remove_initd in lsbsetup
Add xdg-utils into lsb image to provides xdg-* commands.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kangkai/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/distro

Thanks,
    Kang Kai <kai.kang@windriver.com>
---


Kang Kai (3):
  groff: update to 1.20.1
  lsbsetup: add commands install_initd and remove_initd
  task-core-lsb: add xdg-utils into lsb image

 meta/recipes-extended/groff/groff_1.20.1.bb  |   36 ++++++++++++++++++++++++++
 meta/recipes-extended/lsb/lsbsetup_0.9.bb    |    7 ++++-
 meta/recipes-extended/tasks/task-core-lsb.bb |    1 +
 3 files changed, 43 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-extended/groff/groff_1.20.1.bb


