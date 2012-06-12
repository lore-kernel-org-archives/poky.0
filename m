Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F820E006D9
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 13:42:02 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id A202B2FF3C
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 16:41:56 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Tue, 12 Jun 2012 13:41:08 -0700
Message-Id: <86acf668137729e072ba4f95d2b8b2a4634dca61.1339533507.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: A202B2FF3C.A110E
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 18/31] classes/sanity: send sanity check failure as a separate event for Hob
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
X-List-Received-Date: Tue, 12 Jun 2012 20:42:02 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

In order to show a friendlier error message within Hob that does not
bury the actual sanity error in our typical preamble about disabling
sanity checks, use a separate event to indicate that sanity checks
failed.

This change is intended to work together with the related change to
BitBake, however it has a check to ensure that it does not fail with
older versions that do not include that change.

Fixes [YOCTO #2336].

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta/classes/sanity.bbclass |   16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/meta/classes/sanity.bbclass b/meta/classes/sanity.bbclass
index 0c2fa04..9755694 100644
--- a/meta/classes/sanity.bbclass
+++ b/meta/classes/sanity.bbclass
@@ -4,7 +4,16 @@
 
 SANITY_REQUIRED_UTILITIES ?= "patch diffstat texi2html makeinfo svn bzip2 tar gzip gawk chrpath wget cpio"
 
-def raise_sanity_error(msg):
+def raise_sanity_error(msg, d):
+    if d.getVar("SANITY_USE_EVENTS", True) == "1":
+        # FIXME: handle when BitBake version is too old to support bb.event.SanityCheckFailed
+        # We can just fire the event directly once the minimum version is bumped beyond 1.15.1
+        try:
+            bb.event.fire(bb.event.SanityCheckFailed(msg), d)
+            return
+        except AttributeError:
+            pass
+
     bb.fatal(""" OE-core's config sanity checker detected a potential misconfiguration.
     Either fix the cause of this error or at your own risk disable the checker (see sanity.conf).
     Following is the list of potential problems / advisories:
@@ -219,7 +228,7 @@ def check_sanity(sanity_data):
         return
 
     if 0 == os.getuid():
-        raise_sanity_error("Do not use Bitbake as root.")
+        raise_sanity_error("Do not use Bitbake as root.", sanity_data)
 
     messages = ""
 
@@ -449,7 +458,7 @@ def check_sanity(sanity_data):
         messages = messages + "Error, you have a space in your COREBASE directory path. Please move the installation to a directory which doesn't include a space."
 
     if messages != "":
-        raise_sanity_error(messages)
+        raise_sanity_error(messages, sanity_data)
 
 # Create a copy of the datastore and finalise it to ensure appends and 
 # overrides are set - the datastore has yet to be finalised at ConfigParsed
@@ -465,6 +474,7 @@ python check_sanity_eventhandler() {
         check_sanity(sanity_data)
     elif bb.event.getName(e) == "SanityCheck":
         sanity_data = copy_data(e)
+        sanity_data.setVar("SANITY_USE_EVENTS", "1")
         check_sanity(sanity_data)
         bb.event.fire(bb.event.SanityCheckPassed(), e.data)
 
-- 
1.7.9.5


