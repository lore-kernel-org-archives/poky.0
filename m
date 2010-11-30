Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 88F8D4C810CE
	for <poky@yoctoproject.org>; Tue, 30 Nov 2010 10:56:03 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 30 Nov 2010 08:56:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,280,1288594800"; d="scan'208";a="579086426"
Received: from unknown (HELO helios) ([10.255.16.37])
	by orsmga002.jf.intel.com with SMTP; 30 Nov 2010 08:56:00 -0800
Received: by helios (sSMTP sendmail emulation); Tue, 30 Nov 2010 16:55:56 +0000
Message-Id: <cc23b209094288c749968a2933959c097ae2d3e6.1291135878.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1291135878.git.paul.eggleton@linux.intel.com>
References: <cover.1291135878.git.paul.eggleton@linux.intel.com>
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Tue, 30 Nov 2010 16:40:55 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/1] sanity.bbclass: add check for creation of long filenames
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
X-List-Received-Date: Tue, 30 Nov 2010 16:56:03 -0000

Detect and fail if filesystem in use for TMPDIR or SSTATE_DIR has an
unreasonably short file name length limit (eg. eCryptFS). This can cause
"file name too long" errors during poky builds (e.g. when writing sstate
files for packages with a git revision as the version).

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta/classes/sanity.bbclass |   33 ++++++++++++++++++++++++++++++++-
 1 files changed, 32 insertions(+), 1 deletions(-)

diff --git a/meta/classes/sanity.bbclass b/meta/classes/sanity.bbclass
index 06aeddc..90e8911 100644
--- a/meta/classes/sanity.bbclass
+++ b/meta/classes/sanity.bbclass
@@ -21,6 +21,21 @@ def check_conf_exists(fn, data):
 			return True
 	return False
 
+def check_create_long_filename(filepath, pathname):
+	testfile = os.path.join(filepath, ''.join([`num`[-1] for num in xrange(1,200)]))
+	try:
+		if not os.path.exists(filepath):
+			os.path.mkdir(filepath)
+		f = file(testfile, "w")
+		f.close()
+		os.remove(testfile)
+	except IOError as (errno, strerror):
+		if errno == 36: # ENAMETOOLONG
+			return "Failed to create a file with a long name in {0}. Please use a filesystem that does not unreasonably limit filename length.\n".format(pathname)
+		else:
+			return "Failed to create a file in {0}: {1}".format(pathname, strerror)
+	return ""
+
 def check_sanity(e):
 	from bb import note, error, data, __version__
 
@@ -163,10 +178,26 @@ def check_sanity(e):
 		if os.path.exists('%s/libc.so.6' % lib32path) and not os.path.exists('/usr/include/gnu/stubs-32.h'):
 			messages = messages + "You have a 32-bit libc, but no 32-bit headers.  You must install the 32-bit libc headers.\n"
 
+	tmpdir = data.getVar('TMPDIR', e.data, True)
+
+	#
+	# Check that TMPDIR isn't on a filesystem with limited filename length (eg. eCryptFS)
+	#
+	testmsg = check_create_long_filename(tmpdir, "TMPDIR")
+	if testmsg != "":
+		messages = messages + testmsg
+	#
+	# Check that SSTATE_DIR isn't on a filesystem with limited filename length (eg. eCryptFS)
+	#
+	sstatedir = data.getVar('SSTATE_DIR', e.data, True)
+	if sstatedir != "":
+		testmsg = check_create_long_filename(sstatedir, "SSTATE_DIR")
+		if testmsg != "":
+			messages = messages + testmsg
+
 	#
 	# Check that TMPDIR hasn't changed location since the last time we were run
 	#
-	tmpdir = data.getVar('TMPDIR', e.data, True)
 	checkfile = os.path.join(tmpdir, "saved_tmpdir")
 	if os.path.exists(checkfile):
 		f = file(checkfile, "r")
-- 
1.7.1


