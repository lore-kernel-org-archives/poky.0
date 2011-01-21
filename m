Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 020004C80FAD
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 15:32:10 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 21 Jan 2011 13:32:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,359,1291622400"; d="scan'208";a="378170430"
Received: from unknown (HELO [10.255.14.122]) ([10.255.14.122])
	by azsmga001.ch.intel.com with ESMTP; 21 Jan 2011 13:32:10 -0800
Message-ID: <4D39FB56.8020204@linux.intel.com>
Date: Fri, 21 Jan 2011 13:32:06 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: [PATCH] send-pull-request: send all patches as the local user
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
X-List-Received-Date: Fri, 21 Jan 2011 21:32:11 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Please pull the following patch from poky-contrib/dvhart/git-pull

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dvhart/git-pull
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/git-pull

Thanks,
    Darren Hart <dvhart@linux.intel.com>


When using sendmail to send patches, patches would appear to be from the
original author as git adds a From: header in the generated patches.  This patch
changes this behavior to match that of git-send-email, where the email From:
header is that of the current sender (according to sendmail) and a "From:
Original Author <email>" line is inserted into the body of the message.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 scripts/send-pull-request |    7 ++++++-
 1 files changed, 6 insertions(+), 1 deletions(-)

diff --git a/scripts/send-pull-request b/scripts/send-pull-request
index 9872c0d..af7ce2a 100755
--- a/scripts/send-pull-request
+++ b/scripts/send-pull-request
@@ -140,13 +140,18 @@ if [ "$cont" == "y" ] || [ "$cont" == "Y" ]; then
                 # appending them to the sendmail command as -- $TO $CC has
                 # proven to be an exercise in futility.
                 #
+                # Clear the From header, leaving it up to sendmail to insert an
+                # appropriate one. Insert the original sender (per git) into the
+                # body of the message.
+                #
                 # Use tail to remove the email envelope from git or formail as
                 # msmtp (sendmail) would choke on them.
                 #
                 # Modify the patch date for sequential delivery, but retain the
                 # original date as "Old-Date".
                 DATE=$(date +"%a, %d %b %Y %k:%M:%S %z")
-                cat $PATCH | formail -I "To: $TO" -I "CC: $CC" -i "Date: $DATE" | tail -n +2 | sendmail -t
+                GIT_FROM=$(cat $PATCH | formail -X "From:")
+                cat $PATCH | formail -I "To: $TO" -I "CC: $CC" -I "From:" -i "Date: $DATE" | sed "0,/^$/s/^$/\n$GIT_FROM\n/" | tail -n +2 | sendmail -t
                 if [ $? -eq 1 ]; then
                     ERROR=1
                 fi
-- 
1.7.1
-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

