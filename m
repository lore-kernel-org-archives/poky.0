Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-ew0-f45.google.com (mail-ew0-f45.google.com
	[209.85.215.45])
	by mx1.pokylinux.org (Postfix) with ESMTP id 64FFE4C810D2
	for <poky@yoctoproject.org>; Sun, 12 Dec 2010 09:02:19 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-ew0-f45.google.com with SMTP id 10so3536134ewy.32
	for <poky@yoctoproject.org>; Sun, 12 Dec 2010 07:02:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:received:from:to:cc:subject:date
	:message-id:x-mailer;
	bh=Zq5j2qzDCMC4fB1P6QalU5mW03DhXqyfXAmI/D9QxVE=;
	b=Ukk8FT+2B29JOVCF991xWFkK9fH+osnt+Dg/usvYfVFW8jgPzPreU0/aRRyojfNebo
	zpPihPwdmglQ48xk+juQkQUbY3ts4WFhdzvgUEJRV4vM3pK/or67YxTKosKRrIfu7DIr
	B2OHalZZ4JcPhcPiMq+pxWDAwstsYl58D1KYc=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=from:to:cc:subject:date:message-id:x-mailer;
	b=Mh2HhQhlR6bB0TQRRY97SzadMMvplemiisf8drw3sK8CQR9gfIeqwqkwWLUTBth9j+
	CkHxguQY23dpTE9lVx5DOStCKpUZ0b6+wRIihouwhoPvEpjlZBUsUzjmQigeJ6MIIHsV
	DtnwWE+1wJsket4gjEHfJN5R8OSv9yWEB/OCw=
Received: by 10.213.21.203 with SMTP id k11mr3030928ebb.85.1292166138854;
	Sun, 12 Dec 2010 07:02:18 -0800 (PST)
Received: from localhost.localdomain (j200125.upc-j.chello.nl [24.132.200.125])
	by mx.google.com with ESMTPS id u1sm1924833eeh.4.2010.12.12.07.02.17
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Sun, 12 Dec 2010 07:02:18 -0800 (PST)
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: poky@yoctoproject.org
Date: Sun, 12 Dec 2010 16:02:12 +0100
Message-Id: <1292166132-23035-1-git-send-email-fransmeulenbroeks@gmail.com>
X-Mailer: git-send-email 1.6.4.2
Subject: [PATCH] rm_work.bbclass: allow a shell var to override rm_work
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 12 Dec 2010 15:02:20 -0000

Sometimes one is building with rm_work, but for a specific build you want to
keep the work even if the build is successful.
One way to achieve this is to comment the INHERIT += "rm_work" from your
local.conf file, but this means that all recipes need to be reparsed which takes some time.

This patch introduces a variable KEEP_WORK
If this variable is set the work will not be removed.
Intended use is
KEEP_WORK=1 bitbake yourrecipe.bb
Default behaviour is kept the same (in case KEEP_WORK is not set)

Note that in order for this to work KEEP_WORK needs to be added to the env var BB_ENV_EXTRAWHITE
e.g. export BB_ENV_EXTRAWHITE="KEEP_WORK"

We still might want to improve the test so it only keeps the work if KEEP_WORK is > 0
(or do not execute the task at all if KEEP_WORK is not set).
Also we might want to add KEEP_WORK to the whitelist of vars that are always ok

Signed-off-by: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
---
 meta/classes/rm_work.bbclass |   33 ++++++++++++++++++---------------
 1 files changed, 18 insertions(+), 15 deletions(-)

diff --git a/meta/classes/rm_work.bbclass b/meta/classes/rm_work.bbclass
index 53fcda2..45d2830 100644
--- a/meta/classes/rm_work.bbclass
+++ b/meta/classes/rm_work.bbclass
@@ -14,22 +14,25 @@ RMWORK_ORIG_TASK := "${BB_DEFAULT_TASK}"
 BB_DEFAULT_TASK = "rm_work_all"
 
 do_rm_work () {
-    # Ensure pseudo is no longer active
-    if [ -d ${WORKDIR}/pseudo ]; then
-        ${FAKEROOT} -S
-    fi
-    cd ${WORKDIR}
-    for dir in *
-    do
-        if [ `basename ${S}` = $dir ]; then
-            rm -rf $dir
-        elif [ $dir != 'temp' ]; then
-            rm -rf $dir
+    if [ ! $KEEP_WORK ]
+    then
+        # Ensure pseudo is no longer active
+        if [ -d ${WORKDIR}/pseudo ]; then
+            ${FAKEROOT} -S
         fi
-    done
-    # Need to add pseudo back or subsqeuent work in this workdir
-    # might fail since setscene may not rerun to recreate it
-    mkdir ${WORKDIR}/pseudo/
+        cd ${WORKDIR}
+        for dir in *
+        do
+            if [ `basename ${S}` = $dir ]; then
+                rm -rf $dir
+            elif [ $dir != 'temp' ]; then
+                rm -rf $dir
+            fi
+        done
+        # Need to add pseudo back or subsqeuent work in this workdir
+        # might fail since setscene may not rerun to recreate it
+        mkdir ${WORKDIR}/pseudo/
+    fi
 }
 addtask rm_work after do_${RMWORK_ORIG_TASK}
 
-- 
1.6.4.2


