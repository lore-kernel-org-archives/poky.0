Return-Path: <quentin.schulz@streamunlimited.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05467E00D5F; Fri, 31 May 2019 08:47:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	https://www.dnswl.org/, low *      trust
	*      [213.33.87.19 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bsmtp7.bon.at (bsmtp7.bon.at [213.33.87.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B1A4E00D54
	for <poky@yoctoproject.org>; Fri, 31 May 2019 08:47:21 -0700 (PDT)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp7.bon.at (Postfix) with ESMTPSA id 45Fpjh4b6pz5tl9;
	Fri, 31 May 2019 17:47:20 +0200 (CEST)
Date: Fri, 31 May 2019 17:47:19 +0200
From: Quentin Schulz <quentin.schulz@streamunlimited.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20190531154719.bwv3sidwpgsozqln@qschulz>
References: <20190531090953.shdqfcmj27ei4evb@qschulz>
	<49498d79c124b881d142ead589a3e685b4c1aa33.camel@linuxfoundation.org>
MIME-Version: 1.0
In-Reply-To: <49498d79c124b881d142ead589a3e685b4c1aa33.camel@linuxfoundation.org>
User-Agent: NeoMutt/20180716
Cc: poky@yoctoproject.org
Subject: Re: opkg and BAD_RECOMMENDATIONS in thud 2.6.2
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
X-List-Received-Date: Fri, 31 May 2019 15:47:24 -0000
X-Groupsio-MsgNum: 11661
Content-Type: multipart/mixed; boundary="rztyapchgbkh2t3a"
Content-Disposition: inline

--rztyapchgbkh2t3a
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 31, 2019 at 03:50:54PM +0100, Richard Purdie wrote:
> On Fri, 2019-05-31 at 11:09 +0200, Quentin Schulz wrote:
> > I took me a while to find out that it's an issue with opkg itself and
> > nothing could be done in Yocto to fix it but I found the three following
> > patches in yocto-2.7:
> > 
> > https://git.yoctoproject.org/cgit.cgi/poky/commit/?id=d8e12f2bfc4deaa0dc7530cf3af905e18e8037f6
> > https://git.yoctoproject.org/cgit.cgi/poky/commit/?id=c76c50df6498d85e7a6254002ff8f5e0ef3e67f7
> > https://git.yoctoproject.org/cgit.cgi/poky/commit/?id=5bcb626cf49d2295ccca45d6fc7e1617cca932d6
> > 
> > With those three applied on top of thud 2.6.2, my image is built without
> > complaints.
> 
> Does it work with just the first two? I think those may be
> possibilities for backporting. Adding the stable maintainer (Armin) to
> cc. The thrid one (the upgrade) probably isn't a candidate.
> 

The patch file didn't apply cleanly but after doing the changes
manually, it seems that only the first two commits above are needed
indeed. You can find the patch attached.

I can only test on Monday if it works as expected (i.e. bluez5 in the
image), so I'll let you know then.

Have a nice week-end,
Quentin
-- 
StreamUnlimited Engineering GmbH
High Tech Campus Vienna, Gutheil-Schoder-Gasse 10, 1100 Vienna, Austria
quentin.schulz@streamunlimited.com, www.streamunlimited.com

--rztyapchgbkh2t3a
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="0001-PATCH-libopkg-add-add-ignore-recommends-option.patch"

From 2eca28b6a37be92e4e835c51872c7df34ec6dedd Mon Sep 17 00:00:00 2001
From: Quentin Schulz <quentin.schulz@streamunlimited.com>
Date: Fri, 31 May 2019 17:30:40 +0200
Subject: [PATCH] [PATCH] libopkg: add --add-ignore-recommends option

Add option to ignore specific recommended packages. On the libsolv
backed, this feature will only work on libsolv version > 0.7.2 [1].

[1] https://urldefense.proofpoint.com/v2/url?u=https-3A__github.com_openSUSE_libsolv_issues_254&d=DwIBaQ&c=I_0YwoKy7z5LMTVdyO6YCiE2uzI1jjZZuIPelcSjixA&r=wNcrL2akRn6jfxhHaKavUrJB_C9JAMXtynjLd8ZzgXQ&m=GObNHzFJpWpf_PripIrf-K2RhsktYdAUEieAJexXOKw&s=3G-meChUqClFggFPqsrAxIZBfLnRKIHm62Uuy1X6nQQ&e=

Signed-off-by: Alejandro del Castillo <alejandro.delcastillo@ni.com>
Signed-off-by: Quentin Schulz <quentin.schulz@streamunlimited.com>

Upstream-Status: Accepted
---
 libopkg/opkg_conf.c                           |  2 +
 libopkg/opkg_conf.h                           |  1 +
 .../solvers/internal/pkg_depends_internal.c   |  3 +-
 libopkg/solvers/libsolv/opkg_solver_libsolv.c | 21 ++++++-
 man/opkg.1.in                                 |  3 +
 src/opkg.c                                    |  6 ++
 tests/Makefile                                |  1 +
 tests/core/43_add_ignore_recommends.py        | 62 +++++++++++++++++++
 8 files changed, 97 insertions(+), 2 deletions(-)
 create mode 100644 tests/core/43_add_ignore_recommends.py

diff --git a/libopkg/opkg_conf.c b/libopkg/opkg_conf.c
index 06880a1..f2330cd 100644
--- a/libopkg/opkg_conf.c
+++ b/libopkg/opkg_conf.c
@@ -597,6 +597,7 @@ int opkg_conf_init(void)
     pkg_dest_list_init(&opkg_config->tmp_dest_list);
     nv_pair_list_init(&opkg_config->arch_list);
     str_list_init(&opkg_config->exclude_list);
+    str_list_init(&opkg_config->ignore_recommends_list);
 
     return 0;
 }
@@ -938,6 +939,7 @@ void opkg_conf_deinit(void)
     pkg_dest_list_deinit(&opkg_config->pkg_dest_list);
     nv_pair_list_deinit(&opkg_config->arch_list);
     str_list_deinit(&opkg_config->exclude_list);
+    str_list_deinit(&opkg_config->ignore_recommends_list);
 
     if (opkg_config->verbosity >= DEBUG) {
         hash_print_stats(&opkg_config->pkg_hash);
diff --git a/libopkg/opkg_conf.h b/libopkg/opkg_conf.h
index dc11516..fc42de3 100644
--- a/libopkg/opkg_conf.h
+++ b/libopkg/opkg_conf.h
@@ -61,6 +61,7 @@ typedef struct opkg_conf {
     pkg_dest_list_t tmp_dest_list;
     nv_pair_list_t arch_list;
     str_list_t exclude_list;
+    str_list_t ignore_recommends_list;
 
     int restrict_to_default_dest;
     pkg_dest_t *default_dest;
diff --git a/libopkg/solvers/internal/pkg_depends_internal.c b/libopkg/solvers/internal/pkg_depends_internal.c
index cd56d84..5deee70 100644
--- a/libopkg/solvers/internal/pkg_depends_internal.c
+++ b/libopkg/solvers/internal/pkg_depends_internal.c
@@ -228,7 +228,8 @@ int pkg_hash_fetch_unsatisfied_dependencies(pkg_t *pkg,
                             || compound_depend->type == SUGGEST)
                         && (satisfying_pkg->state_want == SW_DEINSTALL
                             || satisfying_pkg->state_want == SW_PURGE
-                            || opkg_config->no_install_recommends);
+                            || opkg_config->no_install_recommends
+                            || str_list_contains(&opkg_config->ignore_recommends_list, satisfying_pkg->name));
                 if (ignore) {
                     opkg_msg(NOTICE,
                              "%s: ignoring recommendation for "
diff --git a/libopkg/solvers/libsolv/opkg_solver_libsolv.c b/libopkg/solvers/libsolv/opkg_solver_libsolv.c
index bf0b72c..ea00a37 100644
--- a/libopkg/solvers/libsolv/opkg_solver_libsolv.c
+++ b/libopkg/solvers/libsolv/opkg_solver_libsolv.c
@@ -484,6 +484,7 @@ static void pkg2solvable(pkg_t *pkg, Solvable *solvable_out)
 static void populate_installed_repo(libsolv_solver_t *libsolv_solver)
 {
     int i;
+    Id what;
 
     pkg_vec_t *installed_pkgs = pkg_vec_alloc();
 
@@ -507,6 +508,15 @@ static void populate_installed_repo(libsolv_solver_t *libsolv_solver)
         /* set solvable attributes */
         pkg2solvable(pkg, solvable);
 
+        /* if the package is in ignore-recommends-list, disfavor installation */
+        if (str_list_contains(&opkg_config->ignore_recommends_list, pkg->name)) {
+            opkg_message(NOTICE, "Disfavor package: %s\n",
+                         pkg->name);
+            what = pool_str2id(libsolv_solver->pool, pkg->name, 1);
+            queue_push2(&libsolv_solver->solver_jobs, SOLVER_SOLVABLE_NAME
+                        | SOLVER_DISFAVOR, what);
+        }
+
         /* if the package is not autoinstalled, mark it as user installed */
         if (!pkg->auto_installed)
             queue_push2(&libsolv_solver->solver_jobs, SOLVER_SOLVABLE
@@ -533,7 +543,7 @@ static void populate_available_repos(libsolv_solver_t *libsolv_solver)
 {
     int i;
     Solvable *solvable;
-    Id solvable_id;
+    Id solvable_id, what;
 
     pkg_vec_t *available_pkgs = pkg_vec_alloc();
 
@@ -602,6 +612,15 @@ static void populate_available_repos(libsolv_solver_t *libsolv_solver)
         solvable = pool_id2solvable(libsolv_solver->pool, solvable_id);
         pkg2solvable(pkg, solvable);
 
+        /* if the package is in ignore-recommends-list, disfavor installation */
+        if (str_list_contains(&opkg_config->ignore_recommends_list, pkg->name)) {
+            opkg_message(NOTICE, "Disfavor package: %s\n",
+                         pkg->name);
+            what = pool_str2id(libsolv_solver->pool, pkg->name, 1);
+            queue_push2(&libsolv_solver->solver_jobs, SOLVER_SOLVABLE_NAME
+                        | SOLVER_DISFAVOR, what);
+        }
+
         /* if the --force-depends option is specified make dependencies weak */
         if (opkg_config->force_depends)
             queue_push2(&libsolv_solver->solver_jobs, SOLVER_SOLVABLE
diff --git a/man/opkg.1.in b/man/opkg.1.in
index 026fb15..c0d4bf3 100644
--- a/man/opkg.1.in
+++ b/man/opkg.1.in
@@ -143,6 +143,9 @@ conjunction with \fB\--dest\fP
 \fB\--add-arch <\fIarch\fP>:<\fIprio\fP>\fR
 Register the package architecture \fIarch\fP with the numeric
 priority \fIprio\fP. Lower priorities take precedence.
+.TP
+\fB\--add-ignore-recommends <\fIname\fP>\fR
+Register package to be ignored as a recomendee
 .SS FORCE OPTIONS
 .TP
 \fB\--force-depends \fR
diff --git a/src/opkg.c b/src/opkg.c
index f23467d..5181065 100644
--- a/src/opkg.c
+++ b/src/opkg.c
@@ -51,6 +51,7 @@ enum {
     ARGS_OPT_ADD_DEST,
     ARGS_OPT_SIZE,
     ARGS_OPT_ADD_EXCLUDE,
+    ARGS_OPT_ADD_IGNORE_RECOMMENDS,
     ARGS_OPT_NOACTION,
     ARGS_OPT_DOWNLOAD_ONLY,
     ARGS_OPT_NODEPS,
@@ -110,6 +111,7 @@ static struct option long_options[] = {
     {"add-dest", 1, 0, ARGS_OPT_ADD_DEST},
     {"size", 0, 0, ARGS_OPT_SIZE},
     {"add-exclude", 1, 0, ARGS_OPT_ADD_EXCLUDE},
+    {"add-ignore-recommends", 1, 0, ARGS_OPT_ADD_IGNORE_RECOMMENDS},
     {"test", 0, 0, ARGS_OPT_NOACTION},
     {"tmp-dir", 1, 0, 't'},
     {"tmp_dir", 1, 0, 't'},
@@ -235,6 +237,9 @@ static int args_parse(int argc, char *argv[])
         case ARGS_OPT_ADD_EXCLUDE:
             str_list_append(&opkg_config->exclude_list, optarg);
             break;
+        case ARGS_OPT_ADD_IGNORE_RECOMMENDS:
+            str_list_append(&opkg_config->ignore_recommends_list, optarg);
+            break;
         case ARGS_OPT_SIZE:
             opkg_config->size = 1;
             break;
@@ -335,6 +340,7 @@ static void usage()
     printf("\t--add-arch <arch>:<prio>        Register architecture with given priority\n");
     printf("\t--add-dest <name>:<path>        Register destination with given path\n");
     printf("\t--add-exclude <name>            Register package to be excluded from install\n");
+    printf("\t--add-ignore-recommends <name>  Register package to be ignored as a recomendee\n");
     printf("\t--prefer-arch-to-version        Use the architecture priority package rather\n");
     printf("\t                                than the higher version one if more\n");
     printf("\t                                than one candidate is found.\n");
diff --git a/tests/Makefile b/tests/Makefile
index 148c844..ddf027f 100644
--- a/tests/Makefile
+++ b/tests/Makefile
@@ -38,6 +38,7 @@ REGRESSION_TESTS := core/01_install.py \
 		    core/37_globs.py \
 		    core/38_install_constrained_version.py \
 		    core/39_distupgrade.py \
+		    core/43_add_ignore_recommends.py \
 		    regress/issue26.py \
 		    regress/issue31.py \
 		    regress/issue32.py \
diff --git a/tests/core/43_add_ignore_recommends.py b/tests/core/43_add_ignore_recommends.py
new file mode 100644
index 0000000..7da0096
--- /dev/null
+++ b/tests/core/43_add_ignore_recommends.py
@@ -0,0 +1,62 @@
+#! /usr/bin/env python3
+#
+# Create package 'a' (1.0) which Recommends 'c'.
+# Install 'a' with --add-ignore-recommends 'c'.
+# Check that only 'a' (1.0) is installed.
+# Create package 'b' which Depends on 'c'.
+# Install 'a' & 'b', with --add-ignore-recommends 'c'.
+# Verify that 'a','b' & 'c' are installed.
+# Uninstall 'b' & 'c'.
+# Create package 'a' (2.0), which Recommends 'c'.
+# Upgrade 'a' with --add-ignore-recommends 'c'
+# Verify that only 'a' (2.0) is installed
+#
+
+import os
+import opk, cfg, opkgcl
+
+opk.regress_init()
+o = opk.OpkGroup()
+
+o.add(Package='a', Recommends='c', Version='1.0')
+o.add(Package='b', Depends='c')
+o.add(Package='c')
+o.write_opk()
+o.write_list()
+
+opkgcl.update()
+
+opkgcl.install('a', '--add-ignore-recommends c')
+
+if not opkgcl.is_installed('a'):
+	opk.fail("Package 'a' installed but reports as not installed.")
+
+if opkgcl.is_installed('c'):
+	opk.xfail("[libsolv<0.7.3] Package 'c' should not have been installed since it was in --add-ignore-recommends.")
+
+opkgcl.remove('a')
+opkgcl.install('a b', '--add-ignore-recommends c')
+
+if not opkgcl.is_installed('a'):
+	opk.fail("Package 'a' installed but reports as not installed.")
+
+if not opkgcl.is_installed('b'):
+	opk.fail("Package 'b' installed but reports as not installed.")
+
+if not opkgcl.is_installed('c'):
+	opk.fail("Package 'c' should have been installed since 'b' depends on it.")
+
+opkgcl.remove('b c', '--force-depends')
+o.add(Package='a', Recommends='c', Version='2.0')
+o.write_opk()
+o.write_list()
+
+opkgcl.update()
+
+opkgcl.upgrade('a', '--add-ignore-recommends c')
+
+if not opkgcl.is_installed('a', '2.0'):
+	opk.fail("Package 'a (2.0)' installed but reports as not installed.")
+
+if opkgcl.is_installed('c'):
+	opk.fail("Package 'c' should not have been installed since it was in --add-ignore-recommends.")
-- 
2.17.1


--rztyapchgbkh2t3a--
