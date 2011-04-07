Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 21C4E4C80044
	for <poky@pokylinux.org>; Thu,  7 Apr 2011 02:32:23 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p377WMKK025387
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@pokylinux.org>; Thu, 7 Apr 2011 00:32:22 -0700 (PDT)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Thu, 7 Apr 2011 00:32:21 -0700
Message-ID: <cover.1302161399.git.kai.kang@windriver.com>
Old-Date: Thu, 7 Apr 2011 15:29:59 +0800
Date: Thu, 7 Apr 2011 15:32:16 +0800
To: <poky@pokylinux.org>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Subject: [PATCH 0/1] slang: update DEPENDS to avoid compile failure
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
X-List-Received-Date: Thu, 07 Apr 2011 07:32:23 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

Add libx11 and libpng to slang DEPENDS to avoid compile failure.
Fixes [YOCTO #947]

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kangkai/yocto947
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/yocto947

Thanks,
    Kang Kai <kai.kang@windriver.com>
---


Kang Kai (1):
  slang: update DEPENDS to avoid compile failure

 meta/recipes-extended/slang/slang_2.2.2.bb |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)


