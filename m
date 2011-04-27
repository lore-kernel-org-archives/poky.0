Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2BF5B4C80332
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 04:29:42 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3R9Te10013684
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 27 Apr 2011 02:29:41 -0700 (PDT)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 27 Apr 2011 02:29:40 -0700
Message-ID: <e42614d9ad2becbc398aa7096c25f4aea07deba9.1303895739.git.kai.kang@windriver.com>
In-Reply-To: <cover.1303895739.git.kai.kang@windriver.com>
References: <cover.1303895739.git.kai.kang@windriver.com>
Old-Date: Wed, 27 Apr 2011 17:14:38 +0800
Date: Wed, 27 Apr 2011 17:30:16 +0800
To: <saul.wold@intel.com>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Cc: poky@yoctoproject.org
Subject: [PATCH 3/3] task-core-lsb: add xdg-utils into lsb image
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
X-List-Received-Date: Wed, 27 Apr 2011 09:29:42 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

Add xdg-utils in task-core-lsb, for LSB command check.
Part fixes [Yocto 520]

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 meta/recipes-extended/tasks/task-core-lsb.bb |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-extended/tasks/task-core-lsb.bb b/meta/recipes-extended/tasks/task-core-lsb.bb
index ef8acb1..ed705f1 100644
--- a/meta/recipes-extended/tasks/task-core-lsb.bb
+++ b/meta/recipes-extended/tasks/task-core-lsb.bb
@@ -130,6 +130,7 @@ RDEPENDS_task-core-lsb-command-add = "\
     mailx \
     msmtp \
     chkconfig \
+    xdg-utils \
 "
 #    cups
 
-- 
1.7.1


