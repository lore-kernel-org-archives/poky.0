Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3ACBFE004D2
	for <poky@yoctoproject.org>; Fri, 16 Mar 2012 00:57:17 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q2G7vEqL012206
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 16 Mar 2012 00:57:14 -0700 (PDT)
Received: from localhost.localdomain (128.224.162.241) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.1.255.0; Fri, 16 Mar 2012 00:57:14 -0700
From: Kang Kai <kai.kang@windriver.com>
To: <richard.purdie@linuxfoundation.org>, <poky@yoctoproject.org>
Date: Fri, 16 Mar 2012 15:57:08 +0800
Message-ID: <be72603a1b98c41e43cab9b4cf5c98b809c2112a.1331884360.git.kai.kang@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1331884360.git.kai.kang@windriver.com>
References: <cover.1331884360.git.kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.241]
Subject: [PATCH 1/1] cleanup-workdir: add a script to clean up WORKDIR
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
X-List-Received-Date: Fri, 16 Mar 2012 07:57:17 -0000
Content-Type: text/plain

[Yocto 1561]
Add script cleanup-workdir to clean up WORKDIR. It checks every
package build directories under WORKDIR then parse the directory
name to get package name and version. If the version is not the
package prefer version then delete the directory.

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 scripts/cleanup-workdir |  150 +++++++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 150 insertions(+), 0 deletions(-)
 create mode 100755 scripts/cleanup-workdir

diff --git a/scripts/cleanup-workdir b/scripts/cleanup-workdir
new file mode 100755
index 0000000..b77e8c6
--- /dev/null
+++ b/scripts/cleanup-workdir
@@ -0,0 +1,150 @@
+#!/usr/bin/env python
+
+# Copyright (c) 2012 Wind River Systems, Inc.
+#
+# This program is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License version 2 as
+# published by the Free Software Foundation.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
+# See the GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License
+# along with this program; if not, write to the Free Software
+# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
+
+import os
+import sys
+import optparse
+import re
+import commands
+import shutil
+
+versions = {}
+obsolete_dirs = []
+parser = None
+
+def err_quit(msg):
+    print msg
+    parser.print_usage()
+    sys.exit(1)
+
+def parse_version(verstr):
+    elems = verstr.split(':')
+    epoch = elems[0]
+    if len(epoch) == 0:
+        return elems[1]
+    else:
+        return epoch + '_' + elems[1]
+
+def parse_dir(match, pkgabsdir):
+    pkg_name = match.group(1)
+    pkg_version = match.group(2)
+    if pkg_name in versions:
+        if pkg_version != versions[pkg_name]:
+            obsolete_dirs.append(pkgabsdir)
+        return True
+    return False
+
+def main():
+    global parser
+    parser = optparse.OptionParser(
+        usage = """%prog
+
+Remove the obsolete packages' build directories in WORKDIR.
+This script must be ran under BUILDDIR after source file \"oe-init-build-env\".""")
+
+    options, args = parser.parse_args(sys.argv)
+
+    builddir = commands.getoutput('echo $BUILDDIR')
+    if len(builddir) == 0:
+        err_quit("Please source file \"oe-init-build-env\" first.\n")
+
+    if os.getcwd() != builddir:
+        err_quit("Please run %s under: %s\n" % (os.path.basename(args[0]), builddir))
+
+    print 'Updating bitbake caches...'
+    cmd = "bitbake -s"
+    (ret, output) = commands.getstatusoutput(cmd)
+    if ret != 0:
+        print "Execute 'bitbake -s' failed. Can't get packages' versions."
+        return 1
+
+    output = output.split('\n')
+    index = 0
+    while len(output[index]) > 0:
+        index += 1
+    alllines = output[index+1:]
+
+    for line in alllines:
+        # empty again means end of the versions output
+        if len(line) == 0:
+            break
+        line = line.strip()
+        line = re.sub('\s+', ' ', line)
+        elems = line.split(' ')
+        if len(elems) == 2:
+            version = parse_version(elems[1])
+        else:
+            version = parse_version(elems[2])
+        versions[elems[0]] = version
+
+    cmd = "bitbake -e | grep ^TMPDIR"
+    (ret, output) = commands.getstatusoutput(cmd)
+    if ret != 0:
+        print "Execute 'bitbke -e' failed. Can't get TMPDIR."
+        return 1
+
+    tmpdir = output.split('"')[1]
+    workdir = os.path.join(tmpdir, 'work')
+    if not os.path.exists(workdir):
+        print "WORKDIR %s does NOT exist. Quit." % workdir
+        return 1
+
+    for archdir in os.listdir(workdir):
+        archdir = os.path.join(workdir, archdir)
+        if not os.path.isdir(archdir):
+            pass
+
+        for pkgdir in sorted(os.listdir(archdir)):
+            pkgabsdir = os.path.join(archdir, pkgdir)
+            if not os.path.isdir(pkgabsdir):
+                pass
+
+            # parse the package directory names
+            # parse native/nativesdk packages first
+            match = re.match('(.*?-native.*?)-(.*)', pkgdir)
+            if match and parse_dir(match, pkgabsdir):
+                continue
+
+            # parse package names which ends with numbers such as 'glib-2.0'
+            match = re.match('(.*?-[\.\d]+)-(\d.*)', pkgdir)
+            if match and parse_dir(match, pkgabsdir):
+                continue
+
+            # other packages
+            match = re.match('(.*?)-(\d.*)', pkgdir)
+            if match and parse_dir(match, pkgabsdir):
+                continue
+
+    for d in obsolete_dirs:
+        print "Deleleting %s" % d
+        shutil.rmtree(d, True)
+
+    if len(obsolete_dirs):
+        print '\nTotal %d items.' % len(obsolete_dirs)
+    else:
+        print '\nNo obsolete directory found under %s.' % workdir
+
+    return 0
+
+if __name__ == '__main__':
+    try:
+        ret = main()
+    except Exception:
+        ret = 2
+        import traceback
+        traceback.print_exc(3)
+    sys.exit(ret)
-- 
1.7.5.4


