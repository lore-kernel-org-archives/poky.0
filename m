Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.15330.1581449527811643651
 for <poky@lists.yoctoproject.org>;
 Tue, 11 Feb 2020 11:32:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=kehalPbB;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 140.211.169.56, mailfrom: jdmason@kudzu.us)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 065AEE01724; Tue, 11 Feb 2020 11:32:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f194.google.com (mail-il1-f194.google.com [209.85.166.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C2B1E003E1
	for <poky@yoctoproject.org>; Tue, 11 Feb 2020 11:32:05 -0800 (PST)
Received: by mail-il1-f194.google.com with SMTP id s18so4501699iln.0
        for <poky@yoctoproject.org>; Tue, 11 Feb 2020 11:32:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=TGf7yPxr5tM26BT5DHs119HEeC1IMbr443j1G+zZoOI=;
        b=kehalPbBbp4v7DNnb6MiHxPsS8O798tYNKam3w+5qjM3004Wc0Kye+1Il/KWGaDtyf
         LSycbbao8Xkz/Wjq5/+ojstHwYS4d4HuiZk0eRfM53WmTdKBgVm1myZQejCLG/hQM1i9
         i8HhQTFkcWo1BWxtJ0ppTwORKFcNGXdz/Pdi2lKf1F2el1NmsE1C6IlLb1NAmYBVUceJ
         fXOmQGResr3LPCJ3U8wvLvRjPQ/ad4r/YDClU9REv3inaOJon4X2i8g1Xs/Gux5XR3rw
         jODv6FfL9AMzcOaYutJ5g8MdzpA/h0YQYaQM0UL7w92ouswLPmu5ZnZuYqEkZ2MkOsdC
         O5tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=TGf7yPxr5tM26BT5DHs119HEeC1IMbr443j1G+zZoOI=;
        b=nAOwKToPHX/FeI/1hl4Tg77B9cZpbRh+dY2r9BA7nzo+rl/tWviwYxvKpemVT148Pb
         bzfYFK8qyxoEpMLzDUJceA9yb6ATp9HwwCy2K/AQqjzRR3xAL8ylZrFPpCZBrn4T38rG
         2291hvACdKLls9VUgreFkpAv6xV/Kdj9xou2p7ogDjwStGyv5ohLfV8l+jB4oqCchwWm
         6qeMaJPxC4Mx2j+L1mz7rVE3xI05ei3JBWjovnd0a4tplZxr4nQ5+m6WJkPDSiT0AXwo
         6vp5juHE3X0sK0kBNaVo1D0pUEEQTcwWQ4N8g1xqeGm8aZwwUUEvir5O+4V2NvgBnLmz
         4KnA==
X-Gm-Message-State: APjAAAVX30kb+zFX4UfzAcDaZRbEXjCmVrpTOsgc/zx0BT43oO+3aX44
	17TzU9A5fg/vW125VwRFH00/wB8CsRmTMWsjMLv0IdD9lgTktQ==
X-Google-Smtp-Source: APXvYqyyZz65e5ymdgRIg3AaKVi9lX0Rh1QsXKwozgXbDk+BQ7WhyftcJZ1WSKfHlQf56D0JF8gqaUVOIkGgpOasWXg=
X-Received: by 2002:a92:1553:: with SMTP id v80mr8074438ilk.49.1581449524433;
 Tue, 11 Feb 2020 11:32:04 -0800 (PST)
MIME-Version: 1.0
From: "Jon Mason" <jdmason@kudzu.us>
Date: Tue, 11 Feb 2020 14:31:53 -0500
Message-ID: <CAPoiz9z_CX0A0vii6w8d+D+csgF3eoxweTF-gkvx58te+6hx5w@mail.gmail.com>
Subject: testimage gcc error
To: poky@yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

I'm seeing multiple "Command not found" errors when I run the
testimage command on zeus with GCC added.  I'm sure others are testing
this and not seeing an issue.  So, please let me know what I'm doing
wrong.

My only configuration was to add to local.conf (aside from SSTATE_DIR
and DL_DIR) is:
INHERIT += "testimage"
IMAGE_INSTALL_append = " autoconf make gcc "


$ bitbake core-image-sato -c testimage
Loading cache: 100%
|###############################################################################################################################################################################|
Time: 0:00:00
Loaded 1298 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           = "1.44.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "universal"
TARGET_SYS           = "x86_64-poky-linux"
MACHINE              = "qemux86-64"
DISTRO               = "poky"
DISTRO_VERSION       = "3.0"
TUNE_FEATURES        = "m64 core2"
TARGET_FPU           = ""
meta
meta-poky
meta-yocto-bsp       = "zeus:72e9458dba230e4072f4a75bf3c12a88c8f64969"

Initialising tasks: 100%
|##########################################################################################################################################################################|
Time: 0:00:00
Sstate summary: Wanted 0 Found 0 Missed 0 Current 90 (0% match, 100% complete)
NOTE: Executing Tasks
NOTE: Setscene tasks completed
Not starting HTTPService for directory tmp/deploy/deb/all which doesn't exist
Test requires apt to be installed
Stopped HTTPService on 192.168.7.3:0
Traceback (most recent call last):
  File "/home/jdm/yocto/poky/meta/lib/oeqa/core/decorator/__init__.py",
line 36, in wrapped_f
    return func(*args, **kwargs)
  File "/home/jdm/yocto/poky/meta/lib/oeqa/core/decorator/__init__.py",
line 36, in wrapped_f
    return func(*args, **kwargs)
  File "/home/jdm/yocto/poky/meta/lib/oeqa/core/decorator/__init__.py",
line 36, in wrapped_f
    return func(*args, **kwargs)
  [Previous line repeated 1 more time]
  File "/home/jdm/yocto/poky/meta/lib/oeqa/runtime/cases/buildcpio.py",
line 30, in test_cpio
    self.project.run_configure()
  File "/home/jdm/yocto/poky/meta/lib/oeqa/utils/buildproject.py",
line 51, in run_configure
    return self._run('cd %s; gnu-configize; %s ./configure %s' %
(self.targetdir, extra_cmds, configure_args))
  File "/home/jdm/yocto/poky/meta/lib/oeqa/runtime/utils/targetbuildproject.py",
line 43, in _run
    raise Exception(msg)
Exception: Command cd ~/buildtest/cpio-2.12; gnu-configize;
./configure  failed with exit code 1: checking for a BSD-compatible
install... build-aux/install-sh -c
checking whether build environment is sane... yes
checking for a thread-safe mkdir -p... build-aux/install-sh -c -d
checking for gawk... no
checking for mawk... no
checking for nawk... no
checking for awk... awk
checking whether make sets $(MAKE)... yes
checking whether make supports nested variables... yes
checking whether UID '0' is supported by ustar format... yes
checking whether GID '0' is supported by ustar format... yes
checking how to create a ustar tar archive... plaintar
checking whether make supports nested variables... (cached) yes
checking for gcc... no
checking for cc... no
checking for cl.exe... no
configure: error: in `/home/root/buildtest/cpio-2.12':
configure: error: no acceptable C compiler found in $PATH
See `config.log' for more details

Test requires gtk+3 to be installed
Traceback (most recent call last):
  File "/home/jdm/yocto/poky/meta/lib/oeqa/core/decorator/__init__.py",
line 36, in wrapped_f
    return func(*args, **kwargs)
  File "/home/jdm/yocto/poky/meta/lib/oeqa/core/decorator/__init__.py",
line 36, in wrapped_f
    return func(*args, **kwargs)
  File "/home/jdm/yocto/poky/meta/lib/oeqa/core/decorator/__init__.py",
line 36, in wrapped_f
    return func(*args, **kwargs)
  [Previous line repeated 1 more time]
  File "/home/jdm/yocto/poky/meta/lib/oeqa/runtime/cases/buildlzip.py",
line 32, in test_lzip
    self.project.run_make()
  File "/home/jdm/yocto/poky/meta/lib/oeqa/utils/buildproject.py",
line 54, in run_make
    return self._run('cd %s; make %s' % (self.targetdir, make_args))
  File "/home/jdm/yocto/poky/meta/lib/oeqa/runtime/utils/targetbuildproject.py",
line 43, in _run
    raise Exception(msg)
Exception: Command cd ~/buildtest/lzip-1.19; make  failed with exit
code 2: c++  -O2 -c -o arg_parser.o arg_parser.cc
make: c++: Command not found
make: *** [Makefile:50: arg_parser.o] Error 127

Started HTTPService on 192.168.7.3:44469
Test run when enable usrmege
Stopped HTTPService on 192.168.7.3:44469
Traceback (most recent call last):
  File "/home/jdm/yocto/poky/meta/lib/oeqa/core/decorator/__init__.py",
line 36, in wrapped_f
    return func(*args, **kwargs)
  File "/home/jdm/yocto/poky/meta/lib/oeqa/core/decorator/__init__.py",
line 36, in wrapped_f
    return func(*args, **kwargs)
  File "/home/jdm/yocto/poky/meta/lib/oeqa/runtime/cases/gcc.py", line
35, in test_gcc_compile
    self.assertEqual(status, 0, msg=msg)
AssertionError: 127 != 0 : gcc compile failed, output: sh: gcc:
command not found

Test requires g++ to be installed
Test requires g++ to be installed
Traceback (most recent call last):
  File "/home/jdm/yocto/poky/meta/lib/oeqa/core/decorator/__init__.py",
line 36, in wrapped_f
    return func(*args, **kwargs)
  File "/home/jdm/yocto/poky/meta/lib/oeqa/core/decorator/__init__.py",
line 36, in wrapped_f
    return func(*args, **kwargs)
  File "/home/jdm/yocto/poky/meta/lib/oeqa/core/decorator/__init__.py",
line 36, in wrapped_f
    return func(*args, **kwargs)
  File "/home/jdm/yocto/poky/meta/lib/oeqa/runtime/cases/gcc.py", line
69, in test_make
    self.assertEqual(status, 0, msg=msg)
AssertionError: 2 != 0 : running make failed, output gcc -c test.c
make: gcc: Command not found
make: *** [testmakefile:4: test.o] Error 127

Test requires python3-pygobject to be installed
Test requires kernel-devsrc to be installed
Test requires ldd to be installed
Test requires logrotate to be installed
Test case logrotate.LogrotateTest.test_2_logrotate depends on
logrotate.LogrotateTest.test_1_logrotate_setup but it didn't pass/run.
Test requires opkg to be installed
Test requires pam to be in DISTRO_FEATURES
Test requires ptest-runner to be installed
Test requires systemtap to be installed
systemd is not the init manager for this image
Test case systemd.SystemdBasicTests.test_systemd_failed depends on
systemd.SystemdBasicTests.test_systemd_basic but it didn't pass/run.
Test case systemd.SystemdBasicTests.test_systemd_list depends on
systemd.SystemdBasicTests.test_systemd_basic but it didn't pass/run.
Test case systemd.SystemdJournalTests.test_systemd_boot_time depends
on systemd.SystemdBasicTests.test_systemd_basic but it didn't
pass/run.
Test case systemd.SystemdJournalTests.test_systemd_journal depends on
systemd.SystemdBasicTests.test_systemd_basic but it didn't pass/run.
Test case systemd.SystemdServiceTests.test_systemd_status depends on
systemd.SystemdBasicTests.test_systemd_basic but it didn't pass/run.
Test case systemd.SystemdServiceTests.test_systemd_disable_enable
depends on systemd.SystemdServiceTests.test_systemd_status but it
didn't pass/run.
Test case systemd.SystemdServiceTests.test_systemd_stop_start depends
on systemd.SystemdServiceTests.test_systemd_status but it didn't
pass/run.
RESULTS:
RESULTS - connman.ConnmanTest.test_connmand_help: PASSED (0.19s)
RESULTS - connman.ConnmanTest.test_connmand_running: PASSED (0.22s)
RESULTS - date.DateTest.test_date: PASSED (0.56s)
RESULTS - df.DfTest.test_df: PASSED (0.20s)
RESULTS - dnf.DnfBasicTest.test_dnf_help: PASSED (4.21s)
RESULTS - dnf.DnfBasicTest.test_dnf_history: PASSED (3.05s)
RESULTS - dnf.DnfBasicTest.test_dnf_info: PASSED (2.96s)
RESULTS - dnf.DnfBasicTest.test_dnf_search: PASSED (2.63s)
RESULTS - dnf.DnfBasicTest.test_dnf_version: PASSED (2.48s)
RESULTS - dnf.DnfRepoTest.test_dnf_exclude: PASSED (35.84s)
RESULTS - dnf.DnfRepoTest.test_dnf_install: PASSED (6.81s)
RESULTS - dnf.DnfRepoTest.test_dnf_install_dependency: PASSED (9.82s)
RESULTS - dnf.DnfRepoTest.test_dnf_install_from_disk: PASSED (13.23s)
RESULTS - dnf.DnfRepoTest.test_dnf_install_from_http: PASSED (10.10s)
RESULTS - dnf.DnfRepoTest.test_dnf_installroot: PASSED (108.55s)
RESULTS - dnf.DnfRepoTest.test_dnf_makecache: PASSED (3.16s)
RESULTS - dnf.DnfRepoTest.test_dnf_reinstall: PASSED (3.99s)
RESULTS - dnf.DnfRepoTest.test_dnf_repoinfo: PASSED (2.86s)
RESULTS - oe_syslog.SyslogTest.test_syslog_running: PASSED (0.20s)
RESULTS - oe_syslog.SyslogTestConfig.test_syslog_logger: PASSED (1.33s)
RESULTS - oe_syslog.SyslogTestConfig.test_syslog_restart: PASSED (2.05s)
RESULTS - oe_syslog.SyslogTestConfig.test_syslog_startup_config: PASSED (4.88s)
RESULTS - parselogs.ParseLogsTest.test_parselogs: PASSED (2.69s)
RESULTS - perl.PerlTest.test_perl_works: PASSED (0.19s)
RESULTS - ping.PingTest.test_ping: PASSED (0.04s)
RESULTS - python.PythonTest.test_python3: PASSED (0.54s)
RESULTS - rpm.RpmBasicTest.test_rpm_help: PASSED (0.28s)
RESULTS - rpm.RpmBasicTest.test_rpm_query: PASSED (0.48s)
RESULTS - rpm.RpmBasicTest.test_rpm_query_nonroot: PASSED (2.69s)
RESULTS - rpm.RpmInstallRemoveTest.test_check_rpm_install_removal_log_file_size:
PASSED (15.50s)
RESULTS - rpm.RpmInstallRemoveTest.test_rpm_install: PASSED (1.15s)
RESULTS - rpm.RpmInstallRemoveTest.test_rpm_remove: PASSED (0.72s)
RESULTS - scp.ScpTest.test_scp_file: PASSED (1.07s)
RESULTS - ssh.SSHTest.test_ssh: PASSED (1.13s)
RESULTS - xorg.XorgTest.test_xorg_running: PASSED (0.45s)
RESULTS - apt.AptRepoTest.test_apt_install_from_repo: SKIPPED (0.00s)
RESULTS - buildgalculator.GalculatorTest.test_galculator: SKIPPED (0.00s)
RESULTS - dnf.DnfRepoTest.test_dnf_installroot_usrmerge: SKIPPED (0.00s)
RESULTS - gcc.GccCompileTest.test_gpp2_compile: SKIPPED (0.00s)
RESULTS - gcc.GccCompileTest.test_gpp_compile: SKIPPED (0.00s)
RESULTS - gi.GObjectIntrospectionTest.test_python: SKIPPED (0.00s)
RESULTS - kernelmodule.KernelModuleTest.test_kernel_module: SKIPPED (0.00s)
RESULTS - ldd.LddTest.test_ldd: SKIPPED (0.00s)
RESULTS - logrotate.LogrotateTest.test_1_logrotate_setup: SKIPPED (0.00s)
RESULTS - logrotate.LogrotateTest.test_2_logrotate: SKIPPED (0.00s)
RESULTS - opkg.OpkgRepoTest.test_opkg_install_from_repo: SKIPPED (0.00s)
RESULTS - pam.PamBasicTest.test_pam: SKIPPED (0.00s)
RESULTS - ptest.PtestRunnerTest.test_ptestrunner: SKIPPED (0.00s)
RESULTS - stap.StapTest.test_stap: SKIPPED (0.00s)
RESULTS - systemd.SystemdBasicTests.test_systemd_basic: SKIPPED (0.00s)
RESULTS - systemd.SystemdBasicTests.test_systemd_failed: SKIPPED (0.00s)
RESULTS - systemd.SystemdBasicTests.test_systemd_list: SKIPPED (0.00s)
RESULTS - systemd.SystemdJournalTests.test_systemd_boot_time: SKIPPED (0.00s)
RESULTS - systemd.SystemdJournalTests.test_systemd_journal: SKIPPED (0.00s)
RESULTS - systemd.SystemdServiceTests.test_systemd_disable_enable:
SKIPPED (0.00s)
RESULTS - systemd.SystemdServiceTests.test_systemd_status: SKIPPED (0.00s)
RESULTS - systemd.SystemdServiceTests.test_systemd_stop_start: SKIPPED (0.00s)
RESULTS - buildcpio.BuildCpioTest.test_cpio: ERROR (20.00s)
RESULTS - buildlzip.BuildLzipTest.test_lzip: ERROR (2.22s)
RESULTS - gcc.GccCompileTest.test_gcc_compile: FAILED (0.70s)
RESULTS - gcc.GccCompileTest.test_make: FAILED (0.90s)
SUMMARY:
core-image-sato () - Ran 61 tests in 271.166s
core-image-sato - FAIL - Required tests failed (successes=35,
skipped=22, failures=2, errors=2)
ERROR: core-image-sato-1.0-r0 do_testimage: core-image-sato - FAILED -
check the task log and the ssh log
ERROR: Logfile of failure stored in:
/home/jdm/yocto/poky/build/tmp/work/qemux86_64-poky-linux/core-image-sato/1.0-r0/temp/log.do_testimage.28534
ERROR: Task (/home/jdm/yocto/poky/meta/recipes-sato/images/core-image-sato.bb:do_testimage)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 731 tasks of which 730 didn't need to
be rerun and 1 failed.

Summary: 1 task failed:
  /home/jdm/yocto/poky/meta/recipes-sato/images/core-image-sato.bb:do_testimage
Summary: There was 1 ERROR message shown, returning a non-zero exit code.
