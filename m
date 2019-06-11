Return-Path: <quentin.schulz@streamunlimited.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CFD71E00DA5; Tue, 11 Jun 2019 07:47:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [213.33.87.19 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bsmtp7.bon.at (bsmtp7.bon.at [213.33.87.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62436E00E04
	for <poky@yoctoproject.org>; Tue, 11 Jun 2019 07:47:00 -0700 (PDT)
Received: from qschulz.sue.net (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp7.bon.at (Postfix) with ESMTPSA id 45NXrz4HSwz5tlL;
	Tue, 11 Jun 2019 16:46:59 +0200 (CEST)
From: Quentin Schulz <quentin.schulz@streamunlimited.com>
To: poky@yoctoproject.org
Date: Tue, 11 Jun 2019 16:46:48 +0200
Message-Id: <20190611144648.30886-3-quentin.schulz@streamunlimited.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190611144648.30886-1-quentin.schulz@streamunlimited.com>
References: <20190611144648.30886-1-quentin.schulz@streamunlimited.com>
Cc: andriy.danylovskyy@streamunlimited.com,
	Alejandro del Castillo <alejandro.delcastillo@ni.com>
Subject: [thud] [PATCH 2/2] OpkgPM: use --add-ignore-recommends to process BAD_RECOMMENDATIONS
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
X-List-Received-Date: Tue, 11 Jun 2019 14:47:36 -0000

From: Alejandro del Castillo <alejandro.delcastillo@ni.com>

Currently, BAD_RECOMMENDATIONS on the opkg backed relies on editing the
opkg status file (it sets BAD_RECOMMENDATIONS pkg want state to
deinstalled and pinned). This is brittle, and not consistent across the
different solver backends. Use new --add-ignore-recommends flag instead.

(From OE-Core rev: 0d11e813ba9b4e8de9e6e5099ff85f5d914243bc)

Signed-off-by: Alejandro del Castillo <alejandro.delcastillo@ni.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta/lib/oe/package_manager.py | 41 ++--------------------------------
 meta/lib/oe/rootfs.py          |  2 --
 2 files changed, 2 insertions(+), 41 deletions(-)

diff --git a/meta/lib/oe/package_manager.py b/meta/lib/oe/package_manager.py
index 882e7c429f..7d8804811c 100644
--- a/meta/lib/oe/package_manager.py
+++ b/meta/lib/oe/package_manager.py
@@ -1329,6 +1329,8 @@ class OpkgPM(OpkgDpkgPM):
         cmd = "%s %s" % (self.opkg_cmd, self.opkg_args)
         for exclude in (self.d.getVar("PACKAGE_EXCLUDE") or "").split():
             cmd += " --add-exclude %s" % exclude
+        for bad_recommendation in (self.d.getVar("BAD_RECOMMENDATIONS") or "").split():
+            cmd += " --add-ignore-recommends %s" % bad_recommendation
         cmd += " install "
         cmd += " ".join(pkgs)
 
@@ -1397,45 +1399,6 @@ class OpkgPM(OpkgDpkgPM):
     def list_installed(self):
         return OpkgPkgsList(self.d, self.target_rootfs, self.config_file).list_pkgs()
 
-    def handle_bad_recommendations(self):
-        bad_recommendations = self.d.getVar("BAD_RECOMMENDATIONS") or ""
-        if bad_recommendations.strip() == "":
-            return
-
-        status_file = os.path.join(self.opkg_dir, "status")
-
-        # If status file existed, it means the bad recommendations has already
-        # been handled
-        if os.path.exists(status_file):
-            return
-
-        cmd = "%s %s info " % (self.opkg_cmd, self.opkg_args)
-
-        with open(status_file, "w+") as status:
-            for pkg in bad_recommendations.split():
-                pkg_info = cmd + pkg
-
-                try:
-                    output = subprocess.check_output(pkg_info.split(), stderr=subprocess.STDOUT).strip().decode("utf-8")
-                except subprocess.CalledProcessError as e:
-                    bb.fatal("Cannot get package info. Command '%s' "
-                             "returned %d:\n%s" % (pkg_info, e.returncode, e.output.decode("utf-8")))
-
-                if output == "":
-                    bb.note("Ignored bad recommendation: '%s' is "
-                            "not a package" % pkg)
-                    continue
-
-                for line in output.split('\n'):
-                    if line.startswith("Status:"):
-                        status.write("Status: deinstall hold not-installed\n")
-                    else:
-                        status.write(line + "\n")
-
-                # Append a blank line after each package entry to ensure that it
-                # is separated from the following entry
-                status.write("\n")
-
     def dummy_install(self, pkgs):
         """
         The following function dummy installs pkgs and returns the log of output.
diff --git a/meta/lib/oe/rootfs.py b/meta/lib/oe/rootfs.py
index e5512d09ef..aa9fb2e0b5 100644
--- a/meta/lib/oe/rootfs.py
+++ b/meta/lib/oe/rootfs.py
@@ -879,8 +879,6 @@ class OpkgRootfs(DpkgOpkgRootfs):
 
         self.pm.update()
 
-        self.pm.handle_bad_recommendations()
-
         if self.progress_reporter:
             self.progress_reporter.next_stage()
 
-- 
2.17.1


