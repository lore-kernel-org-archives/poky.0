Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9E3AE00B74; Tue, 20 Sep 2016 04:57:13 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91A02E00B58;
	Tue, 20 Sep 2016 04:57:12 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u8KBvC8Z023092
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 20 Sep 2016 04:57:12 -0700 (PDT)
Received: from pek-lpggp4.wrs.com (128.224.153.77) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 20 Sep 2016 04:57:11 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <linux-yocto@yoctoproject.org>, <poky@yoctoproject.org>
Date: Tue, 20 Sep 2016 19:54:42 +0800
Message-ID: <20160920115445.157131-6-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20160920115445.157131-1-kexin.hao@windriver.com>
References: <20160920115445.157131-1-kexin.hao@windriver.com>
MIME-Version: 1.0
Subject: [kernel 3/6] fs: yaffs2: replace ->follow_link() with -->get_link()
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
X-List-Received-Date: Tue, 20 Sep 2016 11:57:13 -0000
Content-Type: text/plain

As what we done in commit 6b2553918d8b ("replace ->follow_link()
with new method that could stay in RCU mode").

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 fs/yaffs2/yaffs_vfs.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/fs/yaffs2/yaffs_vfs.c b/fs/yaffs2/yaffs_vfs.c
index cd387d7abfa2..b57d612808de 100644
--- a/fs/yaffs2/yaffs_vfs.c
+++ b/fs/yaffs2/yaffs_vfs.c
@@ -1059,7 +1059,8 @@ static int yaffs_readlink(struct dentry *dentry, char __user * buffer,
 }
 
 #if (YAFFS_NEW_FOLLOW_LINK == 1)
-static const char *yaffs_follow_link(struct dentry *dentry, void **cookie)
+static const char *yaffs_get_link(struct dentry *dentry, struct inode *inode,
+				  void **cookie)
 {
 	void *ret;
 #else
@@ -1069,8 +1070,12 @@ static int yaffs_follow_link(struct dentry *dentry, struct nameidata *nd)
 #endif
 	unsigned char *alias;
 	int ret_int = 0;
-	struct yaffs_dev *dev = yaffs_dentry_to_obj(dentry)->my_dev;
+	struct yaffs_dev *dev;
+
+	if (!dentry)
+		return ERR_PTR(-ECHILD);
 
+	dev = yaffs_dentry_to_obj(dentry)->my_dev;
 	yaffs_gross_lock(dev);
 
 	alias = yaffs_get_symlink_alias(yaffs_dentry_to_obj(dentry));
@@ -1121,9 +1126,11 @@ void yaffs_put_link(struct inode *inode, void *cookie)
 
 static const struct inode_operations yaffs_symlink_inode_operations = {
 	.readlink = yaffs_readlink,
-	.follow_link = yaffs_follow_link,
 #if (YAFFS_NEW_FOLLOW_LINK == 1)
+	.get_link = yaffs_get_link,
 	.put_link = yaffs_put_link,
+#else
+	.follow_link = yaffs_follow_link,
 #endif
 	.setattr = yaffs_setattr,
 	.setxattr = yaffs_setxattr,
-- 
2.9.3


