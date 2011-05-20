Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0B1294C80479
	for <poky@yoctoproject.org>; Fri, 20 May 2011 04:40:49 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4K9en5u007446
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 20 May 2011 02:40:49 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 20 May 2011 02:40:49 -0700
Message-ID: <7bb24bd1f62621d86f131f0babf0117d6dcd49d4.1305884138.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1305884138.git.xiaofeng.yan@windriver.com>
References: <cover.1305884138.git.xiaofeng.yan@windriver.com>
Old-Date: Fri, 20 May 2011 17:14:15 +0800
Date: Fri, 20 May 2011 17:39:27 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 1/1] [YOCTO #1090]: Fix bugs
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
X-List-Received-Date: Fri, 20 May 2011 09:40:50 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

Modify task-core-lsb.bb to solve the problem graphic library can't be installed into lsb image

Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
---
 meta/recipes-extended/tasks/task-core-lsb.bb |   10 +++++-----
 1 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta/recipes-extended/tasks/task-core-lsb.bb b/meta/recipes-extended/tasks/task-core-lsb.bb
index b6c5ae5..59ba051 100644
--- a/meta/recipes-extended/tasks/task-core-lsb.bb
+++ b/meta/recipes-extended/tasks/task-core-lsb.bb
@@ -170,20 +170,20 @@ RDEPENDS_task-core-lsb-graphic-add = "\
     liberation-fonts \
 "
 
-RDEPENDS_task-core-lsb-graphic-add_qemux86 = "\
+RDEPENDS_task-core-lsb-graphic-add_append_qemux86 = "\
     libqtopengl4 \
 "
-RDEPENDS_task-core-lsb-graphic-add_atom-pc = "\
+RDEPENDS_task-core-lsb-graphic-add_append_atom-pc = "\
     libqtopengl4 \
 "
-RDEPENDS_task-core-lsb-graphic-add_qemuppc = "\
+RDEPENDS_task-core-lsb-graphic-add_append_qemuppc = "\
     libqtopengl4 \
 "
-RDEPENDS_task-core-lsb-graphic-add_emenlow = "\
+RDEPENDS_task-core-lsb-graphic-add_append_emenlow = "\
     libqtopengl4 \
 "
 
-RDEPENDS_task-core-lsb-graphic-add_mpc8315e-rdb = "\
+RDEPENDS_task-core-lsb-graphic-add_append_mpc8315e-rdb = "\
     libqtopengl4 \
 "
 
-- 
1.7.0.4


