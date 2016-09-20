Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37C77E00BCE; Tue, 20 Sep 2016 04:57:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE606E00B04;
	Tue, 20 Sep 2016 04:57:10 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u8KBvAdL013413
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Tue, 20 Sep 2016 04:57:10 -0700
Received: from pek-lpggp4.wrs.com (128.224.153.77) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 20 Sep 2016 04:57:09 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <linux-yocto@yoctoproject.org>, <poky@yoctoproject.org>
Date: Tue, 20 Sep 2016 19:54:41 +0800
Message-ID: <20160920115445.157131-5-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20160920115445.157131-1-kexin.hao@windriver.com>
References: <20160920115445.157131-1-kexin.hao@windriver.com>
MIME-Version: 1.0
Subject: [kernel 2/6] fs: yaffs2: switch to the new prototype for ->set/getxattr()
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
X-List-Received-Date: Tue, 20 Sep 2016 11:57:11 -0000
Content-Type: text/plain

Since commit 3767e255b390 ("switch ->setxattr() to passing dentry and
inode separately") and commit ce23e6401334 ("->getxattr(): pass dentry
and inode as separate arguments"), a new inode argument has been added
for these two functions. Adjust these two functions to accommodate to
this change.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 fs/yaffs2/yaffs_vfs.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/fs/yaffs2/yaffs_vfs.c b/fs/yaffs2/yaffs_vfs.c
index 9aa007d9ded6..cd387d7abfa2 100644
--- a/fs/yaffs2/yaffs_vfs.c
+++ b/fs/yaffs2/yaffs_vfs.c
@@ -919,10 +919,10 @@ static int yaffs_setattr(struct dentry *dentry, struct iattr *attr)
 	return error;
 }
 
-static int yaffs_setxattr(struct dentry *dentry, const char *name,
-		   const void *value, size_t size, int flags)
+static int yaffs_setxattr(struct dentry *dentry, struct inode *inode,
+			  const char *name, const void *value, size_t size,
+			  int flags)
 {
-	struct inode *inode = dentry->d_inode;
 	int error = 0;
 	struct yaffs_dev *dev;
 	struct yaffs_obj *obj = yaffs_inode_to_obj(inode);
@@ -952,10 +952,9 @@ static int yaffs_setxattr(struct dentry *dentry, const char *name,
 	return error;
 }
 
-static ssize_t yaffs_getxattr(struct dentry * dentry, const char *name,
-			void *buff, size_t size)
+static ssize_t yaffs_getxattr(struct dentry * dentry, struct inode *inode,
+			      const char *name, void *buff, size_t size)
 {
-	struct inode *inode = dentry->d_inode;
 	int error = 0;
 	struct yaffs_dev *dev;
 	struct yaffs_obj *obj = yaffs_inode_to_obj(inode);
-- 
2.9.3


