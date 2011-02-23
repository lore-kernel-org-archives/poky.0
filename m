Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 74A2C4C80A7D
	for <poky@yoctoproject.org>; Wed, 23 Feb 2011 03:28:38 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1N9SWbe010179
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 23 Feb 2011 01:28:32 -0800 (PST)
Received: from localhost (128.224.162.205) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 23 Feb 2011 01:28:32 -0800
Message-ID: <cover.1298452018.git.jingdong.lu@windriver.com>
Old-Date: Wed, 23 Feb 2011 17:06:58 +0800
Date: Wed, 23 Feb 2011 17:28:19 +0800
To: <poky@yoctoproject.org>
CC: 
From: Jingdong Lu <jingdong.lu@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.205]
Subject: [PATCH 0/2][PULL] Add necessary packages name into task-poky-lsb
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
X-List-Received-Date: Wed, 23 Feb 2011 09:28:38 -0000
Content-Type: text/plain

From: Jingdong Lu <jingdong.lu@windriver.com>

In order to run LSB test cases we add necessary packages into task-poky-lsb.
Some of them are needed for LSB runtime and the others are needed by LSB.

libxml-parse-perl package can't be generated because no files belong to it.
FILES_${PN} give a wrong path, so I remove it.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: jingdonglu/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jingdonglu/distro

Thanks,
    Jingdong Lu <jingdong.lu@windriver.com>
---


Jingdong Lu (2):
  libxml-parser-perl: remove FILES_${PN}
  task-poky-lsb: add necessary packages name

 .../perl/libxml-parser-perl_2.36.bb                |    4 -
 meta/recipes-extended/tasks/task-poky-lsb.bb       |  448 +++++++++++++++++++-
 2 files changed, 447 insertions(+), 5 deletions(-)


