Return-Path: <lianhao.lu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B4DC54C80191
	for <poky@yoctoproject.org>; Tue,  7 Jun 2011 02:05:21 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 Jun 2011 00:05:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,331,1304319600"; d="scan'208";a="10429886"
Received: from llu-piketon.sh.intel.com (HELO localhost) ([10.239.36.87])
	by orsmga001.jf.intel.com with ESMTP; 07 Jun 2011 00:05:20 -0700
From: Lianhao Lu <lianhao.lu@intel.com>
To: poky@yoctoproject.org
Date: Tue,  7 Jun 2011 15:12:43 +0800
Message-Id: <fb45c999724a0d9f022ea95a79f7f3aebd5d0ab6.1307430287.git.lianhao.lu@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1307430283.git.lianhao.lu@intel.com>
References: <cover.1307430283.git.lianhao.lu@intel.com>
Subject: [Image_Creator_Patch 1/1] bitbake/hob: Not display false error msg at hob exit.
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
X-List-Received-Date: Tue, 07 Jun 2011 07:05:21 -0000

Not display the false error msg "Nothing to do ..." when hob ui exits by
adding a flag of bb.ui.allowNoneAction.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 bitbake/lib/bb/cooker.py      |    4 +++-
 bitbake/lib/bb/ui/__init__.py |    2 ++
 bitbake/lib/bb/ui/hob.py      |    3 +++
 3 files changed, 8 insertions(+), 1 deletions(-)

diff --git a/bitbake/lib/bb/cooker.py b/bitbake/lib/bb/cooker.py
index ac2faa2..584a86d 100644
--- a/bitbake/lib/bb/cooker.py
+++ b/bitbake/lib/bb/cooker.py
@@ -35,6 +35,7 @@ from cStringIO import StringIO
 from contextlib import closing
 import bb
 from bb import utils, data, parse, event, cache, providers, taskdata, command, runqueue
+import bb.ui
 
 logger      = logging.getLogger("BitBake")
 collectlog  = logging.getLogger("BitBake.Collection")
@@ -153,7 +154,8 @@ class BBCooker:
                 self.commandlineAction = ["buildTargets", self.configuration.pkgs_to_build, self.configuration.cmd]
             else:
                 self.commandlineAction = None
-                buildlog.error("Nothing to do.  Use 'bitbake world' to build everything, or run 'bitbake --help' for usage information.")
+                if not bb.ui.allowNoneAction:
+                    buildlog.error("Nothing to do.  Use 'bitbake world' to build everything, or run 'bitbake --help' for usage information.")
 
     def runCommands(self, server, data, abort):
         """
diff --git a/bitbake/lib/bb/ui/__init__.py b/bitbake/lib/bb/ui/__init__.py
index a4805ed..518abfc 100644
--- a/bitbake/lib/bb/ui/__init__.py
+++ b/bitbake/lib/bb/ui/__init__.py
@@ -15,3 +15,5 @@
 # You should have received a copy of the GNU General Public License along
 # with this program; if not, write to the Free Software Foundation, Inc.,
 # 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+
+allowNoneAction = False
\ No newline at end of file
diff --git a/bitbake/lib/bb/ui/hob.py b/bitbake/lib/bb/ui/hob.py
index bef3ba2..391bf52 100644
--- a/bitbake/lib/bb/ui/hob.py
+++ b/bitbake/lib/bb/ui/hob.py
@@ -31,6 +31,9 @@ from bb.ui.crumbs.hig import CrumbsDialog
 import xmlrpclib
 import logging
 import Queue
+import bb.ui
+
+bb.ui.allowNoneAction = True
 
 class MainWindow (gtk.Window):
             
-- 
1.7.0.4


