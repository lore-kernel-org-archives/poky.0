Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6498AE00294
	for <poky@yoctoproject.org>; Thu, 29 Nov 2012 18:56:06 -0800 (PST)
Received: from mail-pa0-f72.google.com ([209.85.220.72])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 29 Nov 2012 18:55:22 -0800
Received: by mail-pa0-f72.google.com with SMTP id fb10so22054pad.11
	for <poky@yoctoproject.org>; Thu, 29 Nov 2012 18:56:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=Uih+GsTSgMq7+WqQKFtzaCiaFeul7fHIgE7WcrKfaoY=;
	b=WgytDjYfty3W8lK1/3ijoAW7DsE9aQbcH6CVb6HoXV+EwWCZni+bQTHIFywtOX/cOg
	EVaCBabsDBoEBMx0XA+3OH2K2aRTsej7ig1bo2MdxIaWhx/L6jD69Xv3RgV+NCs9OTw3
	s4cYESlBehn4aKmP39TPb51rhs9hZehMgxhxUDN2PppwfyGtcll8DGeNp+4NvchN5b/2
	TvR+bc9qnTrot12ns98AZfYVCd0xZVmJ+ijDirZs28sFAuvEStzYNv3bDztpJ+xFp2eY
	GG2eNaKB79tG/YT4nMsVRWRpt+TiiY4lhAxyNp/As8pgluhL9hbMvznaYlczxoMB5ObB
	SfJg==
Received: by 10.68.232.71 with SMTP id tm7mr1511330pbc.118.1354244165389;
	Thu, 29 Nov 2012 18:56:05 -0800 (PST)
Received: by 10.68.232.71 with SMTP id tm7mr1511320pbc.118.1354244165253;
	Thu, 29 Nov 2012 18:56:05 -0800 (PST)
Received: from [192.168.1.104] (c-76-105-137-48.hsd1.or.comcast.net.
	[76.105.137.48])
	by mx.google.com with ESMTPS id nf9sm2212150pbc.17.2012.11.29.18.56.03
	(version=SSLv3 cipher=OTHER); Thu, 29 Nov 2012 18:56:04 -0800 (PST)
Message-ID: <50B82042.70403@intel.com>
Date: Thu, 29 Nov 2012 18:56:02 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <1351793763-5317-1-git-send-email-msm@freescale.com>
In-Reply-To: <1351793763-5317-1-git-send-email-msm@freescale.com>
X-Gm-Message-State: ALoCoQlmxXcl/AWW3Lp/UlEsclZaENtdhzZXtLKp3I5ZcLGUwI17eHSQoZwwNfDfMeXdJR1cUIfoJzaR/oAGiSSdE59YsP584GT2m/HFoVB8RNyudqiCC0e10MkrmKhHphfCMolCqTN0JNPdAXdDmKslLej7imeqeg==
Subject: Re: [for-denzil] bitbake: command: add error to return of runCommand
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
X-List-Received-Date: Fri, 30 Nov 2012 02:56:06 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/01/2012 11:16 AM, Matthew McClintock wrote:
> From: Christopher Larson <chris_larson@mentor.com>
>
> Currently, command.py can return an error message from runCommand, due to
> being unable to run the command, yet few of our UIs (just hob) can handle it
> today. This can result in seeing a TypeError with traceback in certain rare
> circumstances.
>
> To resolve this, we need a clean way to get errors back from runCommand,
> without having to isinstance() the return value. This implements such a thing
> by making runCommand also return an error (or None if no error occurred).
>
> As runCommand now has a method of returning errors, we can also alter the
> getCmdLineAction bits such that the returned value is just the action, not an
> additional message. If a sync command wants to return an error, it raises
> CommandError(message), and the message will be passed to the caller
> appropriately.
>
> Example Usage:
>
>      result, error = server.runCommand(...)
>      if error:
>          log.error('Unable to run command: %s' % error)
>          return 1
>
> (Bitbake rev: 717831b8315cb3904d9b590e633000bc897e8fb6)
>
> Signed-off-by: Christopher Larson <chris_larson@mentor.com>
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
>   bitbake/lib/bb/command.py                   |   43 +++++++++++++++----------
>   bitbake/lib/bb/server/process.py            |    2 +-
>   bitbake/lib/bb/ui/crumbs/hobeventhandler.py |    5 ++-
>   bitbake/lib/bb/ui/depexp.py                 |   38 ++++++++++++++--------
>   bitbake/lib/bb/ui/goggle.py                 |   17 +++++-----
>   bitbake/lib/bb/ui/knotty.py                 |   45 ++++++++++++++++++---------
>   bitbake/lib/bb/ui/ncurses.py                |   21 ++++++++-----
>   7 files changed, 112 insertions(+), 59 deletions(-)
>
> diff --git a/bitbake/lib/bb/command.py b/bitbake/lib/bb/command.py
> index fd8912a..00b854e 100644
> --- a/bitbake/lib/bb/command.py
> +++ b/bitbake/lib/bb/command.py
> @@ -44,6 +44,9 @@ class CommandFailed(CommandExit):
>           self.error = message
>           CommandExit.__init__(self, 1)
>
> +class CommandError(Exception):
> +    pass
> +
>   class Command:
>       """
>       A queue of asynchronous commands for bitbake
> @@ -57,21 +60,25 @@ class Command:
>           self.currentAsyncCommand = None
>
>       def runCommand(self, commandline):
> -        try:
> -            command = commandline.pop(0)
> -            if command in CommandsSync.__dict__:
> -                # Can run synchronous commands straight away
> -                return getattr(CommandsSync, command)(self.cmds_sync, self, commandline)
> -            if self.currentAsyncCommand is not None:
> -                return "Busy (%s in progress)" % self.currentAsyncCommand[0]
> -            if command not in CommandsAsync.__dict__:
> -                return "No such command"
> -            self.currentAsyncCommand = (command, commandline)
> -            self.cooker.server_registration_cb(self.cooker.runCommands, self.cooker)
> -            return True
> -        except:
> -            import traceback
> -            return traceback.format_exc()
> +        command = commandline.pop(0)
> +        if hasattr(CommandsSync, command):
> +            # Can run synchronous commands straight away
> +            command_method = getattr(self.cmds_sync, command)
> +            try:
> +                result = command_method(self, commandline)
> +            except CommandError as exc:
> +                return None, exc.args[0]
> +            except Exception:
> +                return None, traceback.format_exc()
> +            else:
> +                return result, None
> +        if self.currentAsyncCommand is not None:
> +            return None, "Busy (%s in progress)" % self.currentAsyncCommand[0]
> +        if command not in CommandsAsync.__dict__:
> +            return None, "No such command"
> +        self.currentAsyncCommand = (command, commandline)
> +        self.cooker.server_registration_cb(self.cooker.runCommands, self.cooker)
> +        return True, None
>
>       def runAsyncCommand(self):
>           try:
> @@ -139,7 +146,11 @@ class CommandsSync:
>           """
>           Get any command parsed from the commandline
>           """
> -        return command.cooker.commandlineAction
> +        cmd_action = command.cooker.commandlineAction
> +        if cmd_action['msg']:
> +            raise CommandError(msg)
> +        else:
> +            return cmd_action['action']
>
>       def getVariable(self, command, params):
>           """
> diff --git a/bitbake/lib/bb/server/process.py b/bitbake/lib/bb/server/process.py
> index ba91336..3ae9ede 100644
> --- a/bitbake/lib/bb/server/process.py
> +++ b/bitbake/lib/bb/server/process.py
> @@ -48,7 +48,7 @@ class ServerCommunicator():
>                   if self.connection.poll(.5):
>                       return self.connection.recv()
>                   else:
> -                    return None
> +                    return None, "Timeout while attempting to communicate with bitbake server"
>               except KeyboardInterrupt:
>                   pass
>
> diff --git a/bitbake/lib/bb/ui/crumbs/hobeventhandler.py b/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
> index 52acec1..21bea23 100644
> --- a/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
> +++ b/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
> @@ -102,7 +102,10 @@ class HobHandler(gobject.GObject):
>
>       def runCommand(self, commandline):
>           try:
> -            return self.server.runCommand(commandline)
> +            result, error = self.server.runCommand(commandline)
> +            if error:
> +                raise Exception("Error running command '%s': %s" % (commandline, error))
> +            return result
>           except Exception as e:
>               self.commands_async = []
>               self.clear_busy()
> diff --git a/bitbake/lib/bb/ui/depexp.py b/bitbake/lib/bb/ui/depexp.py
> index b62adbf..1254128 100644
> --- a/bitbake/lib/bb/ui/depexp.py
> +++ b/bitbake/lib/bb/ui/depexp.py
> @@ -198,17 +198,23 @@ class gtkthread(threading.Thread):
>
>   def main(server, eventHandler):
>       try:
> -        cmdline = server.runCommand(["getCmdLineAction"])
> -        if cmdline and not cmdline['action']:
> -            print(cmdline['msg'])
> -            return
> -        elif not cmdline or (cmdline['action'] and cmdline['action'][0] != "generateDotGraph"):
> +        cmdline, error = server.runCommand(["getCmdLineAction"])
> +        if error:
> +            print("Error getting bitbake commandline: %s" % error)
> +            return 1
> +        elif not cmdline:
> +            print("Nothing to do.  Use 'bitbake world' to build everything, or run 'bitbake --help' for usage information.")
> +            return 1
> +        elif not cmdline or cmdline[0] != "generateDotGraph":
>               print("This UI is only compatible with the -g option")
> -            return
> -        ret = server.runCommand(["generateDepTreeEvent", cmdline['action'][1], cmdline['action'][2]])
> -        if ret != True:
> -            print("Couldn't run command! %s" % ret)
> -            return
> +            return 1
> +        ret, error = server.runCommand(["generateDepTreeEvent", cmdline[1], cmdline[2]])
> +        if error:
> +            print("Error running command '%s': %s" % (cmdline, error))
> +            return 1
> +        elif ret != True:
> +            print("Error running command '%s': returned %s" % (cmdline, ret))
> +            return 1
>       except xmlrpclib.Fault as x:
>           print("XMLRPC Fault getting commandline:\n %s" % x)
>           return
> @@ -229,7 +235,9 @@ def main(server, eventHandler):
>           try:
>               event = eventHandler.waitEvent(0.25)
>               if gtkthread.quit.isSet():
> -                server.runCommand(["stateStop"])
> +                _, error = server.runCommand(["stateStop"])
> +                if error:
> +                    print('Unable to cleanly stop: %s' % error)
>                   break
>
>               if event is None:
> @@ -302,9 +310,13 @@ def main(server, eventHandler):
>                   break
>               if shutdown == 1:
>                   print("\nSecond Keyboard Interrupt, stopping...\n")
> -                server.runCommand(["stateStop"])
> +                _, error = server.runCommand(["stateStop"])
> +                if error:
> +                    print('Unable to cleanly stop: %s' % error)
>               if shutdown == 0:
>                   print("\nKeyboard Interrupt, closing down...\n")
> -                server.runCommand(["stateShutdown"])
> +                _, error = server.runCommand(["stateShutdown"])
> +                if error:
> +                    print('Unable to cleanly shutdown: %s' % error)
>               shutdown = shutdown + 1
>               pass
> diff --git a/bitbake/lib/bb/ui/goggle.py b/bitbake/lib/bb/ui/goggle.py
> index b2fd274..c0785b7 100644
> --- a/bitbake/lib/bb/ui/goggle.py
> +++ b/bitbake/lib/bb/ui/goggle.py
> @@ -80,16 +80,19 @@ def main (server, eventHandler):
>       running_build.connect ("build-failed", running_build_failed_cb)
>
>       try:
> -        cmdline = server.runCommand(["getCmdLineAction"])
> -        if not cmdline:
> +        cmdline, error = server.runCommand(["getCmdLineAction"])
> +        if err:
> +            print("Error getting bitbake commandline: %s" % error)
> +            return 1
> +        elif not cmdline:
>               print("Nothing to do.  Use 'bitbake world' to build everything, or run 'bitbake --help' for usage information.")
>               return 1
> -        elif not cmdline['action']:
> -            print(cmdline['msg'])
> +        ret, error = server.runCommand(cmdline)
> +        if error:
> +            print("Error running command '%s': %s" % (cmdline, error))
>               return 1
> -        ret = server.runCommand(cmdline['action'])
> -        if ret != True:
> -            print("Couldn't get default commandline! %s" % ret)
> +        elif ret != True:
> +            print("Error running command '%s': returned %s" % (cmdline, ret))
>               return 1
>       except xmlrpclib.Fault as x:
>           print("XMLRPC Fault getting commandline:\n %s" % x)
> diff --git a/bitbake/lib/bb/ui/knotty.py b/bitbake/lib/bb/ui/knotty.py
> index 0167416..439a792 100644
> --- a/bitbake/lib/bb/ui/knotty.py
> +++ b/bitbake/lib/bb/ui/knotty.py
> @@ -107,9 +107,18 @@ class TerminalFilter(object):
>   def main(server, eventHandler, tf = TerminalFilter):
>
>       # Get values of variables which control our output
> -    includelogs = server.runCommand(["getVariable", "BBINCLUDELOGS"])
> -    loglines = server.runCommand(["getVariable", "BBINCLUDELOGS_LINES"])
> -    consolelogfile = server.runCommand(["getVariable", "BB_CONSOLELOG"])
> +    includelogs, error = server.runCommand(["getVariable", "BBINCLUDELOGS"])
> +    if error:
> +        logger.error("Unable to get the value of BBINCLUDELOGS variable: %s" % error)
> +        return 1
> +    loglines, error = server.runCommand(["getVariable", "BBINCLUDELOGS_LINES"])
> +    if error:
> +        logger.error("Unable to get the value of BBINCLUDELOGS_LINES variable: %s" % error)
> +        return 1
> +    consolelogfile, error = server.runCommand(["getVariable", "BB_CONSOLELOG"])
> +    if error:
> +        logger.error("Unable to get the value of BB_CONSOLELOG variable: %s" % error)
> +        return 1
>
>       helper = uihelper.BBUIHelper()
>
> @@ -125,19 +134,22 @@ def main(server, eventHandler, tf = TerminalFilter):
>           logger.addHandler(consolelog)
>
>       try:
> -        cmdline = server.runCommand(["getCmdLineAction"])
> -        if not cmdline:
> +        cmdline, error = server.runCommand(["getCmdLineAction"])
> +        if error:
> +            logger.error("Unable to get bitbake commandline arguments: %s" % error)
> +            return 1
> +        elif not cmdline:
>               print("Nothing to do.  Use 'bitbake world' to build everything, or run 'bitbake --help' for usage information.")
>               return 1
> -        elif not cmdline['action']:
> -            print(cmdline['msg'])
> +        ret, error = server.runCommand(cmdline)
> +        if error:
> +            logger.error("Command '%s' failed: %s" % (cmdline, error))
>               return 1
> -        ret = server.runCommand(cmdline['action'])
> -        if ret != True:
> -            print("Couldn't get default commandline! %s" % ret)
> +        elif ret != True:
> +            logger.error("Command '%s' failed: returned %s" % (cmdline, ret))
>               return 1
>       except xmlrpclib.Fault as x:
> -        print("XMLRPC Fault getting commandline:\n %s" % x)
> +        logger.error("XMLRPC Fault getting commandline:\n %s" % x)
>           return 1
>
>       parseprogress = None
> @@ -318,14 +330,19 @@ def main(server, eventHandler, tf = TerminalFilter):
>               if ioerror.args[0] == 4:
>                   pass
>           except KeyboardInterrupt:
> +            import time
>               termfilter.clearFooter()
>               if main.shutdown == 1:
>                   print("\nSecond Keyboard Interrupt, stopping...\n")
> -                server.runCommand(["stateStop"])
> +                _, error = server.runCommand(["stateStop"])
> +                if error:
> +                    logger.error("Unable to cleanly stop: %s" % error)
>               if main.shutdown == 0:
> -                interrupted = True
>                   print("\nKeyboard Interrupt, closing down...\n")
> -                server.runCommand(["stateShutdown"])
> +                interrupted = True
> +                _, error = server.runCommand(["stateShutdown"])
> +                if error:
> +                    logger.error("Unable to cleanly shutdown: %s" % error)
>               main.shutdown = main.shutdown + 1
>               pass
>
> diff --git a/bitbake/lib/bb/ui/ncurses.py b/bitbake/lib/bb/ui/ncurses.py
> index 8524446..896ed01 100644
> --- a/bitbake/lib/bb/ui/ncurses.py
> +++ b/bitbake/lib/bb/ui/ncurses.py
> @@ -230,15 +230,18 @@ class NCursesUI:
>           shutdown = 0
>
>           try:
> -            cmdline = server.runCommand(["getCmdLineAction"])
> +            cmdline, error = server.runCommand(["getCmdLineAction"])
>               if not cmdline:
>                   print("Nothing to do.  Use 'bitbake world' to build everything, or run 'bitbake --help' for usage information.")
>                   return
> -            elif not cmdline['action']:
> -                print(cmdline['msg'])
> +            elif error:
> +                print("Error getting bitbake commandline: %s" % error)
>                   return
> -            ret = server.runCommand(cmdline['action'])
> -            if ret != True:
> +            ret, error = server.runCommand(cmdline)
> +            if error:
> +                print("Error running command '%s': %s" % (cmdline, error))
> +                return
> +            elif ret != True:
>                   print("Couldn't get default commandlind! %s" % ret)
>                   return
>           except xmlrpclib.Fault as x:
> @@ -337,10 +340,14 @@ class NCursesUI:
>                       exitflag = True
>                   if shutdown == 1:
>                       mw.appendText("Second Keyboard Interrupt, stopping...\n")
> -                    server.runCommand(["stateStop"])
> +                    _, error = server.runCommand(["stateStop"])
> +                    if error:
> +                        print("Unable to cleanly stop: %s" % error)
>                   if shutdown == 0:
>                       mw.appendText("Keyboard Interrupt, closing down...\n")
> -                    server.runCommand(["stateShutdown"])
> +                    _, error = server.runCommand(["stateShutdown"])
> +                    if error:
> +                        print("Unable to cleanly shutdown: %s" % error)
>                   shutdown = shutdown + 1
>                   pass
>
>

I have pulled this into sgarman/denzil-next on poky-contrib.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

