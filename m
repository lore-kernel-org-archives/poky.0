Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 77AC64C803D6
	for <poky@yoctoproject.org>; Sun,  7 Nov 2010 08:10:20 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 07 Nov 2010 06:10:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,310,1286175600"; d="scan'208";a="345606714"
Received: from unknown (HELO localhost) ([10.255.12.208])
	by azsmga001.ch.intel.com with ESMTP; 07 Nov 2010 06:10:19 -0800
Message-Id: <5ef7fc6c353b432c48e58f63800ea282692b3815.1289057313.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1289057313.git.dvhart@linux.intel.com>
References: <cover.1289057313.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Date: Sat, 6 Nov 2010 09:42:28 -0400
To: poky@yoctoproject.org
Cc: Bruce Ashfield <bruce.ashfield@windriver.com>
Subject: [PATCH 2/3] git-pull: add the new create-pull-request script
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

The previous create-pull-request only generated a cover letter. When used to
send to the list, it did not include the patches, which made it difficult
to perform peer review. A pull request without patches is typically only sent
by a maintainer. As we are not all maintainers, we need a means to easily
submit patches for review.

As we are accustomed to making pull requests, this script retains a
git-pull-style cover letter, while sending the relevant patches as responses
to the pull. This will provide the necessary context for peer review, and still
allow people to collapse threads and see no more mail than they were previously.

This version retains the relative_to, commit_id, and contrib_branch arguments
from the original, along with their default values. It adds several more,
resulting in a highly flexible tool.

The script creates a pull directory (pull-$$ by default, configurable via the -o
option) and populates it with a git-format-patch generated patch series and
cover letter. The cover letter is modified to include the git and http pull URLs
and branch name, as well as a basic signature from the author pulled from git's
user.name and user.email config. git-format-patch provides the shortlog and
diffstat of the series.

Breaking a bit from the original, this script maintains the [PATCH] subject
prefix in the cover letter (as opposed to [GIT PULL]. This is better suited to
the majority of developers (who are not maintainers). This prefix is
configurable with the -p option, allowing you to create an [RFC PATCH]
prefix, for example.

By default, the generated cover letter with contain "*** SUBJECT HERE ***" and
"*** BLURB HERE ***" tokens which you should replace with something
appropriate prior to sending the messages.

When developing multiple versions of a patch series, it can save time to
maintain a message.txt file, rather than having to retype the message body of
the cover letter every time. The -m option allows you to specify a message file
and replace the "*** BLURB HERE ***" token of the cover letter with the contents
of the message file.

Finally, the -s option will replace the "*** SUBJECT HERE ***" token in the cover
letter with the specified subject.

The generated patches are suitable for sending via sendmail.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Nitin A Kamble <nitin.a.kamble@intel.com>
CC: Richard Purdie <rpurdie@linux.intel.com>
CC: Saul Wold <saul.wold@intel.com>
CC: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 scripts/create-pull-request |  129 +++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 129 insertions(+), 0 deletions(-)
 create mode 100755 scripts/create-pull-request

diff --git a/scripts/create-pull-request b/scripts/create-pull-request
new file mode 100755
index 0000000..5ad7666
--- /dev/null
+++ b/scripts/create-pull-request
@@ -0,0 +1,129 @@
+#!/bin/bash
+ODIR=pull-$$
+RELATIVE_TO="master"
+COMMIT_ID="HEAD"
+PULL_URL="git://git.pokylinux.org/poky-contrib.git"
+PREFIX="PATCH"
+
+usage() {
+CMD=$(basename $0)
+cat <<EOM
+Usage: $CMD [-h] [-o output_dir] [-m msg_body_file] [-s subject] [-r relative_to] [-i commit_id] -b contrib_branch
+  -h                  Display this help message
+  -o output_dir       Specify the output directory for the messages (default: pull-PID)
+  -m msg_body_file    The file containing a blurb to be inserted into the summary email
+  -r relative_to      Starting commit (default: master)
+  -i commit_id        Ending commit (default: HEAD)
+  -b contrib_branch   Branch-name in the git.pokylinux.org/poky-contrib tree
+  -s subject          The subject to be inserted into the summary email
+  -p prefix           Use [prefix N/M] instead of [PATCH N/M] as the subject prefix
+
+ Examples:
+   $CMD -b nitin/basic
+   $CMD -r distro/master -i nitin/distro -b nitin/distro
+   $CMD -r master -i misc -b nitin/misc -o pull-misc
+   $CMD -p "RFC PATCH" -b nitin/experimental
+EOM
+}
+
+# Parse and validate arguments
+while getopts "b:hi:m:o:r:s:p:" OPT; do
+    case $OPT in
+    b)
+        CONTRIB_BRANCH="$OPTARG"
+        ;;
+    h)
+        usage
+        exit 0
+        ;;
+    i)
+        COMMIT_ID="$OPTARG"
+        ;;
+    m)
+        BODY="$OPTARG"
+        if [ ! -e "$BODY" ]; then
+            echo "ERROR: Body file does not exist"
+            exit 1
+        fi
+        ;;
+    o)
+        ODIR="$OPTARG"
+        ;;
+    p)
+        PREFIX="$OPTARG"
+        ;;
+    r)
+        RELATIVE_TO="$OPTARG"
+        ;;
+    s)
+        SUBJECT="$OPTARG"
+        ;;
+    esac
+done
+
+if [ -z "$CONTRIB_BRANCH" ]; then
+    usage
+    exit 1
+fi
+
+
+# Perform a sanity test on the web URL. Issue a warning if it is not
+# accessible, but do not abort as users may want to run offline.
+WEB_URL="http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=$CONTRIB_BRANCH"
+wget -q $WEB_URL -O /dev/null
+if [ $? -ne 0 ]; then
+    echo "WARNING: Branch '$CONTRIB_BRANCH' was not found on the contrib git tree."
+    echo "         Please check your contrib-branch parameter before sending."
+    echo ""
+fi
+
+if [ -e $ODIR ]; then
+	echo "ERROR: output directory $ODIR exists."
+	exit 1
+fi
+mkdir $ODIR
+
+
+# Generate the patches and cover letter
+git format-patch -M --subject-prefix="$PREFIX" -n -o $ODIR --thread=shallow --cover-letter $RELATIVE_TO..$COMMIT_ID > /dev/null
+
+
+# Customize the cover letter
+CL="$ODIR/0000-cover-letter.patch"
+(cat <<EOM
+
+Pull URL: $PULL_URL
+  Branch: $CONTRIB_BRANCH
+  Browse: $WEB_URL
+
+Thanks,
+    $(git config user.name) <$(git config user.email)>
+---
+
+EOM
+) | sed -i "/BLURB HERE/ r /dev/stdin" "$CL"
+
+# If the user specified a message body, insert it into the cover letter and
+# remove the BLURB token.
+if [ -n "$BODY" ]; then
+    sed -i "/BLURB HERE/ r $BODY" "$CL"
+    sed -i "/BLURB HERE/ d" "$CL"
+fi
+
+# If the user specified a subject, replace the SUBJECT token with it.
+if [ -n "$SUBJECT" ]; then
+    sed -i -e "s/\*\*\* SUBJECT HERE \*\*\*/$SUBJECT/" "$CL"
+fi
+
+
+# Generate report for user
+cat <<EOM
+The following patches have been prepared:
+$(for PATCH in $(ls $ODIR/*); do echo "    $PATCH"; done)
+
+Review their content, especially the summary mail:
+    $CL
+
+When you are satisfied, you can send them with:
+    send-pull-request -a -p $ODIR
+EOM
-- 
1.7.1


