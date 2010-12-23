Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1CDE64C811E4
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 08:27:02 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 23 Dec 2010 06:27:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="365818446"
Received: from unknown (HELO localhost) ([10.255.14.90])
	by azsmga001.ch.intel.com with ESMTP; 23 Dec 2010 06:27:00 -0800
Message-Id: <166f5b742cb8a10590c39619b3f88940ea27f9c1.1293114004.git.sgw@linux.intel.com>
In-Reply-To: <cover.1293114003.git.sgw@linux.intel.com>
References: <cover.1293114003.git.sgw@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Old-Date: Tue, 21 Dec 2010 14:54:10 -0800
Date: Thu, 23 Dec 2010  6:27:00 -0800
To: poky@yoctoproject.org
Subject: [PATCH 02/28] send-pull-request: allow users to select git-send-email or sendmail
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
X-List-Received-Date: Thu, 23 Dec 2010 14:27:02 -0000

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
1.7.2.3


