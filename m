Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id D57BA4C81231
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 13:01:53 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 27 Jan 2011 11:01:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,387,1291622400"; d="scan'208";a="597095493"
Received: from eflanlinux.jf.intel.com (HELO localhost) ([10.7.201.154])
	by orsmga002.jf.intel.com with ESMTP; 27 Jan 2011 11:01:53 -0800
Message-Id: <08911eecf7f023af410eb904af770aa8d5007ed0.1296154855.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1296154855.git.elizabeth.flanagan@intel.com>
References: <cover.1296154855.git.elizabeth.flanagan@intel.com>
From: Beth Flanagan <elizabeth.flanagan@intel.com>
Old-Date: Wed, 26 Jan 2011 09:56:23 -0800
Date: Thu, 27 Jan 2011 11:03:50 -0800
To: poky@yoctoproject.org
Subject: [License tracking 1/1] Initial commit of license reporting:
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
X-List-Received-Date: Thu, 27 Jan 2011 19:01:54 -0000

This is an intial commit for the license reporting system. A few notes:
The LICENSE fields needs to be standardized throughout poky. As it
stands, we throw a warning if the license file is not found (either
because it does not exist or because LICENSE_FILE_CHKSUM is munged)
in the generic license directory. This should eventually become an
error.

I've seen a few places where Apache-v2.0 is written differently and
I'm sure this will throw the above warning. This does not put the
license data on the rootfs. Also, I provide both the actual license
text and a link to the best guess of the generic_license. That guessing
is not very robust and I'm loath to get into a bunch of pattern matching
rather than standardize LICENSE.

This adds one new param to poky.conf and one new to license.bbclass:

LICENSE_DIR: the base directory we copy all the license results to (set
in license.bbclass)
COMMON_LICENSE_DIR: this is the directory that holds all the common
generic license files. currently meta/files/common-licenses (set in
poky.conf)

TODO:
- We should verify the common-licenses. I stripped these from my Ubuntu
  10.10 system.
- We should allow the capability of licenses on the rootfs, although the
  resulting image created would be a lot larger.
- More common-licenses. I don't include bzip, zlib, ICS.... I should,
  but that means tracking down a lot of licenses.
- General cleanup of licensing and standardization of names. We should
  standardize on a naming convention. What's in licenses.conf should
  match up with what is in the recipes which should match with what is
  in common-licenses. Outside the scope of this though. See:
  http://bugzilla.pokylinux.org/show_bug.cgi?id=650

Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
---
 meta/classes/base.bbclass           |    5 +-
 meta/classes/packagehistory.bbclass |  130 +++++++++++++++++++++++++++++++++++
 2 files changed, 133 insertions(+), 2 deletions(-)

diff --git a/meta/classes/base.bbclass b/meta/classes/base.bbclass
index f1ffb45..d8306af 100644
--- a/meta/classes/base.bbclass
+++ b/meta/classes/base.bbclass
@@ -7,6 +7,7 @@ inherit mirrors
 inherit utils
 inherit utility-tasks
 inherit metadata_scm
+inherit packagehistory
 
 python sys_path_eh () {
     if isinstance(e, bb.event.ConfigParsed):
@@ -293,9 +294,9 @@ python base_eventhandler() {
 	messages["Succeeded"] = "completed"
 	messages["Started"] = "started"
 	messages["Failed"] = "failed"
-
+	
 	name = getName(e)
-	msg = ""
+	msg = "FOO"
 	if name.startswith("Pkg"):
 		msg += "package %s: " % data.getVar("P", e.data, 1)
 		msg += messages.get(name[3:]) or name[3:]
diff --git a/meta/classes/packagehistory.bbclass b/meta/classes/packagehistory.bbclass
index 492bbac..52c94de 100644
--- a/meta/classes/packagehistory.bbclass
+++ b/meta/classes/packagehistory.bbclass
@@ -94,4 +94,134 @@ def write_latestlink(pkg, pe, pv, pr, d):
 	os.symlink(os.path.join(pkghistdir, pkg, pe), os.path.join(pkghistdir, pkg, "latest"))
 	os.symlink(os.path.join(pkghistdir, pkg, pe, pv), os.path.join(pkghistdir, pkg, pe, "latest"))
 	os.symlink(os.path.join(pkghistdir, pkg, pe, pv, pr), os.path.join(pkghistdir, pkg, pe, pv, "latest"))
+def get_process_cputime(pid):
 
+    fields = open("/proc/%d/stat" % pid, "r").readline().rstrip().split()
+
+    # 13: utime, 14: stime, 15: cutime, 16: cstime
+
+    return sum(int(field) for field in fields[13:16])
+
+
+
+def get_cputime():
+
+    fields = open("/proc/stat", "r").readline().rstrip().split()[1:]
+
+    return sum(int(field) for field in fields)
+
+
+
+def set_timedata(var, data):
+
+    import os, time
+
+
+
+    time = time.time()
+
+    cputime = get_cputime()
+
+    proctime = get_process_cputime(os.getpid())
+
+    data.setVar(var, (time, cputime, proctime))
+
+
+
+def get_timedata(var, data):
+
+    import os, time
+
+
+
+    timedata = data.getVar(var, False)
+
+    if timedata is None:
+
+        return
+
+
+
+    oldtime, oldcpu, oldproc = timedata
+
+    procdiff = get_process_cputime(os.getpid()) - oldproc
+
+    cpudiff = get_cputime() - oldcpu
+
+    timediff = time.time() - oldtime
+
+    if cpudiff > 0:
+
+        cpuperc = float(procdiff) * 100 / cpudiff
+
+    else:
+
+        cpuperc = None
+
+
+
+    return timediff, cpuperc
+
+
+
+python time_tasks () {
+
+    from bb.build import TaskStarted, TaskSucceeded, TaskFailed
+
+    from bb.event import BuildStarted, BuildCompleted
+
+
+
+    if isinstance(e, BuildStarted):
+
+        set_timedata("__timedata_build", e.data)
+
+    elif isinstance(e, BuildCompleted):
+
+        timedata = get_timedata("__timedata_build", e.data)
+
+        if not timedata:
+
+            return
+
+        time, cpu = timedata
+
+
+
+        bb.note("Build completion summary:")
+
+        bb.note("Elapsed time: %0.2f seconds" % time)
+
+        if cpu:
+
+            bb.note("CPU usage: %0.1f%%" % cpu)
+
+    elif isinstance(e, TaskStarted):
+
+        set_timedata("__timedata_task", e.data)
+
+    elif isinstance(e, (TaskSucceeded, TaskFailed)):
+
+        timedata = get_timedata("__timedata_task", e.data)
+
+        if not timedata:
+
+            return
+
+        time, cpu = timedata
+
+
+
+        bb.note(bb.data.expand("${PF}: %s: Elapsed time: %0.2f seconds" %
+
+                               (e.task, time), e.data))
+
+        if cpu:
+
+            bb.note(bb.data.expand("${PF}: %s: Cpu usage: %0.1f%%" %
+
+                                   (e.task, cpu), e.data))
+
+}
+
+addhandler time_tasks
-- 
1.7.1


