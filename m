Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 771B14C80523
	for <poky@yoctoproject.org>; Wed, 11 May 2011 03:09:33 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4B89WIW019627
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 11 May 2011 01:09:32 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 11 May 2011 01:09:32 -0700
Message-ID: <cover.1305016641.git.xiaofeng.yan@windriver.com>
Old-Date: Tue, 10 May 2011 16:37:21 +0800
Date: Wed, 11 May 2011 16:08:53 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 0/3] Add init scripts and make a link for sendmail
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
X-List-Received-Date: Wed, 11 May 2011 08:09:33 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

I Add init-functios to lsb-image because LSB Test suite need init scripts.
And I make a link for sendmail because LSB Test Suite need it. 

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: xiaofeng/lsb
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/lsb

Thanks,
    Xiaofeng Yan <xiaofeng.yan@windriver.com>
---


Xiaofeng Yan (3):
  wq!lsb: Add init-functions to lsb-image
  init-functions: Conforming applications may install one or more
    initialization scripts
  lsbsetup: Add link for sendmail

 meta/recipes-extended/lsb/lsb/init-functions   |   32 +++++++++++++++++
 meta/recipes-extended/lsb/lsb/lsb_killproc     |    6 +++
 meta/recipes-extended/lsb/lsb/lsb_log_message  |   27 ++++++++++++++
 meta/recipes-extended/lsb/lsb/lsb_pidofproc    |    6 +++
 meta/recipes-extended/lsb/lsb/lsb_start_daemon |   45 ++++++++++++++++++++++++
 meta/recipes-extended/lsb/lsb_1.4.bb           |   39 +++++++++++++-------
 meta/recipes-extended/lsb/lsbsetup_0.9.bb      |    1 +
 7 files changed, 142 insertions(+), 14 deletions(-)
 create mode 100755 meta/recipes-extended/lsb/lsb/init-functions
 create mode 100755 meta/recipes-extended/lsb/lsb/lsb_killproc
 create mode 100755 meta/recipes-extended/lsb/lsb/lsb_log_message
 create mode 100755 meta/recipes-extended/lsb/lsb/lsb_pidofproc
 create mode 100755 meta/recipes-extended/lsb/lsb/lsb_start_daemon


