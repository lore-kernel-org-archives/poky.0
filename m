Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3DD914C80A73
	for <poky@yoctoproject.org>; Fri, 22 Apr 2011 04:17:31 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3M9HT9a023012
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 22 Apr 2011 02:17:30 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 22 Apr 2011 02:17:29 -0700
Message-ID: <cover.1303462728.git.xiaofeng.yan@windriver.com>
Old-Date: Fri, 22 Apr 2011 16:58:48 +0800
Date: Fri, 22 Apr 2011 17:04:33 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 0/1] Rename creat-lsb-image and improve some functions in script
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
X-List-Received-Date: Fri, 22 Apr 2011 09:17:31 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

Thank Darren Hart and Robert to give me suggestions which make this script more professional.
The function for this script is to create a 8G lsb image with lsb test suite.
Changes for this script:
1 Correct name of this script
2 Improve some function 

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: xiaofeng/Modify_creat-lsb-image
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/Modify_creat-lsb-image

Thanks,
    Xiaofeng Yan <xiaofeng.yan@windriver.com>
---


Xiaofeng Yan (1):
  create-lsb-image:Rename creat-lsb-image and improve some function

 scripts/creat-lsb-image  |  198 ----------------------------------------
 scripts/create-lsb-image |  228 ++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 228 insertions(+), 198 deletions(-)
 delete mode 100755 scripts/creat-lsb-image
 create mode 100755 scripts/create-lsb-image


