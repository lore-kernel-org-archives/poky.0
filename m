Return-Path: <manuel.h87@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3BBD1E00E1E; Sat, 11 Jun 2016 00:50:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (manuel.h87[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBE95E00DF4
	for <poky@yoctoproject.org>; Sat, 11 Jun 2016 00:50:15 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id k184so3135810wme.2
	for <poky@yoctoproject.org>; Sat, 11 Jun 2016 00:50:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
	:references; bh=+5xdJ4E3L17Pgbox3lTYw+gz/AFU1vm1jUEyIXTiQNA=;
	b=TdUbZcvY6tisgst9hbVBS2MZVY2Dm3jfB8zsWulc5nGGuhlQ1/lxBsC9gscapIP+QX
	TeCEhtWIlcb6fD3J2PzVa0OCXm4XYOdaY0U7guwaKge75IBKpHmp8RmEM5KyVBh57HI/
	GU3R0KymgUvQxKDdPvqFqVv0CQm77WlkVwOhj0OLiMYK+0MAyIqpJ+BWRz909ok4Vq0t
	krnXTSnx3XZcPGSWYGNYlajlNf94IdId8GLeOCx9D9oicGo7f13hgm3YPlhc2LhXtoFS
	AVr/kEoYKQnUVp3oF3v0rESDlxnICVz9JEy9blEcNdVkOKE31oassgVGVxT6n3aQNz8j
	4TpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=+5xdJ4E3L17Pgbox3lTYw+gz/AFU1vm1jUEyIXTiQNA=;
	b=FooAxfV6cZRx1VCcWNP6dbIgW7yBeFLPC5tS3Xva7pY8glyT1bOuzr+kNnrmx8pN4m
	yqcCd9pBt6im7TpNLjgQVyCdqBDcmYgDaKar1o7Ya13VUadnLXw4iN7tIghEkvHzvX6w
	crE+QUF9qtqDC6/SO9qNPqFvKP74KOrPRu+kAsq377RmoIc5ZeLiOGUW6ZtIpsi/Y0Lo
	f752MV9vgMlUFfuZ9/yPR3qWGzowU2yi5ZjBKwe8uwZhqE9j+0uaIawiU9HKv8X78mVi
	xEm4HnDhDZ6Is92s9J65ZT/DBt/CK8/1+jL1w6YhRppNOof9QYoXBydpSJN4VoO6FrYz
	24Gg==
X-Gm-Message-State: ALyK8tK6x8y+QJEL4UWeMqcrDp4G2aC0rW3J8ShIdkXoFkK0hmwdcayoSf1GRewlix3PoA==
X-Received: by 10.28.97.4 with SMTP id v4mr2501136wmb.71.1465631414139;
	Sat, 11 Jun 2016 00:50:14 -0700 (PDT)
Received: from localhost.localdomain (d86-32-133-80.cust.tele2.at.
	[86.32.133.80]) by smtp.googlemail.com with ESMTPSA id
	xw8sm16094224wjb.30.2016.06.11.00.50.13 for <poky@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 11 Jun 2016 00:50:13 -0700 (PDT)
From: Manuel Huber <manuel.h87@gmail.com>
To: poky@yoctoproject.org
Date: Sat, 11 Jun 2016 09:50:02 +0200
Message-Id: <5717847f5b950e33e7c575852685b61f4b2e5d8e.1465630004.git.manuel.h87@gmail.com>
X-Mailer: git-send-email 2.5.0
In-Reply-To: <cover.1465630004.git.manuel.h87@gmail.com>
References: <cover.1465630004.git.manuel.h87@gmail.com>
In-Reply-To: <cover.1465630004.git.manuel.h87@gmail.com>
References: <cover.1465630004.git.manuel.h87@gmail.com>
Subject: [PATCH 1/1] Handle EXDEV if hard link to license fails
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
X-List-Received-Date: Sat, 11 Jun 2016 07:50:19 -0000

From: Manuel Huber <Manuel.h87@gmail.com>

Hard links can still fail even if st_dev is the same for source
and destination. In case of EXDEV error, fall back to copying...

Signed-off-by: Manuel Huber <manuel.h87@gmail.com>
---
 meta/classes/license.bbclass | 20 +++++++++++++++-----
 1 file changed, 15 insertions(+), 5 deletions(-)

diff --git a/meta/classes/license.bbclass b/meta/classes/license.bbclass
index 10d6ed8..c543637 100644
--- a/meta/classes/license.bbclass
+++ b/meta/classes/license.bbclass
@@ -342,6 +342,7 @@ def add_package_and_files(d):
 
 def copy_license_files(lic_files_paths, destdir):
     import shutil
+    import errno
 
     bb.utils.mkdirhier(destdir)
     for (basename, path) in lic_files_paths:
@@ -350,12 +351,21 @@ def copy_license_files(lic_files_paths, destdir):
             dst = os.path.join(destdir, basename)
             if os.path.exists(dst):
                 os.remove(dst)
-            if os.access(src, os.W_OK) and (os.stat(src).st_dev == os.stat(destdir).st_dev):
-                os.link(src, dst)
+            canlink = os.access(src, os.W_OK) and (os.stat(src).st_dev == os.stat(destdir).st_dev)
+            if canlink:
                 try:
-                    os.chown(dst,0,0)
+                    os.link(src, dst)
+                except OSError as err:
+                    if err.errno == errno.EXDEV:
+                        # Copy license files if hard-link is not possible even if st_dev is the
+                        # same on source and destination (docker container with device-mapper?)
+                        canlink = False
+                    else:
+                        raise
+                try:
+                    if canlink:
+                        os.chown(dst,0,0)
                 except OSError as err:
-                    import errno
                     if err.errno in (errno.EPERM, errno.EINVAL):
                         # Suppress "Operation not permitted" error, as
                         # sometimes this function is not executed under pseudo.
@@ -364,7 +374,7 @@ def copy_license_files(lic_files_paths, destdir):
                         pass
                     else:
                         raise
-            else:
+            if not canlink:
                 shutil.copyfile(src, dst)
         except Exception as e:
             bb.warn("Could not copy license file %s to %s: %s" % (src, dst, e))
-- 
2.5.0


