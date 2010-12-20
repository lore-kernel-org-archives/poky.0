Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id EDC434C80BD8
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 12:51:15 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 20 Dec 2010 10:51:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,203,1291622400"; d="scan'208";a="870155732"
Received: from unknown (HELO localhost) ([10.255.14.74])
	by fmsmga001.fm.intel.com with ESMTP; 20 Dec 2010 10:51:15 -0800
Message-Id: <839e299af32e8de5c86e7225954533a452409a2d.1292870880.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1292870880.git.dvhart@linux.intel.com>
References: <cover.1292870880.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Old-Date: Mon, 20 Dec 2010 10:42:44 -0800
Date: Mon, 20 Dec 2010 10:50:35 -0800
To: poky@yoctoproject.org
Cc: Josh Lock <josh@linux.intel.com>
Subject: [PATCH 1/1] send-pull-request: Use current date in mail headers
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
X-List-Received-Date: Mon, 20 Dec 2010 18:51:16 -0000

Some users experience problems viewing the pull requests as a sequential
mail series due to the script using the git commit date for the patches
and today's date for the cover letter.

Address this by renaming the email Date: header to Old-Date: and adding
a new Date: header with a current timestamp.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
Reported-by: Gary Thomas <gary@mlbassoc.com>
Cc: Josh Lock <josh@linux.intel.com>
---
 scripts/send-pull-request |    6 +++++-
 1 files changed, 5 insertions(+), 1 deletions(-)

diff --git a/scripts/send-pull-request b/scripts/send-pull-request
index 0576a5d..03a78f9 100755
--- a/scripts/send-pull-request
+++ b/scripts/send-pull-request
@@ -118,7 +118,11 @@ if [ "$cont" == "y" ] || [ "$cont" == "Y" ]; then
         # 
         # Use tail to remove the email envelope from git or formail as
         # msmtp (sendmail) would choke on them.
-        cat $PATCH | formail -I "To: $TO" -I "CC: $CC" | tail -n +2 | sendmail -t
+        #
+        # Modify the patch date for sequential delivery, but retain the
+        # original date as "Old-Date".
+        DATE=$(date +"%a, %d %b %Y %k:%M:%S %z")
+        cat $PATCH | formail -I "To: $TO" -I "CC: $CC" -i "Date: $DATE" | tail -n +2 | sendmail -t
         if [ $? -eq 1 ]; then
             ERROR=1
         fi
-- 
1.7.1


