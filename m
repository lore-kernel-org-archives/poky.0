Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id CA89B4C80AC8
	for <poky@yoctoproject.org>; Fri,  1 Apr 2011 04:17:41 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p319Hfsu002277
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 1 Apr 2011 02:17:41 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 1 Apr 2011 02:17:40 -0700
Message-ID: <cover.1301648561.git.xiaofeng.yan@windriver.com>
Old-Date: Fri, 1 Apr 2011 17:02:41 +0800
Date: Fri, 1 Apr 2011 17:09:55 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 0/1] creat-lsb-image: Support to make a non-qemu lsb image
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
X-List-Received-Date: Fri, 01 Apr 2011 09:17:42 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

Before modification this script can only make a lsb image for qemu. For supporting non-qemu and LAN, add some content about non qemu and download all test packages. 

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: xiaofeng/creat-lsb-image
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/creat-lsb-image

Thanks,
    Xiaofeng Yan <xiaofeng.yan@windriver.com>
---


Xiaofeng Yan (1):
  creat-lsb-image: Modify some content for making a non-qemu lsb-image

 scripts/creat-lsb-image |  127 +++++++++++++++++++++++++++--------------------
 1 files changed, 73 insertions(+), 54 deletions(-)


