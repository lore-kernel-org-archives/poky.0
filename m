Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66D84E01462
	for <poky@yoctoproject.org>; Thu,  6 Dec 2012 21:06:22 -0800 (PST)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 227BC303EF
	for <poky@yoctoproject.org>; Fri,  7 Dec 2012 00:06:14 -0500 (EST)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Thu,  6 Dec 2012 21:05:42 -0800
Message-Id: <2f1766d533712c0739755c71ce4f29e0bfdfbdcd.1354856621.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1354856621.git.scott.a.garman@intel.com>
References: <cover.1354856621.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1354856621.git.scott.a.garman@intel.com>
References: <cover.1354856621.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 227BC303EF.E369C
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 09/18] bitbake: command: add error to return of runCommand
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
X-List-Received-Date: Fri, 07 Dec 2012 05:06:22 -0000

From: Christopher Larson <chris_larson@mentor.com>

Currently, command.py can return an error message from runCommand, due to
being unable to run the command, yet few of our UIs (just hob) can handle it
today. This can result in seeing a TypeError with traceback in certain rare
circumstances.

To resolve this, we need a clean way to get errors back from runCommand,
without having to isinstance() the return value. This implements such a thing
by making runCommand also return an error (or None if no error occurred).

As runCommand now has a method of returning errors, we can also alter the
getCmdLineAction bits such that the returned value is just the action, not an
additional message. If a sync command wants to return an error, it raises
CommandError(message), and the message will be passed to the caller
appropriately.

Example Usage:

    result, error = server.runCommand(...)
    if error:
        log.error('Unable to run command: %s' % error)
        return 1

(Bitbake rev: 717831b8315cb3904d9b590e633000bc897e8fb6)

Signed-off-by: Christopher Larson <chris_larson@mentor.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 bitbake/lib/bb/command.py                   |   43 +++++++++++++++----------
 bitbake/lib/bb/server/process.py            |    2 +-
 bitbake/lib/bb/ui/crumbs/hobeventhandler.py |    5 ++-
 bitbake/lib/bb/ui/depexp.py                 |   38 ++++++++++++++--------
 bitbake/lib/bb/ui/goggle.py                 |   17 +++++-----
 bitbake/lib/bb/ui/knotty.py                 |   45 ++++++++++++++++++---------
 bitbake/lib/bb/ui/ncurses.py                |   21 ++++++++-----
 7 files changed, 112 insertions(+), 59 deletions(-)

diff --git a/bitbake/lib/bb/command.py b/bitbake/lib/bb/command.py
index fd8912a..00b854e 100644
--- a/bitbake/lib/bb/command.py
+++ b/bitbake/lib/bb/command.py
@@ -44,6 +44,9 @@ class CommandFailed(CommandExit):
         self.error = message
         CommandExit.__init__(self, 1)
 
+class CommandError(Exception):
+    pass
+
 class Command:
     """
     A queue of asynchronous commands for bitbake
@@ -57,21 +60,25 @@ class Command:
         self.currentAsyncCommand = None
 
     def runCommand(self, commandline):
-        try:
-            command = commandline.pop(0)
-            if command in CommandsSync.__dict__:
-                # Can run synchronous commands straight away
-                return getattr(CommandsSync, command)(self.cmds_sync, self, commandline)
-            if self.currentAsyncCommand is not None:
-                return "Busy (%s in progress)" % self.currentAsyncCommand[0]
-            if command not in CommandsAsync.__dict__:
-                return "No such command"
-            self.currentAsyncCommand = (command, commandline)
-            self.cooker.server_registration_cb(self.cooker.runCommands, self.cooker)
-            return True
-        except:
-            import traceback
-            return traceback.format_exc()
+        command = commandline.pop(0)
+        if hasattr(CommandsSync, command):
+            # Can run synchronous commands straight away
+            command_method = getattr(self.cmds_sync, command)
+            try:
+                result = command_method(self, commandline)
+            except CommandError as exc:
+                return None, exc.args[0]
+            except Exception:
+                return None, traceback.format_exc()
+            else:
+                return result, None
+        if self.currentAsyncCommand is not None:
+            return None, "Busy (%s in progress)" % self.currentAsyncCommand[0]
+        if command not in CommandsAsync.__dict__:
+            return None, "No such command"
+        self.currentAsyncCommand = (command, commandline)
+        self.cooker.server_registration_cb(self.cooker.runCommands, self.cooker)
+        return True, None
 
     def runAsyncCommand(self):
         try:
@@ -139,7 +146,11 @@ class CommandsSync:
         """
         Get any command parsed from the commandline
         """
-        return command.cooker.commandlineAction
+        cmd_action = command.cooker.commandlineAction
+        if cmd_action['msg']:
+            raise CommandError(msg)
+        else:
+            return cmd_action['action']
 
     def getVariable(self, command, params):
         """
diff --git a/bitbake/lib/bb/server/process.py b/bitbake/lib/bb/server/process.py
index ba91336..3ae9ede 100644
--- a/bitbake/lib/bb/server/process.py
+++ b/bitbake/lib/bb/server/process.py
@@ -48,7 +48,7 @@ class ServerCommunicator():
                 if self.connection.poll(.5):
                     return self.connection.recv()
                 else:
-                    return None
+                    return None, "Timeout while attempting to communicate with bitbake server"
             except KeyboardInterrupt:
                 pass
 
diff --git a/bitbake/lib/bb/ui/crumbs/hobeventhandler.py b/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
index 52acec1..21bea23 100644
--- a/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
+++ b/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
@@ -102,7 +102,10 @@ class HobHandler(gobject.GObject):
 
     def runCommand(self, commandline):
         try:
-            return self.server.runCommand(commandline)
+            result, error = self.server.runCommand(commandline)
+            if error:
+                raise Exception("Error running command '%s': %s" % (commandline, error))
+            return result
         except Exception as e:
             self.commands_async = []
             self.clear_busy()
diff --git a/bitbake/lib/bb/ui/depexp.py b/bitbake/lib/bb/ui/depexp.py
index b62adbf..1254128 100644
--- a/bitbake/lib/bb/ui/depexp.py
+++ b/bitbake/lib/bb/ui/depexp.py
@@ -198,17 +198,23 @@ class gtkthread(threading.Thread):
 
 def main(server, eventHandler):
     try:
-        cmdline = server.runCommand(["getCmdLineAction"])
-        if cmdline and not cmdline['action']:
-            print(cmdline['msg'])
-            return
-        elif not cmdline or (cmdline['action'] and cmdline['action'][0] != "generateDotGraph"):
+        cmdline, error = server.runCommand(["getCmdLineAction"])
+        if error:
+            print("Error getting bitbake commandline: %s" % error)
+            return 1
+        elif not cmdline:
+            print("Nothing to do.  Use 'bitbake world' to build everything, or run 'bitbake --help' for usage information.")
+            return 1
+        elif not cmdline or cmdline[0] != "generateDotGraph":
             print("This UI is only compatible with the -g option")
-            return
-        ret = server.runCommand(["generateDepTreeEvent", cmdline['action'][1], cmdline['action'][2]])
-        if ret != True:
-            print("Couldn't run command! %s" % ret)
-            return
+            return 1
+        ret, error = server.runCommand(["generateDepTreeEvent", cmdline[1], cmdline[2]])
+        if error:
+            print("Error running command '%s': %s" % (cmdline, error))
+            return 1
+        elif ret != True:
+            print("Error running command '%s': returned %s" % (cmdline, ret))
+            return 1
     except xmlrpclib.Fault as x:
         print("XMLRPC Fault getting commandline:\n %s" % x)
         return
@@ -229,7 +235,9 @@ def main(server, eventHandler):
         try:
             event = eventHandler.waitEvent(0.25)
             if gtkthread.quit.isSet():
-                server.runCommand(["stateStop"])
+                _, error = server.runCommand(["stateStop"])
+                if error:
+                    print('Unable to cleanly stop: %s' % error)
                 break
 
             if event is None:
@@ -302,9 +310,13 @@ def main(server, eventHandler):
                 break
             if shutdown == 1:
                 print("\nSecond Keyboard Interrupt, stopping...\n")
-                server.runCommand(["stateStop"])
+                _, error = server.runCommand(["stateStop"])
+                if error:
+                    print('Unable to cleanly stop: %s' % error)
             if shutdown == 0:
                 print("\nKeyboard Interrupt, closing down...\n")
-                server.runCommand(["stateShutdown"])
+                _, error = server.runCommand(["stateShutdown"])
+                if error:
+                    print('Unable to cleanly shutdown: %s' % error)
             shutdown = shutdown + 1
             pass
diff --git a/bitbake/lib/bb/ui/goggle.py b/bitbake/lib/bb/ui/goggle.py
index b2fd274..c0785b7 100644
--- a/bitbake/lib/bb/ui/goggle.py
+++ b/bitbake/lib/bb/ui/goggle.py
@@ -80,16 +80,19 @@ def main (server, eventHandler):
     running_build.connect ("build-failed", running_build_failed_cb)
 
     try:
-        cmdline = server.runCommand(["getCmdLineAction"])
-        if not cmdline:
+        cmdline, error = server.runCommand(["getCmdLineAction"])
+        if err:
+            print("Error getting bitbake commandline: %s" % error)
+            return 1
+        elif not cmdline:
             print("Nothing to do.  Use 'bitbake world' to build everything, or run 'bitbake --help' for usage information.")
             return 1
-        elif not cmdline['action']:
-            print(cmdline['msg'])
+        ret, error = server.runCommand(cmdline)
+        if error:
+            print("Error running command '%s': %s" % (cmdline, error))
             return 1
-        ret = server.runCommand(cmdline['action'])
-        if ret != True:
-            print("Couldn't get default commandline! %s" % ret)
+        elif ret != True:
+            print("Error running command '%s': returned %s" % (cmdline, ret))
             return 1
     except xmlrpclib.Fault as x:
         print("XMLRPC Fault getting commandline:\n %s" % x)
diff --git a/bitbake/lib/bb/ui/knotty.py b/bitbake/lib/bb/ui/knotty.py
index 0167416..439a792 100644
--- a/bitbake/lib/bb/ui/knotty.py
+++ b/bitbake/lib/bb/ui/knotty.py
@@ -107,9 +107,18 @@ class TerminalFilter(object):
 def main(server, eventHandler, tf = TerminalFilter):
 
     # Get values of variables which control our output
-    includelogs = server.runCommand(["getVariable", "BBINCLUDELOGS"])
-    loglines = server.runCommand(["getVariable", "BBINCLUDELOGS_LINES"])
-    consolelogfile = server.runCommand(["getVariable", "BB_CONSOLELOG"])
+    includelogs, error = server.runCommand(["getVariable", "BBINCLUDELOGS"])
+    if error:
+        logger.error("Unable to get the value of BBINCLUDELOGS variable: %s" % error)
+        return 1
+    loglines, error = server.runCommand(["getVariable", "BBINCLUDELOGS_LINES"])
+    if error:
+        logger.error("Unable to get the value of BBINCLUDELOGS_LINES variable: %s" % error)
+        return 1
+    consolelogfile, error = server.runCommand(["getVariable", "BB_CONSOLELOG"])
+    if error:
+        logger.error("Unable to get the value of BB_CONSOLELOG variable: %s" % error)
+        return 1
 
     helper = uihelper.BBUIHelper()
 
@@ -125,19 +134,22 @@ def main(server, eventHandler, tf = TerminalFilter):
         logger.addHandler(consolelog)
 
     try:
-        cmdline = server.runCommand(["getCmdLineAction"])
-        if not cmdline:
+        cmdline, error = server.runCommand(["getCmdLineAction"])
+        if error:
+            logger.error("Unable to get bitbake commandline arguments: %s" % error)
+            return 1
+        elif not cmdline:
             print("Nothing to do.  Use 'bitbake world' to build everything, or run 'bitbake --help' for usage information.")
             return 1
-        elif not cmdline['action']:
-            print(cmdline['msg'])
+        ret, error = server.runCommand(cmdline)
+        if error:
+            logger.error("Command '%s' failed: %s" % (cmdline, error))
             return 1
-        ret = server.runCommand(cmdline['action'])
-        if ret != True:
-            print("Couldn't get default commandline! %s" % ret)
+        elif ret != True:
+            logger.error("Command '%s' failed: returned %s" % (cmdline, ret))
             return 1
     except xmlrpclib.Fault as x:
-        print("XMLRPC Fault getting commandline:\n %s" % x)
+        logger.error("XMLRPC Fault getting commandline:\n %s" % x)
         return 1
 
     parseprogress = None
@@ -318,14 +330,19 @@ def main(server, eventHandler, tf = TerminalFilter):
             if ioerror.args[0] == 4:
                 pass
         except KeyboardInterrupt:
+            import time
             termfilter.clearFooter()
             if main.shutdown == 1:
                 print("\nSecond Keyboard Interrupt, stopping...\n")
-                server.runCommand(["stateStop"])
+                _, error = server.runCommand(["stateStop"])
+                if error:
+                    logger.error("Unable to cleanly stop: %s" % error)
             if main.shutdown == 0:
-                interrupted = True
                 print("\nKeyboard Interrupt, closing down...\n")
-                server.runCommand(["stateShutdown"])
+                interrupted = True
+                _, error = server.runCommand(["stateShutdown"])
+                if error:
+                    logger.error("Unable to cleanly shutdown: %s" % error)
             main.shutdown = main.shutdown + 1
             pass
 
diff --git a/bitbake/lib/bb/ui/ncurses.py b/bitbake/lib/bb/ui/ncurses.py
index 8524446..896ed01 100644
--- a/bitbake/lib/bb/ui/ncurses.py
+++ b/bitbake/lib/bb/ui/ncurses.py
@@ -230,15 +230,18 @@ class NCursesUI:
         shutdown = 0
 
         try:
-            cmdline = server.runCommand(["getCmdLineAction"])
+            cmdline, error = server.runCommand(["getCmdLineAction"])
             if not cmdline:
                 print("Nothing to do.  Use 'bitbake world' to build everything, or run 'bitbake --help' for usage information.")
                 return
-            elif not cmdline['action']:
-                print(cmdline['msg'])
+            elif error:
+                print("Error getting bitbake commandline: %s" % error)
                 return
-            ret = server.runCommand(cmdline['action'])
-            if ret != True:
+            ret, error = server.runCommand(cmdline)
+            if error:
+                print("Error running command '%s': %s" % (cmdline, error))
+                return
+            elif ret != True:
                 print("Couldn't get default commandlind! %s" % ret)
                 return
         except xmlrpclib.Fault as x:
@@ -337,10 +340,14 @@ class NCursesUI:
                     exitflag = True
                 if shutdown == 1:
                     mw.appendText("Second Keyboard Interrupt, stopping...\n")
-                    server.runCommand(["stateStop"])
+                    _, error = server.runCommand(["stateStop"])
+                    if error:
+                        print("Unable to cleanly stop: %s" % error)
                 if shutdown == 0:
                     mw.appendText("Keyboard Interrupt, closing down...\n")
-                    server.runCommand(["stateShutdown"])
+                    _, error = server.runCommand(["stateShutdown"])
+                    if error:
+                        print("Unable to cleanly shutdown: %s" % error)
                 shutdown = shutdown + 1
                 pass
 
-- 
1.7.9.5


