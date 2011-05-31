Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9F9604C800C1
	for <poky@yoctoproject.org>; Tue, 31 May 2011 02:17:08 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4V7H7UF024931
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 31 May 2011 00:17:07 -0700 (PDT)
Received: from localhost (128.224.162.198) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Tue, 31 May 2011 00:17:07 -0700
Message-ID: <a8fa77774f70651ba6ef9a40c6ab2d833d937fcc.1306811461.git.kai.kang@windriver.com>
In-Reply-To: <cover.1306811461.git.kai.kang@windriver.com>
References: <cover.1306811461.git.kai.kang@windriver.com>
Old-Date: Tue, 31 May 2011 10:27:50 +0800
Date: Tue, 31 May 2011 15:17:01 +0800
To: <saul.wold@intel.com>, <poky@yoctoproject.org>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.198]
Subject: [PATCH 1/1] task-core-lsb: add cups and ghostscript into image
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
X-List-Received-Date: Tue, 31 May 2011 07:17:08 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

[Yocto 1030]
Because it is fixed by Qing He, then add cups and ghostscipt into image

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 meta/recipes-extended/tasks/task-core-lsb.bb |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-extended/tasks/task-core-lsb.bb b/meta/recipes-extended/tasks/task-core-lsb.bb
index b6c5ae5..9fbacf9 100644
--- a/meta/recipes-extended/tasks/task-core-lsb.bb
+++ b/meta/recipes-extended/tasks/task-core-lsb.bb
@@ -133,8 +133,9 @@ RDEPENDS_task-core-lsb-command-add = "\
     chkconfig \
     xdg-utils \
     foomatic-filters \
+    cups \
+    ghostscript \
 "
-#    cups
 
 RDEPENDS_task-core-lsb-perl-add = "\
     perl-modules \
-- 
1.7.5.1.300.gc565c


