Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78124E00B95; Tue, 20 Sep 2016 04:57:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0057DE00B7A;
	Tue, 20 Sep 2016 04:57:14 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u8KBvEF7025524
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 20 Sep 2016 04:57:14 -0700 (PDT)
Received: from pek-lpggp4.wrs.com (128.224.153.77) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 20 Sep 2016 04:57:13 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <linux-yocto@yoctoproject.org>, <poky@yoctoproject.org>
Date: Tue, 20 Sep 2016 19:54:43 +0800
Message-ID: <20160920115445.157131-7-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20160920115445.157131-1-kexin.hao@windriver.com>
References: <20160920115445.157131-1-kexin.hao@windriver.com>
MIME-Version: 1.0
Subject: [kernel 4/6] fs: yaffs2: kill ->put_link()
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
X-List-Received-Date: Tue, 20 Sep 2016 11:57:15 -0000
Content-Type: text/plain

As What we have done in commit fceef393a538 ("switch ->get_link()
to delayed_call, kill ->put_link()")

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 fs/yaffs2/yaffs_vfs.c | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/fs/yaffs2/yaffs_vfs.c b/fs/yaffs2/yaffs_vfs.c
index b57d612808de..f3efeb0ad4e0 100644
--- a/fs/yaffs2/yaffs_vfs.c
+++ b/fs/yaffs2/yaffs_vfs.c
@@ -1060,7 +1060,7 @@ static int yaffs_readlink(struct dentry *dentry, char __user * buffer,
 
 #if (YAFFS_NEW_FOLLOW_LINK == 1)
 static const char *yaffs_get_link(struct dentry *dentry, struct inode *inode,
-				  void **cookie)
+				  struct delayed_call *done)
 {
 	void *ret;
 #else
@@ -1086,7 +1086,7 @@ static int yaffs_follow_link(struct dentry *dentry, struct nameidata *nd)
 		goto out;
 	}
 #if (YAFFS_NEW_FOLLOW_LINK == 1)
-	*cookie = alias;
+	set_delayed_call(done, kfree_link, alias);
 	ret = alias;
 out:
 	if (ret_int)
@@ -1117,18 +1117,10 @@ static void yaffs_put_inode(struct inode *inode)
 }
 #endif
 
-#if (YAFFS_NEW_FOLLOW_LINK == 1)
-void yaffs_put_link(struct inode *inode, void *cookie)
-{
-	kfree(cookie);
-}
-#endif
-
 static const struct inode_operations yaffs_symlink_inode_operations = {
 	.readlink = yaffs_readlink,
 #if (YAFFS_NEW_FOLLOW_LINK == 1)
 	.get_link = yaffs_get_link,
-	.put_link = yaffs_put_link,
 #else
 	.follow_link = yaffs_follow_link,
 #endif
-- 
2.9.3


