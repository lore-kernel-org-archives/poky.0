Return-Path: <quentin.schulz@streamunlimited.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 090D3E00DA5; Tue, 11 Jun 2019 07:47:37 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 396C1E00DFF
	for <poky@yoctoproject.org>; Tue, 11 Jun 2019 07:47:00 -0700 (PDT)
Received: from qschulz.sue.net (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp7.bon.at (Postfix) with ESMTPSA id 45NXrz30F3z5tlN;
	Tue, 11 Jun 2019 16:46:59 +0200 (CEST)
From: Quentin Schulz <quentin.schulz@streamunlimited.com>
To: poky@yoctoproject.org
Date: Tue, 11 Jun 2019 16:46:47 +0200
Message-Id: <20190611144648.30886-2-quentin.schulz@streamunlimited.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190611144648.30886-1-quentin.schulz@streamunlimited.com>
References: <20190611144648.30886-1-quentin.schulz@streamunlimited.com>
Cc: andriy.danylovskyy@streamunlimited.com,
	Alejandro del Castillo <alejandro.delcastillo@ni.com>
Subject: [thud] [PATCH 1/2] opkg: add --ignore-recommends flag
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
X-List-Received-Date: Tue, 11 Jun 2019 14:47:37 -0000

From: Alejandro del Castillo <alejandro.delcastillo@ni.com>

To be used for BAD_RECOMMENDATIONS feature.

(From OE-Core rev: 788d97b4f8e4452cef1ba6bb3e565e1b52dbb7de)

Signed-off-by: Alejandro del Castillo <alejandro.delcastillo@ni.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
[Backport from opkg_0.4.0.bb]
Signed-off-by: Quentin Schulz <quentin.schulz@streamunlimited.com>
---
 ...pkg-add-add-ignore-recommends-option.patch | 260 ++++++++++++++++++
 meta/recipes-devtools/opkg/opkg_0.3.6.bb      |   1 +
 2 files changed, 261 insertions(+)
 create mode 100644 meta/recipes-devtools/opkg/opkg/0001-libopkg-add-add-ignore-recommends-option.patch

diff --git a/meta/recipes-devtools/opkg/opkg/0001-libopkg-add-add-ignore-recommends-option.patch b/meta/recipes-devtools/opkg/opkg/0001-libopkg-add-add-ignore-recommends-option.patch
new file mode 100644
index 0000000000..11954e9032
--- /dev/null
+++ b/meta/recipes-devtools/opkg/opkg/0001-libopkg-add-add-ignore-recommends-option.patch
@@ -0,0 +1,260 @@
+From 2eca28b6a37be92e4e835c51872c7df34ec6dedd Mon Sep 17 00:00:00 2001
+From: Quentin Schulz <quentin.schulz@streamunlimited.com>
+Date: Fri, 31 May 2019 17:30:40 +0200
+Subject: [PATCH] [PATCH] libopkg: add --add-ignore-recommends option
+
+Add option to ignore specific recommended packages. On the libsolv
+backed, this feature will only work on libsolv version > 0.7.2 [1].
+
+[1] https://urldefense.proofpoint.com/v2/url?u=https-3A__github.com_openSUSE_libsolv_issues_254&d=DwIBaQ&c=I_0YwoKy7z5LMTVdyO6YCiE2uzI1jjZZuIPelcSjixA&r=wNcrL2akRn6jfxhHaKavUrJB_C9JAMXtynjLd8ZzgXQ&m=GObNHzFJpWpf_PripIrf-K2RhsktYdAUEieAJexXOKw&s=3G-meChUqClFggFPqsrAxIZBfLnRKIHm62Uuy1X6nQQ&e=
+
+Signed-off-by: Alejandro del Castillo <alejandro.delcastillo@ni.com>
+Signed-off-by: Quentin Schulz <quentin.schulz@streamunlimited.com>
+
+Upstream-Status: Backport
+---
+ libopkg/opkg_conf.c                           |  2 +
+ libopkg/opkg_conf.h                           |  1 +
+ .../solvers/internal/pkg_depends_internal.c   |  3 +-
+ libopkg/solvers/libsolv/opkg_solver_libsolv.c | 21 ++++++-
+ man/opkg.1.in                                 |  3 +
+ src/opkg.c                                    |  6 ++
+ tests/Makefile                                |  1 +
+ tests/core/43_add_ignore_recommends.py        | 62 +++++++++++++++++++
+ 8 files changed, 97 insertions(+), 2 deletions(-)
+ create mode 100644 tests/core/43_add_ignore_recommends.py
+
+diff --git a/libopkg/opkg_conf.c b/libopkg/opkg_conf.c
+index 06880a1..f2330cd 100644
+--- a/libopkg/opkg_conf.c
++++ b/libopkg/opkg_conf.c
+@@ -597,6 +597,7 @@ int opkg_conf_init(void)
+     pkg_dest_list_init(&opkg_config->tmp_dest_list);
+     nv_pair_list_init(&opkg_config->arch_list);
+     str_list_init(&opkg_config->exclude_list);
++    str_list_init(&opkg_config->ignore_recommends_list);
+ 
+     return 0;
+ }
+@@ -938,6 +939,7 @@ void opkg_conf_deinit(void)
+     pkg_dest_list_deinit(&opkg_config->pkg_dest_list);
+     nv_pair_list_deinit(&opkg_config->arch_list);
+     str_list_deinit(&opkg_config->exclude_list);
++    str_list_deinit(&opkg_config->ignore_recommends_list);
+ 
+     if (opkg_config->verbosity >= DEBUG) {
+         hash_print_stats(&opkg_config->pkg_hash);
+diff --git a/libopkg/opkg_conf.h b/libopkg/opkg_conf.h
+index dc11516..fc42de3 100644
+--- a/libopkg/opkg_conf.h
++++ b/libopkg/opkg_conf.h
+@@ -61,6 +61,7 @@ typedef struct opkg_conf {
+     pkg_dest_list_t tmp_dest_list;
+     nv_pair_list_t arch_list;
+     str_list_t exclude_list;
++    str_list_t ignore_recommends_list;
+ 
+     int restrict_to_default_dest;
+     pkg_dest_t *default_dest;
+diff --git a/libopkg/solvers/internal/pkg_depends_internal.c b/libopkg/solvers/internal/pkg_depends_internal.c
+index cd56d84..5deee70 100644
+--- a/libopkg/solvers/internal/pkg_depends_internal.c
++++ b/libopkg/solvers/internal/pkg_depends_internal.c
+@@ -228,7 +228,8 @@ int pkg_hash_fetch_unsatisfied_dependencies(pkg_t *pkg,
+                             || compound_depend->type == SUGGEST)
+                         && (satisfying_pkg->state_want == SW_DEINSTALL
+                             || satisfying_pkg->state_want == SW_PURGE
+-                            || opkg_config->no_install_recommends);
++                            || opkg_config->no_install_recommends
++                            || str_list_contains(&opkg_config->ignore_recommends_list, satisfying_pkg->name));
+                 if (ignore) {
+                     opkg_msg(NOTICE,
+                              "%s: ignoring recommendation for "
+diff --git a/libopkg/solvers/libsolv/opkg_solver_libsolv.c b/libopkg/solvers/libsolv/opkg_solver_libsolv.c
+index bf0b72c..ea00a37 100644
+--- a/libopkg/solvers/libsolv/opkg_solver_libsolv.c
++++ b/libopkg/solvers/libsolv/opkg_solver_libsolv.c
+@@ -484,6 +484,7 @@ static void pkg2solvable(pkg_t *pkg, Solvable *solvable_out)
+ static void populate_installed_repo(libsolv_solver_t *libsolv_solver)
+ {
+     int i;
++    Id what;
+ 
+     pkg_vec_t *installed_pkgs = pkg_vec_alloc();
+ 
+@@ -507,6 +508,15 @@ static void populate_installed_repo(libsolv_solver_t *libsolv_solver)
+         /* set solvable attributes */
+         pkg2solvable(pkg, solvable);
+ 
++        /* if the package is in ignore-recommends-list, disfavor installation */
++        if (str_list_contains(&opkg_config->ignore_recommends_list, pkg->name)) {
++            opkg_message(NOTICE, "Disfavor package: %s\n",
++                         pkg->name);
++            what = pool_str2id(libsolv_solver->pool, pkg->name, 1);
++            queue_push2(&libsolv_solver->solver_jobs, SOLVER_SOLVABLE_NAME
++                        | SOLVER_DISFAVOR, what);
++        }
++
+         /* if the package is not autoinstalled, mark it as user installed */
+         if (!pkg->auto_installed)
+             queue_push2(&libsolv_solver->solver_jobs, SOLVER_SOLVABLE
+@@ -533,7 +543,7 @@ static void populate_available_repos(libsolv_solver_t *libsolv_solver)
+ {
+     int i;
+     Solvable *solvable;
+-    Id solvable_id;
++    Id solvable_id, what;
+ 
+     pkg_vec_t *available_pkgs = pkg_vec_alloc();
+ 
+@@ -602,6 +612,15 @@ static void populate_available_repos(libsolv_solver_t *libsolv_solver)
+         solvable = pool_id2solvable(libsolv_solver->pool, solvable_id);
+         pkg2solvable(pkg, solvable);
+ 
++        /* if the package is in ignore-recommends-list, disfavor installation */
++        if (str_list_contains(&opkg_config->ignore_recommends_list, pkg->name)) {
++            opkg_message(NOTICE, "Disfavor package: %s\n",
++                         pkg->name);
++            what = pool_str2id(libsolv_solver->pool, pkg->name, 1);
++            queue_push2(&libsolv_solver->solver_jobs, SOLVER_SOLVABLE_NAME
++                        | SOLVER_DISFAVOR, what);
++        }
++
+         /* if the --force-depends option is specified make dependencies weak */
+         if (opkg_config->force_depends)
+             queue_push2(&libsolv_solver->solver_jobs, SOLVER_SOLVABLE
+diff --git a/man/opkg.1.in b/man/opkg.1.in
+index 026fb15..c0d4bf3 100644
+--- a/man/opkg.1.in
++++ b/man/opkg.1.in
+@@ -143,6 +143,9 @@ conjunction with \fB\--dest\fP
+ \fB\--add-arch <\fIarch\fP>:<\fIprio\fP>\fR
+ Register the package architecture \fIarch\fP with the numeric
+ priority \fIprio\fP. Lower priorities take precedence.
++.TP
++\fB\--add-ignore-recommends <\fIname\fP>\fR
++Register package to be ignored as a recomendee
+ .SS FORCE OPTIONS
+ .TP
+ \fB\--force-depends \fR
+diff --git a/src/opkg.c b/src/opkg.c
+index f23467d..5181065 100644
+--- a/src/opkg.c
++++ b/src/opkg.c
+@@ -51,6 +51,7 @@ enum {
+     ARGS_OPT_ADD_DEST,
+     ARGS_OPT_SIZE,
+     ARGS_OPT_ADD_EXCLUDE,
++    ARGS_OPT_ADD_IGNORE_RECOMMENDS,
+     ARGS_OPT_NOACTION,
+     ARGS_OPT_DOWNLOAD_ONLY,
+     ARGS_OPT_NODEPS,
+@@ -110,6 +111,7 @@ static struct option long_options[] = {
+     {"add-dest", 1, 0, ARGS_OPT_ADD_DEST},
+     {"size", 0, 0, ARGS_OPT_SIZE},
+     {"add-exclude", 1, 0, ARGS_OPT_ADD_EXCLUDE},
++    {"add-ignore-recommends", 1, 0, ARGS_OPT_ADD_IGNORE_RECOMMENDS},
+     {"test", 0, 0, ARGS_OPT_NOACTION},
+     {"tmp-dir", 1, 0, 't'},
+     {"tmp_dir", 1, 0, 't'},
+@@ -235,6 +237,9 @@ static int args_parse(int argc, char *argv[])
+         case ARGS_OPT_ADD_EXCLUDE:
+             str_list_append(&opkg_config->exclude_list, optarg);
+             break;
++        case ARGS_OPT_ADD_IGNORE_RECOMMENDS:
++            str_list_append(&opkg_config->ignore_recommends_list, optarg);
++            break;
+         case ARGS_OPT_SIZE:
+             opkg_config->size = 1;
+             break;
+@@ -335,6 +340,7 @@ static void usage()
+     printf("\t--add-arch <arch>:<prio>        Register architecture with given priority\n");
+     printf("\t--add-dest <name>:<path>        Register destination with given path\n");
+     printf("\t--add-exclude <name>            Register package to be excluded from install\n");
++    printf("\t--add-ignore-recommends <name>  Register package to be ignored as a recomendee\n");
+     printf("\t--prefer-arch-to-version        Use the architecture priority package rather\n");
+     printf("\t                                than the higher version one if more\n");
+     printf("\t                                than one candidate is found.\n");
+diff --git a/tests/Makefile b/tests/Makefile
+index 148c844..ddf027f 100644
+--- a/tests/Makefile
++++ b/tests/Makefile
+@@ -38,6 +38,7 @@ REGRESSION_TESTS := core/01_install.py \
+ 		    core/37_globs.py \
+ 		    core/38_install_constrained_version.py \
+ 		    core/39_distupgrade.py \
++		    core/43_add_ignore_recommends.py \
+ 		    regress/issue26.py \
+ 		    regress/issue31.py \
+ 		    regress/issue32.py \
+diff --git a/tests/core/43_add_ignore_recommends.py b/tests/core/43_add_ignore_recommends.py
+new file mode 100644
+index 0000000..7da0096
+--- /dev/null
++++ b/tests/core/43_add_ignore_recommends.py
+@@ -0,0 +1,62 @@
++#! /usr/bin/env python3
++#
++# Create package 'a' (1.0) which Recommends 'c'.
++# Install 'a' with --add-ignore-recommends 'c'.
++# Check that only 'a' (1.0) is installed.
++# Create package 'b' which Depends on 'c'.
++# Install 'a' & 'b', with --add-ignore-recommends 'c'.
++# Verify that 'a','b' & 'c' are installed.
++# Uninstall 'b' & 'c'.
++# Create package 'a' (2.0), which Recommends 'c'.
++# Upgrade 'a' with --add-ignore-recommends 'c'
++# Verify that only 'a' (2.0) is installed
++#
++
++import os
++import opk, cfg, opkgcl
++
++opk.regress_init()
++o = opk.OpkGroup()
++
++o.add(Package='a', Recommends='c', Version='1.0')
++o.add(Package='b', Depends='c')
++o.add(Package='c')
++o.write_opk()
++o.write_list()
++
++opkgcl.update()
++
++opkgcl.install('a', '--add-ignore-recommends c')
++
++if not opkgcl.is_installed('a'):
++	opk.fail("Package 'a' installed but reports as not installed.")
++
++if opkgcl.is_installed('c'):
++	opk.xfail("[libsolv<0.7.3] Package 'c' should not have been installed since it was in --add-ignore-recommends.")
++
++opkgcl.remove('a')
++opkgcl.install('a b', '--add-ignore-recommends c')
++
++if not opkgcl.is_installed('a'):
++	opk.fail("Package 'a' installed but reports as not installed.")
++
++if not opkgcl.is_installed('b'):
++	opk.fail("Package 'b' installed but reports as not installed.")
++
++if not opkgcl.is_installed('c'):
++	opk.fail("Package 'c' should have been installed since 'b' depends on it.")
++
++opkgcl.remove('b c', '--force-depends')
++o.add(Package='a', Recommends='c', Version='2.0')
++o.write_opk()
++o.write_list()
++
++opkgcl.update()
++
++opkgcl.upgrade('a', '--add-ignore-recommends c')
++
++if not opkgcl.is_installed('a', '2.0'):
++	opk.fail("Package 'a (2.0)' installed but reports as not installed.")
++
++if opkgcl.is_installed('c'):
++	opk.fail("Package 'c' should not have been installed since it was in --add-ignore-recommends.")
+-- 
+2.17.1
+
diff --git a/meta/recipes-devtools/opkg/opkg_0.3.6.bb b/meta/recipes-devtools/opkg/opkg_0.3.6.bb
index 6ebd58b967..b26d30b571 100644
--- a/meta/recipes-devtools/opkg/opkg_0.3.6.bb
+++ b/meta/recipes-devtools/opkg/opkg_0.3.6.bb
@@ -15,6 +15,7 @@ SRC_URI = "http://downloads.yoctoproject.org/releases/${BPN}/${BPN}-${PV}.tar.gz
            file://opkg.conf \
            file://0001-opkg_conf-create-opkg.lock-in-run-instead-of-var-run.patch \
            file://0001-remove_maintainer_scripts-use-strict-matching.patch \
+           file://0001-libopkg-add-add-ignore-recommends-option.patch \
 "
 
 SRC_URI[md5sum] = "79e04307f6f54db431c251772d7d987c"
-- 
2.17.1


