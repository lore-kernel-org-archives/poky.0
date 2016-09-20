Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62B9CE00B9C; Tue, 20 Sep 2016 04:57:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D00BBE00B5F;
	Tue, 20 Sep 2016 04:57:16 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u8KBvGsn013416
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Tue, 20 Sep 2016 04:57:16 -0700
Received: from pek-lpggp4.wrs.com (128.224.153.77) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 20 Sep 2016 04:57:15 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <linux-yocto@yoctoproject.org>, <poky@yoctoproject.org>
Date: Tue, 20 Sep 2016 19:54:44 +0800
Message-ID: <20160920115445.157131-8-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20160920115445.157131-1-kexin.hao@windriver.com>
References: <20160920115445.157131-1-kexin.hao@windriver.com>
MIME-Version: 1.0
Subject: [kernel 5/6] fs: yaffs2: fix the wrong check of return value of dir_emit()
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
X-List-Received-Date: Tue, 20 Sep 2016 11:57:17 -0000
Content-Type: text/plain

Fix the following build warning:
fs/yaffs2/yaffs_vfs.c:1788:34: warning: comparison of constant '0' with boolean expression is always false [-Wbool-compare]
           this_inode, this_type) < 0) {

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 fs/yaffs2/yaffs_vfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/yaffs2/yaffs_vfs.c b/fs/yaffs2/yaffs_vfs.c
index f3efeb0ad4e0..5a9c295aecc8 100644
--- a/fs/yaffs2/yaffs_vfs.c
+++ b/fs/yaffs2/yaffs_vfs.c
@@ -1785,7 +1785,7 @@ static int yaffs_readdir(struct file *file, struct dir_context *ctx)
 			yaffs_gross_unlock(dev);
 
 			if (!dir_emit(ctx, name, strlen(name),
-				      this_inode, this_type) < 0) {
+				      this_inode, this_type)) {
 				yaffs_gross_lock(dev);
 				goto out;
 			}
-- 
2.9.3


