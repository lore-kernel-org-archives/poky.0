Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id DB1334C80BCF
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 11:52:27 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 26 Jan 2011 09:52:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,381,1291622400"; d="scan'208";a="596704077"
Received: from unknown (HELO localhost) ([10.255.14.182])
	by orsmga002.jf.intel.com with ESMTP; 26 Jan 2011 09:52:27 -0800
Message-Id: <4e23e8f9d0e22cf534c19224cba0be9bedba0120.1296064228.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1296064228.git.dvhart@linux.intel.com>
References: <cover.1296064228.git.dvhart@linux.intel.com>
Old-Date: Wed, 26 Jan 2011 09:42:33 -0800
Date: Wed, 26 Jan 2011  9:52:17 -0800
To: poky@yoctoproject.org
From: Darren Hart <dvhart@linux.intel.com>
Cc: Saul Wold <saul.wold@intel.com>
Subject: [PATCH] send-pull-request: ensure a proper FROM header is included
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
X-List-Received-Date: Wed, 26 Jan 2011 17:52:28 -0000

From: Darren Hart <dvhart@linux.intel.com>

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dvhart/git-pull
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/git-pull

Thanks,
    Darren Hart <dvhart@linux.intel.com>

Commit 94629f2521711055b412f954af19e48b9bda6e50 removes the FROM header when
sending via sendmail to avoid sending mail as the original change committer (as
opposed to the local user). This resulted in mail going out without any FROM
header, which some mailing lists correct by adding the *bounce address as the
FROM.

Correct this by reading FROM from the environment, from a new -f argument, or
from the git user.name and user.email config settings, in that order of
preference. Also display the FROM that will be used prior to the send
confirmation.

This has no effect if the -g (send via git) argument is specified, other than
printing the git sendemail.from config setting.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
Reported-by: Saul Wold <saul.wold@intel.com>
---
 scripts/send-pull-request |   29 ++++++++++++++++++++++++++---
 1 files changed, 26 insertions(+), 3 deletions(-)

diff --git a/scripts/send-pull-request b/scripts/send-pull-request
index c08b3be..7f51a1b 100755
--- a/scripts/send-pull-request
+++ b/scripts/send-pull-request
@@ -9,6 +9,7 @@ fi
 # Prevent environment leakage to these vars.
 unset TO
 unset CC
+# allow the user to set FROM in the environment
 
 usage()
 {
@@ -17,6 +18,9 @@ Usage: $(basename $0) [-h] [-a] [[-t email]...] -p pull-dir
   -t email     Explicitly add email to the recipients
   -a           Automatically harvest recipients from "*-by: email" lines
                in the patches in the pull-dir
+  -f           Specify a FROM address, you can also use the FROM environment
+               variable. If you do not specify one, it will try to use the one
+               from your git config. This is ignored if -g is used.
   -g           Use git-send-email to send mail instead of sendmail
   -p pull-dir  Directory containing summary and patch files
 EOM
@@ -45,11 +49,14 @@ harvest_recipients()
 
 
 # Parse and verify arguments
-while getopts "aghp:t:" OPT; do
+while getopts "af:ghp:t:" OPT; do
     case $OPT in
         a)
             AUTO=1
             ;;
+        f)
+            FROM="$OPTARG"
+            ;;
         g)
             PULL_MTA="git"
             ;;
@@ -108,13 +115,29 @@ if [ -z "$TO" ] && [ -z "$CC" ]; then
     exit 1
 fi
 
+case "$PULL_MTA" in
+    git)
+        FROM="$(git config sendemail.from)"
+        ;;
+    sendmail)
+        if [ -z "$FROM" ]; then
+            FROM="$(git config user.name) <$(git config user.email)>"
+            if [ -z "$FROM" ]; then
+                echo "ERROR: unable to determine a FROM address"
+                usage
+                exit 1
+            fi
+        fi
+        ;;
+esac
 
 # Generate report for the user and require confirmation before sending
 cat <<EOM
 The following patches:
 $(for PATCH in $PDIR/*.patch; do echo "    $PATCH"; done)
 
-will be sent to the following recipients:
+will be sent with the following headers:
+  From: $FROM
     To: $TO
     CC: $CC
 
@@ -155,7 +178,7 @@ if [ "$cont" == "y" ] || [ "$cont" == "Y" ]; then
                 # original date as "Old-Date".
                 DATE=$(date +"%a, %d %b %Y %k:%M:%S %z")
                 GIT_FROM=$(cat $PATCH | formail -X "From:")
-                cat $PATCH | formail -I "To: $TO" -I "CC: $CC" -I "From:" -i "Date: $DATE" | sed "0,/^$/s/^$/\n$GIT_FROM\n/" | tail -n +2 | sendmail -t
+                cat $PATCH | formail -I "To: $TO" -I "CC: $CC" -I "From: $FROM" -i "Date: $DATE" | sed "0,/^$/s/^$/\n$GIT_FROM\n/" | tail -n +2 | sendmail -t
                 if [ $? -eq 1 ]; then
                     ERROR=1
                 fi
-- 
1.7.1


