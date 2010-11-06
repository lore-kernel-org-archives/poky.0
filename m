Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 83D7E4C803D6
	for <poky@yoctoproject.org>; Sun,  7 Nov 2010 08:10:19 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 Nov 2010 06:10:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,310,1286175600"; d="scan'208";a="675109051"
Received: from unknown (HELO localhost) ([10.255.12.208])
	by orsmga001.jf.intel.com with ESMTP; 07 Nov 2010 06:10:18 -0800
Message-Id: <8645f1ee0161cca1b619f86b5d652219235093d7.1289057313.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1289057313.git.dvhart@linux.intel.com>
References: <cover.1289057313.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Date: Sat, 6 Nov 2010 09:35:37 -0400
To: poky@yoctoproject.org
Cc: Bruce Ashfield <bruce.ashfield@windriver.com>
Subject: [PATCH 1/3] git pull: remove the existing create_pull_request script
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
X-List-Received-Date: Sun, 07 Nov 2010 14:10:20 -0000

The patches to follow completely rewrite the existing create-pull-request.
Rather than have an initial diff of the two files (which are not at all
similar) remove the original, and then create the new one.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Nitin A Kamble <nitin.a.kamble@intel.com>
CC: Richard Purdie <rpurdie@linux.intel.com>
CC: Saul Wold <saul.wold@intel.com>
CC: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 scripts/create-pull-request |   86 -------------------------------------------
 1 files changed, 0 insertions(+), 86 deletions(-)
 delete mode 100755 scripts/create-pull-request

diff --git a/scripts/create-pull-request b/scripts/create-pull-request
deleted file mode 100755
index c9a7916..0000000
--- a/scripts/create-pull-request
+++ /dev/null
@@ -1,86 +0,0 @@
-#!/bin/bash
-#
-# create a pull request for your branch
-#
-
-usage() {
-    echo "Usage: "
-    echo "$ $0 [-r <relative_to>] [-i <commit_id>] -b <contrib_branch>"
-    echo "  <relative_to> is a commit identifier, like branch-name, HEAD, hex-commit-id"
-    echo "  <commit_id> is a commit identifier, like branch-name, HEAD, hex-commit-id"
-    echo "  <contrib_branch> is the branch-name in the git.pokylinux.org/poky-contrib tree"
-    echo "  If <relative_to> is not specified then relative to master is assumed"
-    echo "  If <commit_id> is not specified then it is assumed as HEAD"
-    echo " For Example:"
-    echo "   $0 -r master -i misc -b nitin/misc "
-    echo "   $0 -b nitin/misc "
-    echo "   $0 -r distro/master -i nitin/distro -b nitin/distro "
-    exit 1
-}
-
-while [ $# -ne 0 ] # loop over arguments
-do
-
-    case $1 in
-    -r )
-        shift
-        RELATIVE_TO=$1
-        shift
-        ;;
-    -i )
-        shift
-        COMMIT_ID=$1
-        shift
-        ;;
-    -b )
-        shift
-        CONTRIB_BRANCH=$1
-        shift
-        ;;
-    *)
-        usage
-        ;;
-    esac
-done
-
-if [ "${COMMIT_ID}" = "" ]; then
-    COMMIT_ID=HEAD
-    echo "Note: <commit_id> parameter assumed as 'HEAD'"
-fi
-
-if [ "${RELATIVE_TO}" = "" ]; then
-    RELATIVE_TO=master
-    echo "Note: <relative_to> parameter assumed as 'master'"
-fi
-
-if [ "${CONTRIB_BRANCH}" = "" ]; then
-    echo "Error: Parameter <contrib_branch> not specified"
-    usage
-fi
-
-git --no-pager show ${COMMIT_ID} > /dev/null
-if [ "$?" != "0" ]; then
-    echo "Error: Invalid <commit_id> parameter specified"
-    usage
-fi
-
-git --no-pager show ${RELATIVE_TO} > /dev/null
-if [ "$?" != "0" ]; then
-    echo "Error: Invalid <relative_to> parameter specified: ${RELATIVE_TO}" 
-    usage
-fi
-
-echo ""
-git --no-pager diff ${RELATIVE_TO}..${COMMIT_ID} | diffstat -p1
-echo ""
-git --no-pager log --no-merges ${RELATIVE_TO}..${COMMIT_ID} | git --no-pager shortlog
-
-PULL_URL="http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=${CONTRIB_BRANCH}"
-
-echo "Pull URL: ${PULL_URL}"
-
-wget -q ${PULL_URL} -O - | grep -q "Invalid branch:\ ${CONTRIB_BRANCH}"
-if [ "$?" == "0" ]; then
-    echo "Warning: Branch named '${CONTRIB_BRANCH}' was not found on contrib git tree"
-    echo "Check your <contrib-branch> parameter"
-fi
-- 
1.7.1


