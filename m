Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DCAECE0095D; Wed, 27 May 2015 05:19:33 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2FB0E0095D;
	Wed, 27 May 2015 05:19:30 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.1/8.15.1) with ESMTPS id t4RCJTc9004704
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 27 May 2015 05:19:30 -0700 (PDT)
Received: from pek-khao-d1.corp.ad.wrs.com (128.224.162.156) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.224.2; Wed, 27 May 2015 05:19:29 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>, <linux-yocto@yoctoproject.org>
Date: Wed, 27 May 2015 20:19:12 +0800
Message-ID: <1432729155-28307-2-git-send-email-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <1432729155-28307-1-git-send-email-kexin.hao@windriver.com>
References: <1432729155-28307-1-git-send-email-kexin.hao@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 1/2] fs: aufs: fix a build error for archs which doesn't support MUTEX_SPIN_ON_OWNER
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
X-List-Received-Date: Wed, 27 May 2015 12:19:33 -0000
Content-Type: text/plain

For struct mutex, the member "owner" only exist when either
DEBUG_MUTEXES or MUTEX_SPIN_ON_OWNER is enabled. The SMP is a necessary
condition, but not a sufficiency condition for MUTEX_SPIN_ON_OWNER.
So we would get build error on arch such as mpis due to SMP is
enabled and both DEBUG_MUTEXES and MUTEX_SPIN_ON_OWNER are disabled.
Replace the SMP with MUTEX_SPIN_ON_OWNER to fix it.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 fs/aufs/i_op.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/aufs/i_op.c b/fs/aufs/i_op.c
index f0edd021102b..268a8a54ebfc 100644
--- a/fs/aufs/i_op.c
+++ b/fs/aufs/i_op.c
@@ -441,7 +441,7 @@ out:
 
 void au_pin_hdir_set_owner(struct au_pin *p, struct task_struct *task)
 {
-#if defined(CONFIG_DEBUG_MUTEXES) || defined(CONFIG_SMP)
+#if defined(CONFIG_DEBUG_MUTEXES) || defined(CONFIG_MUTEX_SPIN_ON_OWNER)
 	p->hdir->hi_inode->i_mutex.owner = task;
 #endif
 }
-- 
2.1.0


