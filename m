Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4444E00A54; Mon, 13 Aug 2018 18:38:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3244FE009E7
	for <poky@yoctoproject.org>; Mon, 13 Aug 2018 18:38:21 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w7E1cKd6009766
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 13 Aug 2018 18:38:20 -0700
Received: from pek-lpggp6.wrs.com (128.224.153.40) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.399.0;
	Mon, 13 Aug 2018 18:38:20 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>
Date: Tue, 14 Aug 2018 09:31:22 +0800
Message-ID: <20180814013126.191534-3-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.14.4
In-Reply-To: <20180814013126.191534-1-kexin.hao@windriver.com>
References: <20180814013126.191534-1-kexin.hao@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 2/6] wic: bootimg-partition: Use the relative path in the install_task
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
X-List-Received-Date: Tue, 14 Aug 2018 01:38:21 -0000
Content-Type: text/plain

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 scripts/lib/wic/plugins/source/bootimg-partition.py | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/scripts/lib/wic/plugins/source/bootimg-partition.py b/scripts/lib/wic/plugins/source/bootimg-partition.py
index b239fc0b4cfe..9480eed6d8a3 100644
--- a/scripts/lib/wic/plugins/source/bootimg-partition.py
+++ b/scripts/lib/wic/plugins/source/bootimg-partition.py
@@ -111,20 +111,18 @@ class BootimgPartitionPlugin(SourcePlugin):
 
                 logger.debug('Globbed sources: %s', ', '.join(srcs))
                 for entry in srcs:
+                    src = os.path.relpath(entry, kernel_dir)
                     entry_dst_name = entry_name_fn(entry)
-                    install_task.append((entry,
-                                         os.path.join(hdddir,
-                                                      entry_dst_name)))
+                    install_task.append((src, entry_dst_name)))
             else:
-                install_task = [(os.path.join(kernel_dir, src),
-                                 os.path.join(hdddir, dst))]
+                install_task = [(src, dst)]
 
             for task in install_task:
                 src_path, dst_path = task
-                logger.debug('Install %s as %s',
-                             os.path.basename(src_path), dst_path)
+                logger.debug('Install %s as %s', src_path, dst_path)
                 install_cmd = "install -m 0644 -D %s %s" \
-                              % (src_path, dst_path)
+                              % (os.path.join(kernel_dir, src_path),
+                                 os.path.join(hdddir, dst_path))
                 exec_cmd(install_cmd)
 
         logger.debug('Prepare boot partition using rootfs in %s', hdddir)
-- 
2.14.4


