Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7141FE0147E
	for <poky@yoctoproject.org>; Tue, 19 Mar 2013 23:46:29 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r2K6kSSM001003
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 19 Mar 2013 23:46:29 -0700 (PDT)
Received: from pek-usp-9.wrs.com (128.224.162.26) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.2.342.3;
	Tue, 19 Mar 2013 23:46:29 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Wed, 20 Mar 2013 14:31:05 +0800
Message-ID: <27210be29c15238d711330a4174b6cb234e16f11.1363746428.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.7.7
In-Reply-To: <cover.1363746428.git.liezhi.yang@windriver.com>
References: <cover.1363746428.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: qingtao.cao@windriver.com
Subject: [PATCH 1/1] local.conf.sample.extended: update for disk monitor
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 20 Mar 2013 06:46:29 -0000
Content-Type: text/plain

The previous disk monitor is based on the disk, and one disk only can
have one action, now it is based on the path, so we remove the additional
comments from local.conf.sample.extended

[YOCTO #3995]

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 meta-yocto/conf/local.conf.sample.extended |    5 +----
 1 files changed, 1 insertions(+), 4 deletions(-)

diff --git a/meta-yocto/conf/local.conf.sample.extended b/meta-yocto/conf/local.conf.sample.extended
index 8e5dca5..4d9ce56 100644
--- a/meta-yocto/conf/local.conf.sample.extended
+++ b/meta-yocto/conf/local.conf.sample.extended
@@ -152,10 +152,7 @@
 # Disk space monitor, take action when the disk space or the amount of
 # inode is running low, it is enabled when BB_DISKMON_DIRS is set.
 #
-# Set the directories to monitor for disk usage, if more than one
-# directories are mounted in the same device, then only one directory
-# would be monitored since the monitor is based on the device.
-# The format is:
+# Set the directory for the monitor, the format is:
 # "action,directory,minimum_space,minimum_free_inode"
 #
 # The "action" must be set and should be one of:
-- 
1.7.7


