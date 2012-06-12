Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70314E01437
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 13:41:36 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 846032FD1D
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 16:41:30 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Tue, 12 Jun 2012 13:40:57 -0700
Message-Id: <e5b844eca8cb9cb0efe65d3e03c73bad0437287a.1339533507.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 846032FD1D.33AC0
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 07/31] Update version to 1.15.2 (correspdoning to Yocto 1.2 release)
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
X-List-Received-Date: Tue, 12 Jun 2012 20:41:36 -0000

From: Richard Purdie <richard.purdie@linuxfoundation.org>

(Bitbake rev: 270a05b0b4ba0959fe0624d2a4885d7b70426da5)

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 bitbake/bin/bitbake        |    2 +-
 bitbake/lib/bb/__init__.py |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/bitbake/bin/bitbake b/bitbake/bin/bitbake
index a90f6c6..420e69d 100755
--- a/bitbake/bin/bitbake
+++ b/bitbake/bin/bitbake
@@ -40,7 +40,7 @@ from bb import cooker
 from bb import ui
 from bb import server
 
-__version__ = "1.15.1"
+__version__ = "1.15.2"
 logger = logging.getLogger("BitBake")
 
 
diff --git a/bitbake/lib/bb/__init__.py b/bitbake/lib/bb/__init__.py
index 8d579c7..0b3c4bf 100644
--- a/bitbake/lib/bb/__init__.py
+++ b/bitbake/lib/bb/__init__.py
@@ -21,7 +21,7 @@
 # with this program; if not, write to the Free Software Foundation, Inc.,
 # 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 
-__version__ = "1.15.1"
+__version__ = "1.15.2"
 
 import sys
 if sys.version_info < (2, 6, 0):
-- 
1.7.9.5


