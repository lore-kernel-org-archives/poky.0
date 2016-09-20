Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9008DE00AF2; Tue, 20 Sep 2016 04:57:09 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B0AFE00B34;
	Tue, 20 Sep 2016 04:57:08 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u8KBv8xc023076
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 20 Sep 2016 04:57:08 -0700 (PDT)
Received: from pek-lpggp4.wrs.com (128.224.153.77) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 20 Sep 2016 04:57:06 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <linux-yocto@yoctoproject.org>, <poky@yoctoproject.org>
Date: Tue, 20 Sep 2016 19:54:40 +0800
Message-ID: <20160920115445.157131-4-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20160920115445.157131-1-kexin.hao@windriver.com>
References: <20160920115445.157131-1-kexin.hao@windriver.com>
MIME-Version: 1.0
Subject: [kernel 1/6] fs: yaffs2: kill PAGE_CACHE_* and page_cache_{get, release} macros
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
X-List-Received-Date: Tue, 20 Sep 2016 11:57:09 -0000
Content-Type: text/plain

As what we have done in commit 09cbfeaf1a5a ("mm, fs: get rid of
PAGE_CACHE_* and page_cache_{get,release} macros").

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 fs/yaffs2/yaffs_vfs.c | 38 +++++++++++++++++++-------------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/fs/yaffs2/yaffs_vfs.c b/fs/yaffs2/yaffs_vfs.c
index 1494c8f33d20..9aa007d9ded6 100644
--- a/fs/yaffs2/yaffs_vfs.c
+++ b/fs/yaffs2/yaffs_vfs.c
@@ -266,13 +266,13 @@ static int yaffs_readpage_nolock(struct file *f, struct page *pg)
 	struct yaffs_obj *obj;
 	unsigned char *pg_buf;
 	int ret;
-	loff_t pos = ((loff_t) pg->index) << PAGE_CACHE_SHIFT;
+	loff_t pos = ((loff_t) pg->index) << PAGE_SHIFT;
 	struct yaffs_dev *dev;
 
 	yaffs_trace(YAFFS_TRACE_OS,
 		"yaffs_readpage_nolock at %lld, size %08x",
 		(long long)pos,
-		(unsigned)PAGE_CACHE_SIZE);
+		(unsigned)PAGE_SIZE);
 
 	obj = yaffs_dentry_to_obj(f->f_path.dentry);
 
@@ -290,7 +290,7 @@ static int yaffs_readpage_nolock(struct file *f, struct page *pg)
 
 	yaffs_gross_lock(dev);
 
-	ret = yaffs_file_rd(obj, pg_buf, pos, PAGE_CACHE_SIZE);
+	ret = yaffs_file_rd(obj, pg_buf, pos, PAGE_SIZE);
 
 	yaffs_gross_unlock(dev);
 
@@ -400,22 +400,22 @@ static int yaffs_writepage(struct page *page)
 		BUG();
 	i_size = i_size_read(inode);
 
-	end_index = i_size >> PAGE_CACHE_SHIFT;
+	end_index = i_size >> PAGE_SHIFT;
 
 	if (page->index < end_index)
-		n_bytes = PAGE_CACHE_SIZE;
+		n_bytes = PAGE_SIZE;
 	else {
-		n_bytes = i_size & (PAGE_CACHE_SIZE - 1);
+		n_bytes = i_size & (PAGE_SIZE - 1);
 
 		if (page->index > end_index || !n_bytes) {
 			yaffs_trace(YAFFS_TRACE_OS,
 				"yaffs_writepage at %lld, inode size = %lld!!",
-				((loff_t)page->index) << PAGE_CACHE_SHIFT,
+				((loff_t)page->index) << PAGE_SHIFT,
 				inode->i_size);
 			yaffs_trace(YAFFS_TRACE_OS,
 				"                -> don't care!!");
 
-			zero_user_segment(page, 0, PAGE_CACHE_SIZE);
+			zero_user_segment(page, 0, PAGE_SIZE);
 			set_page_writeback(page);
 			unlock_page(page);
 			end_page_writeback(page);
@@ -423,8 +423,8 @@ static int yaffs_writepage(struct page *page)
 		}
 	}
 
-	if (n_bytes != PAGE_CACHE_SIZE)
-		zero_user_segment(page, n_bytes, PAGE_CACHE_SIZE);
+	if (n_bytes != PAGE_SIZE)
+		zero_user_segment(page, n_bytes, PAGE_SIZE);
 
 	get_page(page);
 
@@ -436,13 +436,13 @@ static int yaffs_writepage(struct page *page)
 
 	yaffs_trace(YAFFS_TRACE_OS,
 		"yaffs_writepage at %lld, size %08x",
-		((loff_t)page->index) << PAGE_CACHE_SHIFT, n_bytes);
+		((loff_t)page->index) << PAGE_SHIFT, n_bytes);
 	yaffs_trace(YAFFS_TRACE_OS,
 		"writepag0: obj = %lld, ino = %lld",
 		obj->variant.file_variant.file_size, inode->i_size);
 
 	n_written = yaffs_wr_file(obj, buffer,
-				  ((loff_t)page->index) << PAGE_CACHE_SHIFT, n_bytes, 0);
+				  ((loff_t)page->index) << PAGE_SHIFT, n_bytes, 0);
 
 	yaffs_set_super_dirty(dev);
 
@@ -505,7 +505,7 @@ static int yaffs_write_begin(struct file *filp, struct address_space *mapping,
 			     struct page **pagep, void **fsdata)
 {
 	struct page *pg = NULL;
-	pgoff_t index = pos >> PAGE_CACHE_SHIFT;
+	pgoff_t index = pos >> PAGE_SHIFT;
 
 	int ret = 0;
 	int space_held = 0;
@@ -554,7 +554,7 @@ out:
 		yaffs_release_space(filp);
 	if (pg) {
 		unlock_page(pg);
-		page_cache_release(pg);
+		put_page(pg);
 	}
 	return ret;
 }
@@ -638,7 +638,7 @@ static int yaffs_write_end(struct file *filp, struct address_space *mapping,
 {
 	int ret = 0;
 	void *addr, *kva;
-	uint32_t offset_into_page = pos & (PAGE_CACHE_SIZE - 1);
+	uint32_t offset_into_page = pos & (PAGE_SIZE - 1);
 
 	kva = kmap(pg);
 	addr = kva + offset_into_page;
@@ -660,7 +660,7 @@ static int yaffs_write_end(struct file *filp, struct address_space *mapping,
 
 	yaffs_release_space(filp);
 	unlock_page(pg);
-	page_cache_release(pg);
+	put_page(pg);
 	return ret;
 }
 #else
@@ -670,7 +670,7 @@ static int yaffs_commit_write(struct file *f, struct page *pg, unsigned offset,
 {
 	void *addr, *kva;
 
-	loff_t pos = (((loff_t) pg->index) << PAGE_CACHE_SHIFT) + offset;
+	loff_t pos = (((loff_t) pg->index) << PAGE_SHIFT) + offset;
 	int n_bytes = to - offset;
 	int n_written;
 
@@ -2836,8 +2836,8 @@ static struct super_block *yaffs_internal_read_super(int yaffs_version,
 		return NULL;
 	}
 
-	sb->s_blocksize = PAGE_CACHE_SIZE;
-	sb->s_blocksize_bits = PAGE_CACHE_SHIFT;
+	sb->s_blocksize = PAGE_SIZE;
+	sb->s_blocksize_bits = PAGE_SHIFT;
 
 	yaffs_trace(YAFFS_TRACE_OS,
 		"yaffs_read_super: Using yaffs%d", yaffs_version);
-- 
2.9.3


