Return-Path: <richard@tim.rpsys.net>
Received: from smtp.elevenwireless.com (smtp.elevenwireless.com
	[69.48.211.177])
	by mx1.pokylinux.org (Postfix) with ESMTP id D1F504C81217
	for <poky@pokylinux.org>; Mon, 29 Nov 2010 07:01:12 -0600 (CST)
Received: from [216.151.15.131] (helo=rex)
	by smtp.elevenwireless.com with esmtp (Exim 4.63)
	(envelope-from <richard@tim.rpsys.net>) id 1PN3J0-00069Q-V1
	for poky@pokylinux.org; Mon, 29 Nov 2010 04:58:07 -0800
Received: by rex (Postfix, from userid 1000)
	id EA36E2418B; Mon, 29 Nov 2010 05:00:54 -0800 (PST)
Message-Id: <b55ec1a88ad2ec39f40987974644bb10c333ebc7.1291035335.git.rpurdie@linux.intel.com>
In-Reply-To: <cover.1291035335.git.rpurdie@linux.intel.com>
References: <cover.1291035335.git.rpurdie@linux.intel.com>
From: Richard Purdie <rpurdie@linux.intel.com>
Date: Sun, 28 Nov 2010 17:39:09 +0000
To: poky@pokylinux.org
Subject: [PATCH 2/3] bitbake: Overhaul environment handling
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
X-List-Received-Date: Mon, 29 Nov 2010 13:01:13 -0000

Currently, anything whitelisted in the environment makes it into the worker
processes. This is undesireable and the worker environment should be as
clean as possible. This patch adapts bitbake sosme variables are loaded into
bitbake's datastore but not exported by default. Any variable can be exported
by setting its export flag.

Currently, this code only finalises the environment in he worker as doing so
in the server means variables are unavailable in the worker. If we switch
back to fork() calls instead of exec() this code will need revisting.

Signed-off-by: Richard Purdie <rpurdie@linux.intel.com>
---
 bitbake/bin/bitbake-runtask |    3 ++
 bitbake/lib/bb/cooker.py    |    3 +-
 bitbake/lib/bb/data.py      |   10 ++++++++-
 bitbake/lib/bb/runqueue.py  |    1 +
 bitbake/lib/bb/utils.py     |   48 +++++++++++++++++++++++++++++-------------
 5 files changed, 48 insertions(+), 17 deletions(-)

diff --git a/bitbake/bin/bitbake-runtask b/bitbake/bin/bitbake-runtask
index 88101a5..9079f57 100755
--- a/bitbake/bin/bitbake-runtask
+++ b/bitbake/bin/bitbake-runtask
@@ -100,6 +100,9 @@ the_data = cooker.bb_cache.loadDataFull(fn, cooker.get_file_appends(fn), cooker.
 cooker.bb_cache.setData(fn, buildfile, the_data)
 cooker.bb_cache.handle_data(fn, cooker.status)
 
+exportlist = bb.utils.preserved_envvars_export_list()
+bb.utils.filter_environment(exportlist)
+
 if taskname.endswith("_setscene"):
     the_data.setVarFlag(taskname, "quieterrors", "1")
 
diff --git a/bitbake/lib/bb/cooker.py b/bitbake/lib/bb/cooker.py
index 054dac8..3cd358c 100644
--- a/bitbake/lib/bb/cooker.py
+++ b/bitbake/lib/bb/cooker.py
@@ -918,7 +918,8 @@ class BBCooker:
     def pre_serve(self):
         # Empty the environment. The environment will be populated as
         # necessary from the data store.
-        bb.utils.empty_environment()
+        #bb.utils.empty_environment()
+        return
 
     def post_serve(self):
         bb.event.fire(CookerExit(), self.configuration.event_data)
diff --git a/bitbake/lib/bb/data.py b/bitbake/lib/bb/data.py
index fee10cc..d4d43fd 100644
--- a/bitbake/lib/bb/data.py
+++ b/bitbake/lib/bb/data.py
@@ -161,10 +161,12 @@ def expandKeys(alterdata, readdata = None):
 
 def inheritFromOS(d):
     """Inherit variables from the environment."""
+    exportlist = bb.utils.preserved_envvars_export_list()
     for s in os.environ.keys():
         try:
             setVar(s, os.environ[s], d)
-            setVarFlag(s, "export", True, d)
+            if s in exportlist:
+                setVarFlag(s, "export", True, d)
         except TypeError:
             pass
 
@@ -244,6 +246,12 @@ def export_vars(d):
             pass
     return ret
 
+def export_envvars(v, d):
+    for s in os.environ.keys():
+        if s not in v:
+            v[s] = os.environ[s]
+    return v
+
 def emit_func(func, o=sys.__stdout__, d = init()):
     """Emits all items in the data store in a format such that it can be sourced by a shell."""
 
diff --git a/bitbake/lib/bb/runqueue.py b/bitbake/lib/bb/runqueue.py
index 3300db7..e26aa4e 100644
--- a/bitbake/lib/bb/runqueue.py
+++ b/bitbake/lib/bb/runqueue.py
@@ -1062,6 +1062,7 @@ class RunQueueExecute:
             the_data = self.cooker.bb_cache.loadDataFull(fn, self.cooker.get_file_appends(fn), self.cooker.configuration.data)
 
             env = bb.data.export_vars(the_data)
+            env = bb.data.export_envvars(env, the_data)
 
             taskdep = self.rqdata.dataCache.task_deps[fn]
             if 'fakeroot' in taskdep and taskname in taskdep['fakeroot']:
diff --git a/bitbake/lib/bb/utils.py b/bitbake/lib/bb/utils.py
index c2e6ff0..0c315a4 100644
--- a/bitbake/lib/bb/utils.py
+++ b/bitbake/lib/bb/utils.py
@@ -446,13 +446,25 @@ def sha256_file(filename):
         s.update(line)
     return s.hexdigest()
 
-def preserved_envvars_list():
+# Variables which are preserved from the original environment *and* exported
+# into our worker context
+def preserved_envvars_export_list():
     return [
-        'BBPATH',
-        'BB_PRESERVE_ENV',
-        'BB_ENV_WHITELIST',
-        'BB_ENV_EXTRAWHITE',
         'BB_TASKHASH',
+        'HOME',
+        'LOGNAME',
+        'PATH',
+        'PWD',
+        'SHELL',
+        'TERM',
+        'USER',
+        'USERNAME',
+    ]
+
+# Variables which are preserved from the original environment *and* exported
+# into our worker context for interactive tasks (e.g. requiring X)
+def preserved_envvars_export_interactive_list():
+    return [
         'COLORTERM',
         'DBUS_SESSION_BUS_ADDRESS',
         'DESKTOP_SESSION',
@@ -462,23 +474,25 @@ def preserved_envvars_list():
         'GNOME_KEYRING_SOCKET',
         'GPG_AGENT_INFO',
         'GTK_RC_FILES',
-        'HOME',
-        'LANG',
-        'LOGNAME',
-        'PATH',
-        'PWD',
         'SESSION_MANAGER',
-        'SHELL',
         'SSH_AUTH_SOCK',
-        'TERM',
-        'USER',
-        'USERNAME',
-        '_',
         'XAUTHORITY',
         'XDG_DATA_DIRS',
         'XDG_SESSION_COOKIE',
     ]
 
+# Variables which are preserved from the original environment into the datastore
+def preserved_envvars_list():
+    v = [
+        'BBPATH',
+        'BB_PRESERVE_ENV',
+        'BB_ENV_WHITELIST',
+        'BB_ENV_EXTRAWHITE',
+        'LANG',
+        '_',
+    ]
+    return v + preserved_envvars_export_list() + preserved_envvars_export_interactive_list()
+
 def filter_environment(good_vars):
     """
     Create a pristine environment for bitbake. This will remove variables that
@@ -499,6 +513,10 @@ def filter_environment(good_vars):
 
     return removed_vars
 
+def create_intereactive_env(d):
+    for k in preserved_envvars_export_interactive_list():
+        os.setenv(k, bb.data.getVar(k, d, True))
+
 def clean_environment():
     """
     Clean up any spurious environment variables. This will remove any
-- 
1.7.0.4


