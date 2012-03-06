Return-Path: <Kai.Kang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBA4CE0044D
	for <poky@yoctoproject.org>; Mon,  5 Mar 2012 22:37:22 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q266bLaP005778
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 5 Mar 2012 22:37:21 -0800 (PST)
Received: from localhost.localdomain (128.224.162.241) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.1.255.0; Mon, 5 Mar 2012 22:37:21 -0800
From: Kang Kai <kai.kang@windriver.com>
To: <richard.purdie@linuxfoundation.org>, <poky@yoctoproject.org>
Date: Tue, 6 Mar 2012 14:36:29 +0800
Message-ID: <144ee0162388cf7d64804ddd7be5cf509d146aba.1331014918.git.kai.kang@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1331014918.git.kai.kang@windriver.com>
References: <cover.1331014918.git.kai.kang@windriver.com>
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
X-List-Received-Date: Tue, 06 Mar 2012 06:37:23 -0000
Content-Type: text/plain

[Yocto 1561]
Add script cleanup-workdir to clean up WORKDIR. It checks every
package build directories under WORKDIR then parse the directory
name to get package name and version. If the version is not the
package prefer version then delete the directory.

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 scripts/cleanup-workdir |  147 +++++++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 147 insertions(+), 0 deletions(-)
 create mode 100755 scripts/cleanup-workdir

diff --git a/scripts/cleanup-workdir b/scripts/cleanup-workdir
new file mode 100755
index 0000000..5827ff9
--- /dev/null
+++ b/scripts/cleanup-workdir
@@ -0,0 +1,147 @@
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
+import shutil
+
+versions = {}
+obsolete_dirs = []
+verfile = '/tmp/bitbake-s.%d' % os.getpid()
+
+def err_quit(msg):
+    print msg
+    try:
+        os.remove(verfile)
+    except:
+        pass
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
+    parser = optparse.OptionParser(
+        usage = """%prog [options] [BUILDDIR]
+
+Remove the obsolete packages' build directories in WORKDIR.
+If BUILDDIR is not appended, current directory is treated as build directory.""")
+
+    parser.add_option("-i", "--initenv", help = "The file oe-init-build-env which needs to be sourced before run bitbake",
+                        action = "store", dest = "envfile", default = None)
+
+    options, args = parser.parse_args(sys.argv)
+
+    builddir = None
+    if len(args) > 1:
+        builddir = args[1]
+    if not builddir and os.path.exists('tmp/work'):
+        builddir = os.getcwd()
+    if not builddir:
+        err_quit("Current directory is not a valid build directory. Please input a valid build diretory.")
+
+    envfile = options.__dict__['envfile']
+    if not envfile:
+        envfile = os.path.join(builddir, "../oe-init-build-env")
+    if not os.path.exists(envfile):
+        err_quit("Can't find file oe-init-build-env.")
+
+    print 'Updating bitbake caches...'
+    cmd = "source %s . &>/dev/null && bitbake -s > %s " % (envfile, verfile)
+    ret = os.system(cmd)
+    if ret != 0:
+        print "Execute 'bitbake -s' failed. Can't get packages' versions."
+        return 1
+
+    fverfile = open(verfile, 'r')
+    alllines = fverfile.readlines()
+    fverfile.close()
+
+    alllines = alllines[5:]
+    for line in alllines:
+        line = line.strip()
+        line = re.sub('\s+', ' ', line)
+        elems = line.split(' ')
+        if len(elems) == 2:
+            version = parse_version(elems[1])
+        else:
+            version = parse_version(elems[2])
+        versions[elems[0]] = version
+
+    workdir = os.path.join(builddir, 'tmp/work')
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
+    os.remove(verfile)
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


