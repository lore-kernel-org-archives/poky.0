Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4032EE00A25; Wed, 27 May 2015 05:19:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7539FE0098D;
	Wed, 27 May 2015 05:19:33 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.9) with ESMTP id t4RCJXq7006111
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 27 May 2015 05:19:33 -0700 (PDT)
Received: from pek-khao-d1.corp.ad.wrs.com (128.224.162.156) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.224.2; Wed, 27 May 2015 05:19:32 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>, <linux-yocto@yoctoproject.org>
Date: Wed, 27 May 2015 20:19:14 +0800
Message-ID: <1432729155-28307-4-git-send-email-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <1432729155-28307-1-git-send-email-kexin.hao@windriver.com>
References: <1432729155-28307-1-git-send-email-kexin.hao@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 2/2] fs: yaffs2: kill f_dentry uses
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
X-List-Received-Date: Wed, 27 May 2015 12:19:38 -0000
Content-Type: text/plain

The macro f_dentry was already killed by commit 78d28e651f97 ("kill
f_dentry macro"). So we should kill all the uses of this macro.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 fs/yaffs2/yaffs_vfs.c | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/fs/yaffs2/yaffs_vfs.c b/fs/yaffs2/yaffs_vfs.c
index 0038cc17fbff..5230496230cd 100644
--- a/fs/yaffs2/yaffs_vfs.c
+++ b/fs/yaffs2/yaffs_vfs.c
@@ -274,7 +274,7 @@ static int yaffs_readpage_nolock(struct file *f, struct page *pg)
 		(long long)pos,
 		(unsigned)PAGE_CACHE_SIZE);
 
-	obj = yaffs_dentry_to_obj(f->f_dentry);
+	obj = yaffs_dentry_to_obj(f->f_path.dentry);
 
 	dev = obj->my_dev;
 
@@ -472,7 +472,7 @@ static ssize_t yaffs_hold_space(struct file *f)
 
 	int n_free_chunks;
 
-	obj = yaffs_dentry_to_obj(f->f_dentry);
+	obj = yaffs_dentry_to_obj(f->f_path.dentry);
 
 	dev = obj->my_dev;
 
@@ -490,7 +490,7 @@ static void yaffs_release_space(struct file *f)
 	struct yaffs_obj *obj;
 	struct yaffs_dev *dev;
 
-	obj = yaffs_dentry_to_obj(f->f_dentry);
+	obj = yaffs_dentry_to_obj(f->f_path.dentry);
 
 	dev = obj->my_dev;
 
@@ -582,7 +582,7 @@ static ssize_t yaffs_file_write(struct file *f, const char *buf, size_t n,
 	struct inode *inode;
 	struct yaffs_dev *dev;
 
-	obj = yaffs_dentry_to_obj(f->f_dentry);
+	obj = yaffs_dentry_to_obj(f->f_path.dentry);
 
 	if (!obj) {
 		yaffs_trace(YAFFS_TRACE_OS,
@@ -594,7 +594,7 @@ static ssize_t yaffs_file_write(struct file *f, const char *buf, size_t n,
 
 	yaffs_gross_lock(dev);
 
-	inode = f->f_dentry->d_inode;
+	inode = f->f_path.dentry->d_inode;
 
 	if (!S_ISBLK(inode->i_mode) && f->f_flags & O_APPEND)
 		ipos = inode->i_size;
@@ -745,7 +745,7 @@ static int yaffs_file_flush(struct file *file, fl_owner_t id)
 static int yaffs_file_flush(struct file *file)
 #endif
 {
-	struct yaffs_obj *obj = yaffs_dentry_to_obj(file->f_dentry);
+	struct yaffs_obj *obj = yaffs_dentry_to_obj(file->f_path.dentry);
 
 	struct yaffs_dev *dev = obj->my_dev;
 
@@ -1712,14 +1712,14 @@ static int yaffs_readdir(struct file *file, struct dir_context *ctx)
 	struct yaffs_obj *obj;
 	struct yaffs_dev *dev;
 	struct yaffs_search_context *sc;
-	struct inode *inode = file->f_dentry->d_inode;
+	struct inode *inode = file->f_path.dentry->d_inode;
 	unsigned long offset, curoffs;
 	struct yaffs_obj *l;
 	int ret_val = 0;
 
 	char name[YAFFS_MAX_NAME_LENGTH + 1];
 
-	obj = yaffs_dentry_to_obj(file->f_dentry);
+	obj = yaffs_dentry_to_obj(file->f_path.dentry);
 	dev = obj->my_dev;
 
 	yaffs_gross_lock(dev);
@@ -1753,7 +1753,7 @@ static int yaffs_readdir(struct file *file, struct dir_context *ctx)
 	if (offset == 1) {
 		yaffs_trace(YAFFS_TRACE_OS,
 			"yaffs_readdir: entry .. ino %d",
-			(int)file->f_dentry->d_parent->d_inode->i_ino);
+			(int)file->f_path.dentry->d_parent->d_inode->i_ino);
 		yaffs_gross_unlock(dev);
 		if (!dir_emit_dotdot(file, ctx)) {
 			yaffs_gross_lock(dev);
@@ -1815,14 +1815,14 @@ static int yaffs_readdir(struct file *f, void *dirent, filldir_t filldir)
 	struct yaffs_obj *obj;
 	struct yaffs_dev *dev;
 	struct yaffs_search_context *sc;
-	struct inode *inode = f->f_dentry->d_inode;
+	struct inode *inode = f->f_path.dentry->d_inode;
 	unsigned long offset, curoffs;
 	struct yaffs_obj *l;
 	int ret_val = 0;
 
 	char name[YAFFS_MAX_NAME_LENGTH + 1];
 
-	obj = yaffs_dentry_to_obj(f->f_dentry);
+	obj = yaffs_dentry_to_obj(f->f_path.dentry);
 	dev = obj->my_dev;
 
 	yaffs_gross_lock(dev);
@@ -1856,10 +1856,10 @@ static int yaffs_readdir(struct file *f, void *dirent, filldir_t filldir)
 	if (offset == 1) {
 		yaffs_trace(YAFFS_TRACE_OS,
 			"yaffs_readdir: entry .. ino %d",
-			(int)f->f_dentry->d_parent->d_inode->i_ino);
+			(int)f->f_path.dentry->d_parent->d_inode->i_ino);
 		yaffs_gross_unlock(dev);
 		if (filldir(dirent, "..", 2, offset,
-			    f->f_dentry->d_parent->d_inode->i_ino,
+			    f->f_path.dentry->d_parent->d_inode->i_ino,
 			    DT_DIR) < 0) {
 			yaffs_gross_lock(dev);
 			goto out;
-- 
2.1.0


