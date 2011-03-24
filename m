Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id C29A84C800BB
	for <poky@yoctoproject.org>; Wed, 23 Mar 2011 20:43:04 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2O1h4gQ022601
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 23 Mar 2011 18:43:04 -0700 (PDT)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 23 Mar 2011 18:43:03 -0700
Message-ID: <cover.1300874241.git.kai.kang@windriver.com>
Old-Date: Wed, 23 Mar 2011 17:57:21 +0800
Date: Thu, 24 Mar 2011 09:43:04 +0800
To: <poky@yoctoproject.org>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Subject: [PATCH 0/1] libjpeg-turbo: add libjpeg-turbo for LSB lib test
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
X-List-Received-Date: Thu, 24 Mar 2011 01:43:05 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

LSB 4.1 library test will check libjpeg.so.62, and
libjpeg-turbo provide it.


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kangkai/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/distro

Thanks,
    Kang Kai <kai.kang@windriver.com>
---


Kang Kai (1):
  libjpeg-turbo: add libjpeg-turbo for LSB lib test

 .../libjpeg-turbo/libjpeg-turbo_1.1.0.bb           |   23 ++++++++++++++++++++
 1 files changed, 23 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-extended/libjpeg-turbo/libjpeg-turbo_1.1.0.bb


