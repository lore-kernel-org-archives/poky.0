Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01470E0138C
	for <poky@yoctoproject.org>; Tue,  8 Nov 2011 03:42:52 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pA8BgqpM019670
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 8 Nov 2011 03:42:52 -0800 (PST)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Tue, 8 Nov 2011 03:42:51 -0800
Message-ID: <cover.1320752764.git.xiaofeng.yan@windriver.com>
Old-Date: Tue, 8 Nov 2011 19:46:04 +0800
Date: Tue, 8 Nov 2011 19:50:53 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
Subject: [OE-core][PATCH 0/1] local.conf.sample.extended: Fix bug 1674
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
X-List-Received-Date: Tue, 08 Nov 2011 11:42:53 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

Remove "x11" from DEFAULT_FEATURES and add "directfb" to it because someone could don't need x11 in their project, perhaps gtk over directfb will meet his reqirement. 

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: xiaofeng/gtk+-direcfb_local
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/gtk+-direcfb_local

Thanks,
    Xiaofeng Yan <xiaofeng.yan@windriver.com>
---


Xiaofeng Yan (1):
  local.conf.sample.extended: Fix bug 1674

 meta-yocto/conf/local.conf.sample.extended |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)


