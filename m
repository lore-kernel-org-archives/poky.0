Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 47BDC4C81067
	for <poky@yoctoproject.org>; Thu, 12 May 2011 05:35:38 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4CAZW8Y024326
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 12 May 2011 03:35:32 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Thu, 12 May 2011 03:35:32 -0700
Message-ID: <cover.1305195651.git.xiaofeng.yan@windriver.com>
Old-Date: Thu, 12 May 2011 18:20:51 +0800
Date: Thu, 12 May 2011 18:34:48 +0800
To: <poky@yoctoproject.org>, <jingdong.lu@windriver.com>,
	<liezhi.yang@windriver.com>, <kai.kang@windriver.com>,
	<xiaofeng.yan@windriver.com>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 0/1] meta-qt3: Add discription to README
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
X-List-Received-Date: Thu, 12 May 2011 10:35:38 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

The content to add README:
1 Get lsb-image which include qt3
2 Compile qt3
3 Install qt3 to non-lsb-image

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: xiaofeng/meta-qt3
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/meta-qt3

Thanks,
    Xiaofeng Yan <xiaofeng.yan@windriver.com>
---


Xiaofeng Yan (1):
  meta-qt3: Add discription to README

 README |    9 +++++++++
 1 files changed, 9 insertions(+), 0 deletions(-)


