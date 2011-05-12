Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 077E44C8103F
	for <poky@yoctoproject.org>; Wed, 11 May 2011 23:33:00 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4C4X0AJ020728
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 11 May 2011 21:33:00 -0700 (PDT)
Received: from localhost (128.224.162.193) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 11 May 2011 21:32:59 -0700
Message-ID: <cover.1305106462.git.jingdong.lu@windriver.com>
Old-Date: Wed, 11 May 2011 17:34:22 +0800
Date: Thu, 12 May 2011 12:32:57 +0800
To: <poky@yoctoproject.org>
CC: 
From: Jingdong Lu <jingdong.lu@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.193]
Subject: [PATCH 0/1]bash:enable update-alternatives to use bash as default shell
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
X-List-Received-Date: Thu, 12 May 2011 04:33:01 -0000
Content-Type: text/plain

From: Jingdong Lu <jingdong.lu@windriver.com>


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: jingdonglu/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jingdonglu/distro

Thanks,
    Jingdong Lu <jingdong.lu@windriver.com>
---


Jingdong Lu (1):
  bash: enable update-alternative to use bash as default shell

 meta/recipes-extended/bash/bash.inc    |    2 +-
 meta/recipes-extended/bash/bash_4.1.bb |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)


