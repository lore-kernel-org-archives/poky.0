Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8C27B4C80A7C
	for <poky@yoctoproject.org>; Mon, 25 Apr 2011 14:36:54 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 Apr 2011 12:36:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,266,1301900400"; d="scan'208";a="738223883"
Received: from doubt.jf.intel.com (HELO localhost) ([10.7.199.56])
	by orsmga001.jf.intel.com with ESMTP; 25 Apr 2011 12:36:53 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 25 Apr 2011 12:36:51 -0700
Message-Id: <278a2deeb8e6e1a89fdc511bd9b793c52278930e.1303760083.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <cover.1303760083.git.dvhart@linux.intel.com>
References: <cover.1303760083.git.dvhart@linux.intel.com>
Cc: Chris Larson <clarson@kergoth.com>, Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 3/3] logging: add bb* logging mechanisms for bash recipe functions
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
X-List-Received-Date: Mon, 25 Apr 2011 19:36:54 -0000

The following logging mechanisms are to be used in bash functions of recipes.
They are intended to map one to one in intention and output format with the
python recipe logging functions of a similar naming convention: bb.plain(),
bb.note(), etc.

For the time being, all of these print only to the task logs. Future
enhancements may integrate these calls with the bitbake logging infrastructure,
allowing for printing to the console as appropriate. The interface and intention
statements reflect that future goal. Once it is in place, no changes will be
necessary to recipes using these logging mechanisms.

I opted to write new functions instead of modifying the oe* logging functions
from base.bbclass (and utils.bbclass in oe) for a couple reasons. First, one of
my goals was to generate a uniform logging API between bash and python in
recipes. Second, there are no users of oe* logging in meta (oe-core) or
meta-yocto, while several oe recipes do use them. I wanted to make a clean start
with the freedom to change behavior without forcing the oe recipes to change or
experience unexpected logging changes. Eventually, the oe recipes can be
migrated to the new bb* logging routines and the existing oe* routines can be
retired (deleted).

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
Cc: Chris Larson <clarson@kergoth.com>
---
 meta/classes/base.bbclass    |    1 +
 meta/classes/logging.bbclass |   72 ++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 73 insertions(+), 0 deletions(-)
 create mode 100644 meta/classes/logging.bbclass

diff --git a/meta/classes/base.bbclass b/meta/classes/base.bbclass
index 374ca04..73900cd 100644
--- a/meta/classes/base.bbclass
+++ b/meta/classes/base.bbclass
@@ -8,6 +8,7 @@ inherit utils
 inherit utility-tasks
 inherit metadata_scm
 inherit buildstats
+inherit logging
 
 python sys_path_eh () {
     if isinstance(e, bb.event.ConfigParsed):
diff --git a/meta/classes/logging.bbclass b/meta/classes/logging.bbclass
new file mode 100644
index 0000000..78d65bd
--- /dev/null
+++ b/meta/classes/logging.bbclass
@@ -0,0 +1,72 @@
+# The following logging mechanisms are to be used in bash functions of recipes.
+# They are intended to map one to one in intention and output format with the
+# python recipe logging functions of a similar naming convention: bb.plain(),
+# bb.note(), etc.
+#
+# For the time being, all of these print only to the task logs. Future
+# enhancements may integrate these calls with the bitbake logging
+# infrastructure, allowing for printing to the console as appropriate. The
+# interface and intention statements reflect that future goal. Once it is
+# in place, no changes will be necessary to recipes using these logging
+# mechanisms.
+
+# Print the output exactly as it is passed in. Typically used for output of
+# tasks that should be seen on the console. Use sparingly.
+# Output: logs console
+# NOTE: console output is not currently implemented.
+bbplain() {
+	echo "$*"
+}
+
+# Notify the user of a noteworthy condition. 
+# Output: logs console
+# NOTE: console output is not currently implemented.
+bbnote() {
+	echo "NOTE: $*"
+}
+
+# Print a warning to the log. Warnings are non-fatal, and do not
+# indicate a build failure.
+# Output: logs
+bbwarn() {
+	echo "WARNING: $*"
+}
+
+# Print an error to the log. Errors are non-fatal in that the build can
+# continue, but they do indicate a build failure.
+# Output: logs
+bberror() {
+	echo "ERROR: $*"
+}
+
+# Print a fatal error to the log. Fatal errors indicate build failure
+# and halt the build, exiting with an error code.
+# Output: logs
+bbfatal() {
+	echo "ERROR: $*"
+	exit 1
+}
+
+# Print debug messages. These are appropriate for progress checkpoint
+# messages to the logs. Depending on the debug log level, they may also
+# go to the console.
+# Output: logs console
+# Usage: bbdebug 1 "first level debug message"
+#        bbdebug 2 "second level debug message"
+# NOTE: console output is not currently implemented.
+bbdebug() {
+	USAGE='Usage: bbdebug [123] "message"'
+	if [ $# -lt 2 ]; then
+		bbfatal "$USAGE"
+	fi
+	
+	# Strip off the debug level and ensure it is an integer
+	DBGLVL=$1; shift
+	if ! [[ "$DBGLVL" =~ ^[0-9]+ ]]; then
+		bbfatal "$USAGE"
+	fi
+
+	# All debug output is printed to the logs
+	echo "DEBUG: $*"
+}
+
-- 
1.7.1


