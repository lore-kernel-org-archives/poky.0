Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 363BC4C80FBE
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 05:26:08 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3FAQ77S025532
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 03:26:07 -0700 (PDT)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 15 Apr 2011 03:26:07 -0700
Message-ID: <cover.1302847580.git.kai.kang@windriver.com>
Old-Date: Fri, 15 Apr 2011 14:06:20 +0800
Date: Fri, 15 Apr 2011 18:25:56 +0800
To: <poky@yoctoproject.org>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Subject: [PATCH 0/1] jpeg: add link libjpeg.so.62 for LSB library test
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
X-List-Received-Date: Fri, 15 Apr 2011 10:26:08 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

LSB test just test whether libjpeg.so.62 exists, and no more use of it.
So just make link to pass library check.

Signed-off-by: Kang Kai <kai.kang@windriver.com>

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kankang/libjpeg
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kankang/libjpeg

Thanks,
    Kang Kai <kai.kang@windriver.com>
---


Kang Kai (1):
  jpeg: add link libjpeg.so.62 for LSB library test

 meta/recipes-core/jpeg/jpeg_8b.bb |   13 ++++++++++++-
 1 files changed, 12 insertions(+), 1 deletions(-)


