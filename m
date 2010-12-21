Return-Path: <raj.khem@gmail.com>
Received: from mail-pv0-f176.google.com (mail-pv0-f176.google.com
	[74.125.83.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0A53F4C80BD8
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 03:39:44 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pvb32 with SMTP id 32so1040362pvb.35
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 01:39:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:received:from:to:cc:subject:date
	:message-id:x-mailer;
	bh=hVdpolK9QsF0ByMAwnnKL9KFXf7CdBzhruxqdHrwO5s=;
	b=vg7CepHPNLu9hIgy/NsiE2Zbaqvd5cMl7dmjzqzR363hfvE9eQ/3bsR2o7RHbyVD1y
	aKif4SIEcds3o+gOn1tV1ellqAo221F8S2BVVGKiQs3o3l0YPvoTR+fpjbyr62Jbb3vv
	JZ2pZIoIjUHtyZpiKkrD1W/nUsWR82XWGM72k=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=from:to:cc:subject:date:message-id:x-mailer;
	b=ceQeoMWAMGNSVy/YrBwUe568n35L/kx/6iVIlhi+f6XIYpOgXhW0J9jdarnhnWQQ3B
	ZQvF8taIYVwFqsQ3i8TMemETrtZNyxj8STqpTfsDhni52iuM2MNS0QlhN6CmgVOTSK3R
	lkCVWcRRgFz6vD9O8Y626gZrHmCg4pQhQHzKI=
Received: by 10.142.128.1 with SMTP id a1mr4346259wfd.282.1292924383771;
	Tue, 21 Dec 2010 01:39:43 -0800 (PST)
Received: from localhost.localdomain
	(99-57-141-118.lightspeed.sntcca.sbcglobal.net [99.57.141.118])
	by mx.google.com with ESMTPS id e14sm7247319wfg.20.2010.12.21.01.39.42
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Tue, 21 Dec 2010 01:39:43 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: poky@yoctoproject.org
Date: Tue, 21 Dec 2010 01:39:27 -0800
Message-Id: <1292924367-19873-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 1.7.1
Subject: [PATCH] scripts/send-pull-request: Use git send-mail instead of sendmail
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
X-List-Received-Date: Tue, 21 Dec 2010 09:39:45 -0000

* usually git send-mail is setup by people using git
  so use git send-mail to post patches for pull requests
  There is how to setup git send-email
  see section "Set up git"
  http://www.openembedded.org/index.php/How_to_submit_a_patch_to_OpenEmbedded

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 scripts/send-pull-request |   19 ++++++++-----------
 1 files changed, 8 insertions(+), 11 deletions(-)

diff --git a/scripts/send-pull-request b/scripts/send-pull-request
index 0576a5d..2f0b90d 100755
--- a/scripts/send-pull-request
+++ b/scripts/send-pull-request
@@ -12,8 +12,8 @@ Usage: $(basename $0) [-h] [-a] [[-t email]...] -p pull-dir
 EOM
 }
 
-# Collect To and CC addresses from the patch files if they exist
-# $1: Which header to add the recipients to, "TO" or "CC"
+# Collect To, From and CC addresses from the patch files if they exist
+# $1: Which header to add the recipients to, "TO", "FROM" or "CC"
 # $2: The regex to match and strip from the line with email addresses
 harvest_recipients()
 {
@@ -27,6 +27,8 @@ harvest_recipients()
                 if [ -z "$TO" ]; then TO=$EMAIL; else TO="$TO,$EMAIL"; fi
             elif [ "$TO_CC" == "CC" ] && [ "${CC/$EMAIL/}" == "$CC" ] && [ -n "$EMAIL" ]; then
                 if [ -z "$CC" ]; then CC=$EMAIL; else CC="$CC,$EMAIL"; fi
+            elif [ "$TO_CC" == "FROM" ] && [ "${FROM/$EMAIL/}" == "$FROM" ] && [ -n "$EMAIL" ]; then
+                if [ -z "$FROM" ]; then FROM=$EMAIL; fi
             fi
         done
     done
@@ -85,6 +87,7 @@ done
 # etc. (*-by) will be added to CC.
 if [ $AUTO -eq 1 ]; then
     harvest_recipients TO "^[Tt][Oo]: *"
+    harvest_recipients FROM "^[Ff][rR][oO][mM]: *"
     harvest_recipients CC "^[Cc][Cc]: *"
     harvest_recipients CC "^.*-[Bb][Yy]: *"
 fi
@@ -112,20 +115,14 @@ read cont
 if [ "$cont" == "y" ] || [ "$cont" == "Y" ]; then
     ERROR=0
     for PATCH in $PDIR/*patch; do
-        # Insert To and CC headers via formail to keep them separate and
-        # appending them to the sendmail command as -- $TO $CC has proven
-        # to be an exercise in futility.
-        # 
-        # Use tail to remove the email envelope from git or formail as
-        # msmtp (sendmail) would choke on them.
-        cat $PATCH | formail -I "To: $TO" -I "CC: $CC" | tail -n +2 | sendmail -t
+        # Insert To and CC headers
+	git send-email --to="$TO" --cc="$CC" --from="$FROM" --confirm=auto $PATCH
         if [ $? -eq 1 ]; then
             ERROR=1
         fi
     done
     if [ $ERROR -eq 1 ]; then
-        echo "ERROR: sendmail failed to send one or more messages. Check your"
-        echo "       sendmail log for details."
+        echo "ERROR: git send-mail failed to send one or more messages."
     fi
 else
     echo "Send aborted."
-- 
1.7.1


