Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8BB684C80AC9
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 04:31:33 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3F9VWVu017509
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 02:31:33 -0700 (PDT)
Received: from localhost (128.224.162.205) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 15 Apr 2011 02:31:32 -0700
Message-ID: <cover.1302597896.git.jingdong.lu@windriver.com>
Old-Date: Tue, 12 Apr 2011 16:44:56 +0800
Date: Fri, 15 Apr 2011 17:31:29 +0800
To: <poky@yoctoproject.org>
CC: 
From: Jingdong Lu <jingdong.lu@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.205]
Subject: [PATCH 0/2] Fix bug 794 and 796
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
X-List-Received-Date: Fri, 15 Apr 2011 09:31:33 -0000
Content-Type: text/plain

From: Jingdong Lu <jingdong.lu@windriver.com>

Fix bug 794: Add "largefile" feature for LSB distro and make perl test passed.
Fix bug 796: Add "--enable-clocale=gun" option for gcc configuration explicitly for LSB distro. 


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: jingdonglu/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jingdonglu/distro

Thanks,
    Jingdong Lu <jingdong.lu@windriver.com>
---


Jingdong Lu (2):
  gcc: Add "--enable-clocale=gnu" option for LSB.
  poky-lsb: Add "largefile" feature for LSB distro.

 meta-yocto/conf/distro/poky-lsb.conf           |    2 +-
 meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb |    3 ++-
 2 files changed, 3 insertions(+), 2 deletions(-)


