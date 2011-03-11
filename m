Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id BFB394C80861
	for <poky@lists.pokylinux.org>; Thu, 10 Mar 2011 18:03:33 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2B03XFt021569
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@lists.pokylinux.org>; Thu, 10 Mar 2011 16:03:33 -0800 (PST)
Received: from localhost.localdomain (172.25.34.61) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Thu, 10 Mar 2011 16:03:32 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: <poky@lists.pokylinux.org>
Date: Thu, 10 Mar 2011 18:03:52 -0600
Message-ID: <a0c1c7d647b356f86de2574b70af102d50494c77.1299801529.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1299801529.git.mark.hatle@windriver.com>
References: <cover.1299801529.git.mark.hatle@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [172.25.34.61]
Subject: [PATCH 2/4] package.bbclass: Change the debug directory to avoid conflicts
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
X-List-Received-Date: Fri, 11 Mar 2011 00:03:33 -0000
Content-Type: text/plain

The debug directory before was below ${WORKDIR}.  Unfortunately if
something was based on a git tree, it meant that "git" was the
directory name being preserved for usr/src/debug usage.  The patch
moves to using "${WORKDIR}/.." as the base, to ensure that the
WORKDIR naming is used in usr/src/debug.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/classes/package.bbclass |   10 ++++++++--
 1 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
index 137de09..a7a5894 100644
--- a/meta/classes/package.bbclass
+++ b/meta/classes/package.bbclass
@@ -180,6 +180,7 @@ def splitfile(file, debugfile, debugsrcdir, d):
     objcopy = bb.data.getVar("OBJCOPY", d, True)
     debugedit = bb.data.expand("${STAGING_LIBDIR_NATIVE}/rpm/bin/debugedit", d)
     workdir = bb.data.expand("${WORKDIR}", d)
+    workparentdir = os.path.dirname(workdir)
     sourcefile = bb.data.expand("${WORKDIR}/debugsources.list", d)
 
     # We ignore kernel modules, we don't generate debug info files.
@@ -194,7 +195,7 @@ def splitfile(file, debugfile, debugsrcdir, d):
 
     # We need to extract the debug src information here...
     if debugsrcdir:
-	os.system("%s'%s' -b '%s' -d '%s' -i -l '%s' '%s'" % (pathprefix, debugedit, workdir, debugsrcdir, sourcefile, file))
+	os.system("%s'%s' -b '%s' -d '%s' -i -l '%s' '%s'" % (pathprefix, debugedit, workparentdir, debugsrcdir, sourcefile, file))
 
     bb.mkdirhier(os.path.dirname(debugfile))
 
@@ -222,15 +223,20 @@ def splitfile2(debugsrcdir, d):
     objcopy = bb.data.getVar("OBJCOPY", d, True)
     debugedit = bb.data.expand("${STAGING_LIBDIR_NATIVE}/rpm/bin/debugedit", d)
     workdir = bb.data.expand("${WORKDIR}", d)
+    workparentdir = os.path.dirname(workdir)
+    workbasedir = os.path.basename(workdir)
     sourcefile = bb.data.expand("${WORKDIR}/debugsources.list", d)
 
     if debugsrcdir:
        bb.mkdirhier("%s%s" % (dvar, debugsrcdir))
 
        processdebugsrc =  "LC_ALL=C ; sort -z -u '%s' | egrep -v -z '(<internal>|<built-in>)$' | "
+       # We need to ignore files that are not actually ours
+       # we do this by only paying attention to items from this package
+       processdebugsrc += "egrep -z '%s' | "
        processdebugsrc += "(cd '%s' ; cpio -pd0mL '%s%s' 2>/dev/null)"
 
-       os.system(processdebugsrc % (sourcefile, workdir, dvar, debugsrcdir))
+       os.system(processdebugsrc % (sourcefile, workbasedir, workparentdir, dvar, debugsrcdir))
 
        # The copy by cpio may have resulted in some empty directories!  Remove these
        for root, dirs, files in os.walk("%s%s" % (dvar, debugsrcdir)):
-- 
1.7.3.4


