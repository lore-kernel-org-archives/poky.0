Return-Path: <B29882@freescale.com>
Received: from tx2outboundpool.messaging.microsoft.com
	(tx2ehsobe001.messaging.microsoft.com [65.55.88.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C20BE00346
	for <poky@yoctoproject.org>; Thu,  1 Nov 2012 11:17:25 -0700 (PDT)
Received: from mail193-tx2-R.bigfish.com (10.9.14.246) by
	TX2EHSOBE005.bigfish.com (10.9.40.25) with Microsoft SMTP Server id
	14.1.225.23; Thu, 1 Nov 2012 18:17:24 +0000
Received: from mail193-tx2 (localhost [127.0.0.1])	by
	mail193-tx2-R.bigfish.com (Postfix) with ESMTP id 69855460383	for
	<poky@yoctoproject.org>; Thu,  1 Nov 2012 18:17:24 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1de0h1202h1d1ah1d2ahzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hd25hf0ah10d2h1288h12a5h12a9h12bdh137ah13b6h1441h1537h153bhbe9i1155h)
Received: from mail193-tx2 (localhost.localdomain [127.0.0.1]) by mail193-tx2
	(MessageSwitch) id 1351793840651853_16027;
	Thu,  1 Nov 2012 18:17:20 +0000 (UTC)
Received: from TX2EHSMHS017.bigfish.com (unknown [10.9.14.246])	by
	mail193-tx2.bigfish.com (Postfix) with ESMTP id 9A0AC1600B1	for
	<poky@yoctoproject.org>; Thu,  1 Nov 2012 18:17:20 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS017.bigfish.com
	(10.9.99.117) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Thu, 1 Nov 2012 18:17:19 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.103]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.02.0318.003; Thu, 1 Nov 2012 18:17:19 +0000
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky] [PATCH] bitbake: command: add error to return of
	runCommand
Thread-Index: AQHNuF0gFjOeqUBwPkqgIvH0bGiG1g==
Date: Thu, 1 Nov 2012 18:17:18 +0000
Message-ID: <70CC66F5C30A414DADDA6973E4CA391A746B47@039-SN1MPN1-001.039d.mgd.msft.net>
References: <1351793724-3182-1-git-send-email-msm@freescale.com>
In-Reply-To: <1351793724-3182-1-git-send-email-msm@freescale.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: Re: [PATCH] bitbake: command: add error to return of runCommand
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 01 Nov 2012 18:17:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <D258B5BF857B3244B957BD050D6A3D0A@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

I meant to put that this was for danny in the subject, also it seems
git send-email suppressed my CC as well.

-M

On Thu, Nov 1, 2012 at 1:15 PM, Matthew McClintock <msm@freescale.com> wrot=
e:
> From: Christopher Larson <chris_larson@mentor.com>
>
> Currently, command.py can return an error message from runCommand, due to
> being unable to run the command, yet few of our UIs (just hob) can handle=
 it
> today. This can result in seeing a TypeError with traceback in certain ra=
re
> circumstances.
>
> To resolve this, we need a clean way to get errors back from runCommand,
> without having to isinstance() the return value. This implements such a t=
hing
> by making runCommand also return an error (or None if no error occurred).
>
> As runCommand now has a method of returning errors, we can also alter the
> getCmdLineAction bits such that the returned value is just the action, no=
t an
> additional message. If a sync command wants to return an error, it raises
> CommandError(message), and the message will be passed to the caller
> appropriately.
>
> Example Usage:
>
>     result, error =3D server.runCommand(...)
>     if error:
>         log.error('Unable to run command: %s' % error)
>         return 1
>
> (Bitbake rev: 717831b8315cb3904d9b590e633000bc897e8fb6)
>
> Signed-off-by: Christopher Larson <chris_larson@mentor.com>
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
>  bitbake/lib/bb/command.py                   |   43 +++++++++++++++------=
----
>  bitbake/lib/bb/server/process.py            |    2 +-
>  bitbake/lib/bb/ui/crumbs/hobeventhandler.py |   10 ++----
>  bitbake/lib/bb/ui/depexp.py                 |   38 ++++++++++++++-------=
-
>  bitbake/lib/bb/ui/goggle.py                 |   17 ++++++----
>  bitbake/lib/bb/ui/knotty.py                 |   46 +++++++++++++++++++--=
------
>  bitbake/lib/bb/ui/ncurses.py                |   21 ++++++++----
>  7 files changed, 112 insertions(+), 65 deletions(-)
>
> diff --git a/bitbake/lib/bb/command.py b/bitbake/lib/bb/command.py
> index 27b5171..3f28bca 100644
> --- a/bitbake/lib/bb/command.py
> +++ b/bitbake/lib/bb/command.py
> @@ -44,6 +44,9 @@ class CommandFailed(CommandExit):
>          self.error =3D message
>          CommandExit.__init__(self, 1)
>
> +class CommandError(Exception):
> +    pass
> +
>  class Command:
>      """
>      A queue of asynchronous commands for bitbake
> @@ -57,21 +60,25 @@ class Command:
>          self.currentAsyncCommand =3D None
>
>      def runCommand(self, commandline):
> -        try:
> -            command =3D commandline.pop(0)
> -            if command in CommandsSync.__dict__:
> -                # Can run synchronous commands straight away
> -                return getattr(CommandsSync, command)(self.cmds_sync, se=
lf, commandline)
> -            if self.currentAsyncCommand is not None:
> -                return "Busy (%s in progress)" % self.currentAsyncComman=
d[0]
> -            if command not in CommandsAsync.__dict__:
> -                return "No such command"
> -            self.currentAsyncCommand =3D (command, commandline)
> -            self.cooker.server_registration_cb(self.cooker.runCommands, =
self.cooker)
> -            return True
> -        except:
> -            import traceback
> -            return traceback.format_exc()
> +        command =3D commandline.pop(0)
> +        if hasattr(CommandsSync, command):
> +            # Can run synchronous commands straight away
> +            command_method =3D getattr(self.cmds_sync, command)
> +            try:
> +                result =3D command_method(self, commandline)
> +            except CommandError as exc:
> +                return None, exc.args[0]
> +            except Exception:
> +                return None, traceback.format_exc()
> +            else:
> +                return result, None
> +        if self.currentAsyncCommand is not None:
> +            return None, "Busy (%s in progress)" % self.currentAsyncComm=
and[0]
> +        if command not in CommandsAsync.__dict__:
> +            return None, "No such command"
> +        self.currentAsyncCommand =3D (command, commandline)
> +        self.cooker.server_registration_cb(self.cooker.runCommands, self=
.cooker)
> +        return True, None
>
>      def runAsyncCommand(self):
>          try:
> @@ -139,7 +146,11 @@ class CommandsSync:
>          """
>          Get any command parsed from the commandline
>          """
> -        return command.cooker.commandlineAction
> +        cmd_action =3D command.cooker.commandlineAction
> +        if cmd_action['msg']:
> +            raise CommandError(msg)
> +        else:
> +            return cmd_action['action']
>
>      def getVariable(self, command, params):
>          """
> diff --git a/bitbake/lib/bb/server/process.py b/bitbake/lib/bb/server/pro=
cess.py
> index ba91336..3ae9ede 100644
> --- a/bitbake/lib/bb/server/process.py
> +++ b/bitbake/lib/bb/server/process.py
> @@ -48,7 +48,7 @@ class ServerCommunicator():
>                  if self.connection.poll(.5):
>                      return self.connection.recv()
>                  else:
> -                    return None
> +                    return None, "Timeout while attempting to communicat=
e with bitbake server"
>              except KeyboardInterrupt:
>                  pass
>
> diff --git a/bitbake/lib/bb/ui/crumbs/hobeventhandler.py b/bitbake/lib/bb=
/ui/crumbs/hobeventhandler.py
> index 5d038f4..82ebc7d 100644
> --- a/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
> +++ b/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
> @@ -101,13 +101,9 @@ class HobHandler(gobject.GObject):
>
>      def runCommand(self, commandline):
>          try:
> -            result =3D self.server.runCommand(commandline)
> -            result_str =3D str(result)
> -            if (result_str.startswith("Busy (") or
> -                    result_str =3D=3D "No such command"):
> -                raise Exception('%s has failed with output "%s". ' %
> -                        (str(commandline), result_str) +
> -                        "We recommend that you restart Hob.")
> +            result, error =3D self.server.runCommand(commandline)
> +            if error:
> +                raise Exception("Error running command '%s': %s" % (comm=
andline, error))
>              return result
>          except Exception as e:
>              self.commands_async =3D []
> diff --git a/bitbake/lib/bb/ui/depexp.py b/bitbake/lib/bb/ui/depexp.py
> index 1a716a8..85910f6 100644
> --- a/bitbake/lib/bb/ui/depexp.py
> +++ b/bitbake/lib/bb/ui/depexp.py
> @@ -198,17 +198,23 @@ class gtkthread(threading.Thread):
>
>  def main(server, eventHandler):
>      try:
> -        cmdline =3D server.runCommand(["getCmdLineAction"])
> -        if cmdline and not cmdline['action']:
> -            print(cmdline['msg'])
> -            return
> -        elif not cmdline or (cmdline['action'] and cmdline['action'][0] =
!=3D "generateDotGraph"):
> +        cmdline, error =3D server.runCommand(["getCmdLineAction"])
> +        if error:
> +            print("Error getting bitbake commandline: %s" % error)
> +            return 1
> +        elif not cmdline:
> +            print("Nothing to do.  Use 'bitbake world' to build everythi=
ng, or run 'bitbake --help' for usage information.")
> +            return 1
> +        elif not cmdline or cmdline[0] !=3D "generateDotGraph":
>              print("This UI is only compatible with the -g option")
> -            return
> -        ret =3D server.runCommand(["generateDepTreeEvent", cmdline['acti=
on'][1], cmdline['action'][2]])
> -        if ret !=3D True:
> -            print("Couldn't run command! %s" % ret)
> -            return
> +            return 1
> +        ret, error =3D server.runCommand(["generateDepTreeEvent", cmdlin=
e[1], cmdline[2]])
> +        if error:
> +            print("Error running command '%s': %s" % (cmdline, error))
> +            return 1
> +        elif ret !=3D True:
> +            print("Error running command '%s': returned %s" % (cmdline, =
ret))
> +            return 1
>      except xmlrpclib.Fault as x:
>          print("XMLRPC Fault getting commandline:\n %s" % x)
>          return
> @@ -234,7 +240,9 @@ def main(server, eventHandler):
>          try:
>              event =3D eventHandler.waitEvent(0.25)
>              if gtkthread.quit.isSet():
> -                server.runCommand(["stateStop"])
> +                _, error =3D server.runCommand(["stateStop"])
> +                if error:
> +                    print('Unable to cleanly stop: %s' % error)
>                  break
>
>              if event is None:
> @@ -310,9 +318,13 @@ def main(server, eventHandler):
>                  break
>              if shutdown =3D=3D 1:
>                  print("\nSecond Keyboard Interrupt, stopping...\n")
> -                server.runCommand(["stateStop"])
> +                _, error =3D server.runCommand(["stateStop"])
> +                if error:
> +                    print('Unable to cleanly stop: %s' % error)
>              if shutdown =3D=3D 0:
>                  print("\nKeyboard Interrupt, closing down...\n")
> -                server.runCommand(["stateShutdown"])
> +                _, error =3D server.runCommand(["stateShutdown"])
> +                if error:
> +                    print('Unable to cleanly shutdown: %s' % error)
>              shutdown =3D shutdown + 1
>              pass
> diff --git a/bitbake/lib/bb/ui/goggle.py b/bitbake/lib/bb/ui/goggle.py
> index b2fd274..c0785b7 100644
> --- a/bitbake/lib/bb/ui/goggle.py
> +++ b/bitbake/lib/bb/ui/goggle.py
> @@ -80,16 +80,19 @@ def main (server, eventHandler):
>      running_build.connect ("build-failed", running_build_failed_cb)
>
>      try:
> -        cmdline =3D server.runCommand(["getCmdLineAction"])
> -        if not cmdline:
> +        cmdline, error =3D server.runCommand(["getCmdLineAction"])
> +        if err:
> +            print("Error getting bitbake commandline: %s" % error)
> +            return 1
> +        elif not cmdline:
>              print("Nothing to do.  Use 'bitbake world' to build everythi=
ng, or run 'bitbake --help' for usage information.")
>              return 1
> -        elif not cmdline['action']:
> -            print(cmdline['msg'])
> +        ret, error =3D server.runCommand(cmdline)
> +        if error:
> +            print("Error running command '%s': %s" % (cmdline, error))
>              return 1
> -        ret =3D server.runCommand(cmdline['action'])
> -        if ret !=3D True:
> -            print("Couldn't get default commandline! %s" % ret)
> +        elif ret !=3D True:
> +            print("Error running command '%s': returned %s" % (cmdline, =
ret))
>              return 1
>      except xmlrpclib.Fault as x:
>          print("XMLRPC Fault getting commandline:\n %s" % x)
> diff --git a/bitbake/lib/bb/ui/knotty.py b/bitbake/lib/bb/ui/knotty.py
> index 3799018..8c63d74 100644
> --- a/bitbake/lib/bb/ui/knotty.py
> +++ b/bitbake/lib/bb/ui/knotty.py
> @@ -217,9 +217,19 @@ class TerminalFilter(object):
>  def main(server, eventHandler, tf =3D TerminalFilter):
>
>      # Get values of variables which control our output
> -    includelogs =3D server.runCommand(["getVariable", "BBINCLUDELOGS"])
> -    loglines =3D server.runCommand(["getVariable", "BBINCLUDELOGS_LINES"=
])
> -    consolelogfile =3D server.runCommand(["getVariable", "BB_CONSOLELOG"=
])
> +    includelogs, error =3D server.runCommand(["getVariable", "BBINCLUDEL=
OGS"])
> +    if error:
> +        logger.error("Unable to get the value of BBINCLUDELOGS variable:=
 %s" % error)
> +        return 1
> +    loglines, error =3D server.runCommand(["getVariable", "BBINCLUDELOGS=
_LINES"])
> +    if error:
> +        logger.error("Unable to get the value of BBINCLUDELOGS_LINES var=
iable: %s" % error)
> +        return 1
> +    consolelogfile, error =3D server.runCommand(["getVariable", "BB_CONS=
OLELOG"])
> +    if error:
> +        logger.error("Unable to get the value of BB_CONSOLELOG variable:=
 %s" % error)
> +        return 1
> +
>      if sys.stdin.isatty() and sys.stdout.isatty():
>          log_exec_tty =3D True
>      else:
> @@ -240,19 +250,22 @@ def main(server, eventHandler, tf =3D TerminalFilte=
r):
>          logger.addHandler(consolelog)
>
>      try:
> -        cmdline =3D server.runCommand(["getCmdLineAction"])
> -        if not cmdline:
> +        cmdline, error =3D server.runCommand(["getCmdLineAction"])
> +        if error:
> +            logger.error("Unable to get bitbake commandline arguments: %=
s" % error)
> +            return 1
> +        elif not cmdline:
>              print("Nothing to do.  Use 'bitbake world' to build everythi=
ng, or run 'bitbake --help' for usage information.")
>              return 1
> -        elif not cmdline['action']:
> -            print(cmdline['msg'])
> +        ret, error =3D server.runCommand(cmdline)
> +        if error:
> +            logger.error("Command '%s' failed: %s" % (cmdline, error))
>              return 1
> -        ret =3D server.runCommand(cmdline['action'])
> -        if ret !=3D True:
> -            print("Couldn't get default commandline! %s" % ret)
> +        elif ret !=3D True:
> +            logger.error("Command '%s' failed: returned %s" % (cmdline, =
ret))
>              return 1
>      except xmlrpclib.Fault as x:
> -        print("XMLRPC Fault getting commandline:\n %s" % x)
> +        logger.error("XMLRPC Fault getting commandline:\n %s" % x)
>          return 1
>
>      parseprogress =3D None
> @@ -447,14 +460,19 @@ def main(server, eventHandler, tf =3D TerminalFilte=
r):
>              if ioerror.args[0] =3D=3D 4:
>                  pass
>          except KeyboardInterrupt:
> +            import time
>              termfilter.clearFooter()
>              if main.shutdown =3D=3D 1:
>                  print("\nSecond Keyboard Interrupt, stopping...\n")
> -                server.runCommand(["stateStop"])
> +                _, error =3D server.runCommand(["stateStop"])
> +                if error:
> +                    logger.error("Unable to cleanly stop: %s" % error)
>              if main.shutdown =3D=3D 0:
> -                interrupted =3D True
>                  print("\nKeyboard Interrupt, closing down...\n")
> -                server.runCommand(["stateShutdown"])
> +                interrupted =3D True
> +                _, error =3D server.runCommand(["stateShutdown"])
> +                if error:
> +                    logger.error("Unable to cleanly shutdown: %s" % erro=
r)
>              main.shutdown =3D main.shutdown + 1
>              pass
>
> diff --git a/bitbake/lib/bb/ui/ncurses.py b/bitbake/lib/bb/ui/ncurses.py
> index f6ea7f9..98647fc 100644
> --- a/bitbake/lib/bb/ui/ncurses.py
> +++ b/bitbake/lib/bb/ui/ncurses.py
> @@ -236,15 +236,18 @@ class NCursesUI:
>          shutdown =3D 0
>
>          try:
> -            cmdline =3D server.runCommand(["getCmdLineAction"])
> +            cmdline, error =3D server.runCommand(["getCmdLineAction"])
>              if not cmdline:
>                  print("Nothing to do.  Use 'bitbake world' to build ever=
ything, or run 'bitbake --help' for usage information.")
>                  return
> -            elif not cmdline['action']:
> -                print(cmdline['msg'])
> +            elif error:
> +                print("Error getting bitbake commandline: %s" % error)
>                  return
> -            ret =3D server.runCommand(cmdline['action'])
> -            if ret !=3D True:
> +            ret, error =3D server.runCommand(cmdline)
> +            if error:
> +                print("Error running command '%s': %s" % (cmdline, error=
))
> +                return
> +            elif ret !=3D True:
>                  print("Couldn't get default commandlind! %s" % ret)
>                  return
>          except xmlrpclib.Fault as x:
> @@ -345,10 +348,14 @@ class NCursesUI:
>                      exitflag =3D True
>                  if shutdown =3D=3D 1:
>                      mw.appendText("Second Keyboard Interrupt, stopping..=
.\n")
> -                    server.runCommand(["stateStop"])
> +                    _, error =3D server.runCommand(["stateStop"])
> +                    if error:
> +                        print("Unable to cleanly stop: %s" % error)
>                  if shutdown =3D=3D 0:
>                      mw.appendText("Keyboard Interrupt, closing down...\n=
")
> -                    server.runCommand(["stateShutdown"])
> +                    _, error =3D server.runCommand(["stateShutdown"])
> +                    if error:
> +                        print("Unable to cleanly shutdown: %s" % error)
>                  shutdown =3D shutdown + 1
>                  pass
>
> --
> 1.7.9.7
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky=


