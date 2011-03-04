Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9A9E94C80050
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 20:11:43 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p242BhiO003462
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 3 Mar 2011 18:11:43 -0800 (PST)
Received: from localhost (128.224.162.205) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Thu, 3 Mar 2011 18:11:42 -0800
Message-ID: <cover.1299204551.git.jingdong.lu@windriver.com>
Old-Date: Fri, 4 Mar 2011 10:09:11 +0800
Date: Fri, 4 Mar 2011 10:11:46 +0800
To: <poky@yoctoproject.org>
CC: 
From: Jingdong Lu <jingdong.lu@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.205]
Subject: [PATCH 0/1] task-poky-lsb: add python-misc
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
X-List-Received-Date: Fri, 04 Mar 2011 02:11:44 -0000
Content-Type: text/plain

From: Jingdong Lu <jingdong.lu@windriver.com>

Add python-misc into task-poky-lsb.bb in order to run python tests of LSB.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: jingdonglu/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jingdonglu/distro

Thanks,
    Jingdong Lu <jingdong.lu@windriver.com>
---


Jingdong Lu (1):
  task-poky-lsb: add python-misc

 meta/recipes-extended/tasks/task-poky-lsb.bb |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)


