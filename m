Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5246DE00803; Thu, 14 Jan 2016 14:25:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34541E0070F
	for <poky@yoctoproject.org>; Thu, 14 Jan 2016 14:25:26 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 14 Jan 2016 14:25:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,296,1449561600"; d="scan'208";a="881619263"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.151])
	by fmsmga001.fm.intel.com with ESMTP; 14 Jan 2016 14:25:24 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 14 Jan 2016 16:27:03 -0600
Message-Id: <a0064e7a8877fa00724ac15263fd51ee04545bb2.1452808373.git.anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1452808370.git.anibal.limon@linux.intel.com>
References: <cover.1452808370.git.anibal.limon@linux.intel.com>
In-Reply-To: <cover.1452808370.git.anibal.limon@linux.intel.com>
References: <cover.1452808370.git.anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com, openembedded-core@lists.openembedded.org,
	georgex.l.musat@intel.com, tudor.florea@enea.com,
	benjamin.esquivel@intel.com
Subject: [PATCH 2/3] ptests: Update references to new ptest-runner2.
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 14 Jan 2016 22:25:29 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

classes/ptest.bbclass: Now recommends ptest-runner2 instead of
			ptest-runner.
oeqa/runtime/_ptest.py: Now validate if ptest-runner2 is installed.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 meta/classes/ptest.bbclass      | 2 +-
 meta/lib/oeqa/runtime/_ptest.py | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta/classes/ptest.bbclass b/meta/classes/ptest.bbclass
index fa3561e..c84ca97 100644
--- a/meta/classes/ptest.bbclass
+++ b/meta/classes/ptest.bbclass
@@ -12,7 +12,7 @@ PTEST_ENABLED_class-nativesdk = ""
 PTEST_ENABLED_class-cross-canadian = ""
 RDEPENDS_${PN}-ptest_class-native = ""
 RDEPENDS_${PN}-ptest_class-nativesdk = ""
-RRECOMMENDS_${PN}-ptest += "ptest-runner"
+RRECOMMENDS_${PN}-ptest += "ptest-runner2"
 
 PACKAGES =+ "${@bb.utils.contains('PTEST_ENABLED', '1', '${PN}-ptest', '', d)}"
 
diff --git a/meta/lib/oeqa/runtime/_ptest.py b/meta/lib/oeqa/runtime/_ptest.py
index 0621028..d1e51a4 100644
--- a/meta/lib/oeqa/runtime/_ptest.py
+++ b/meta/lib/oeqa/runtime/_ptest.py
@@ -105,10 +105,10 @@ class PtestRunnerTest(oeRuntimeTest):
     def test_ptestrunner(self):
         self.add_smart_channel()
         (runnerstatus, result) = self.target.run('which ptest-runner', 0)
-        cond = oeRuntimeTest.hasPackage("ptest-runner") and oeRuntimeTest.hasFeature("ptest") and oeRuntimeTest.hasPackage("-ptest") and (runnerstatus != 0)
+        cond = oeRuntimeTest.hasPackage("ptest-runner2") and oeRuntimeTest.hasFeature("ptest") and oeRuntimeTest.hasPackage("-ptest") and (runnerstatus != 0)
         if cond:
             self.install_packages(self.install_complementary("*-ptest"))
-            self.install_packages(['ptest-runner'])
+            self.install_packages(['ptest-runner2'])
 
         (runnerstatus, result) = self.target.run('/usr/bin/ptest-runner > /tmp/ptest.log 2>&1', 0)
         #exit code is !=0 even if ptest-runner executes because some ptest tests fail.
-- 
2.1.4


