Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id F0B4B4C808B0
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 18:10:35 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 Dec 2010 16:10:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,210,1291622400"; d="scan'208";a="689517081"
Received: from unknown (HELO localhost) ([10.255.14.74])
	by orsmga001.jf.intel.com with ESMTP; 21 Dec 2010 16:10:35 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 21 Dec 2010 16:10:36 -0800
Message-Id: <eb2ad2a67369e5e92d2aa4d6e700feaca7c393d5.1292976450.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <cover.1292976450.git.dvhart@linux.intel.com>
References: <cover.1292976450.git.dvhart@linux.intel.com>
Subject: [PATCH 1/1] send-pull-request: allow users to select git-send-email or sendmail
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
X-List-Received-Date: Wed, 22 Dec 2010 00:10:36 -0000

Some users find it easier to use their git sendmail setup over a local
MTA to deliver mail with the send-pull-request script. If you would
like to do this, please read the git-send-email man page and set
the relevant entries in your git config. In particular, be sure to
set sendemail.from to avoid being asked each time.

Reported-by: Khem Raj <raj.khem@gmail.com>
CC: Bruce Ashfield <bruce.ashfield@windriver.com>
Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 scripts/send-pull-request |   69 ++++++++++++++++++++++++++++++++------------
 1 files changed, 50 insertions(+), 19 deletions(-)

diff --git a/scripts/send-pull-request b/scripts/send-pull-request
index 03a78f9..9872c0d 100755
--- a/scripts/send-pull-request
+++ b/scripts/send-pull-request
@@ -1,6 +1,11 @@
 #!/bin/bash
 AUTO=0
 
+# Check env for any default settings, command line options will override these.
+if [ -z "$PULL_MTA" ]; then
+    PULL_MTA="sendmail"
+fi
+
 usage()
 {
 cat <<EOM
@@ -8,6 +13,7 @@ Usage: $(basename $0) [-h] [-a] [[-t email]...] -p pull-dir
   -t email     Explicitly add email to the recipients
   -a           Automatically harvest recipients from "*-by: email" lines
                in the patches in the pull-dir
+  -g           Use git-send-email to send mail instead of sendmail
   -p pull-dir  Directory containing summary and patch files
 EOM
 }
@@ -35,11 +41,14 @@ harvest_recipients()
 
 
 # Parse and verify arguments
-while getopts "ahp:t:" OPT; do
+while getopts "aghp:t:" OPT; do
     case $OPT in
         a)
             AUTO=1
             ;;
+        g)
+            PULL_MTA="git"
+            ;;
         h)
             usage
             exit 0
@@ -111,25 +120,47 @@ read cont
 
 if [ "$cont" == "y" ] || [ "$cont" == "Y" ]; then
     ERROR=0
-    for PATCH in $PDIR/*patch; do
-        # Insert To and CC headers via formail to keep them separate and
-        # appending them to the sendmail command as -- $TO $CC has proven
-        # to be an exercise in futility.
-        # 
-        # Use tail to remove the email envelope from git or formail as
-        # msmtp (sendmail) would choke on them.
-        #
-        # Modify the patch date for sequential delivery, but retain the
-        # original date as "Old-Date".
-        DATE=$(date +"%a, %d %b %Y %k:%M:%S %z")
-        cat $PATCH | formail -I "To: $TO" -I "CC: $CC" -i "Date: $DATE" | tail -n +2 | sendmail -t
-        if [ $? -eq 1 ]; then
-            ERROR=1
-        fi
-    done
+    case "$PULL_MTA" in
+        git)
+            export IFS=$','
+            GIT_TO=$(for R in $TO; do echo -n "--to='$R' "; done)
+            GIT_CC=$(for R in $CC; do echo -n "--cc='$R' "; done)
+            unset IFS
+            for PATCH in $PDIR/*patch; do
+                # We harvest the emails manually, so force git not to.
+                eval "git send-email $GIT_TO $GIT_CC --no-chain-reply-to --suppress-cc=all $PATCH"
+                if [ $? -eq 1 ]; then
+                    ERROR=1
+                fi
+            done
+            ;;
+        sendmail)
+            for PATCH in $PDIR/*patch; do
+                # Insert To and CC headers via formail to keep them separate and
+                # appending them to the sendmail command as -- $TO $CC has
+                # proven to be an exercise in futility.
+                #
+                # Use tail to remove the email envelope from git or formail as
+                # msmtp (sendmail) would choke on them.
+                #
+                # Modify the patch date for sequential delivery, but retain the
+                # original date as "Old-Date".
+                DATE=$(date +"%a, %d %b %Y %k:%M:%S %z")
+                cat $PATCH | formail -I "To: $TO" -I "CC: $CC" -i "Date: $DATE" | tail -n +2 | sendmail -t
+                if [ $? -eq 1 ]; then
+                    ERROR=1
+                fi
+            done
+            ;;
+        *)
+            echo "ERROR: unknown MTA: $PULL_MTA"
+            usage
+            exit 1
+            ;;
+    esac
+
     if [ $ERROR -eq 1 ]; then
-        echo "ERROR: sendmail failed to send one or more messages. Check your"
-        echo "       sendmail log for details."
+        echo "ERROR: Failed to send one or more messages. Check your MTA log for details."
     fi
 else
     echo "Send aborted."
-- 
1.7.1


