Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2CDCEE00848; Fri, 16 Mar 2018 03:14:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF5B1E006E9
	for <poky@yoctoproject.org>; Fri, 16 Mar 2018 03:14:44 -0700 (PDT)
Received: by mail-wm0-f53.google.com with SMTP id q83so2001876wme.5
	for <poky@yoctoproject.org>; Fri, 16 Mar 2018 03:14:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=OCSPMBz2uOwpsRNBrAenmUbVsPv6jVjqlnfF3VAwlfA=;
	b=ooUVx7Yv2rITDa7uBRlrsYdCk6pAMQMSbiM1lVsCB+Od6MD+Zx946ZxIiNCbP+4ayS
	P9vDp+mte/v6ZS3TdtRG3Dqca5JkNGmghWzdwRCD1YkTrIAt+x5xFHaPARpM5VnADkCG
	bn5Aqjs/2/B39rOkUIVHQ+JLGBz/bSnmhlxfCcvq0T+WqsAcitT+JSHYk2lofcw6GpZ5
	KA7fg7eupqJvyurlHcE9OxmnHGA+5gjC7psbSMlW1IkKMJE11gKpmWsZC1KaljZCkbNZ
	0WqmxHxwyhKQax5X3PgOPnKnGG74T6f1m07AMrUgwYgJBiuLEo47OnV5RQ3Drsh61avK
	ZTMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=OCSPMBz2uOwpsRNBrAenmUbVsPv6jVjqlnfF3VAwlfA=;
	b=sa7I+QJ1MCPjhK6oJBEHMtlBeh+NOZDLyxurY2sKqnxFNcYzHEPAZgdsaew4WLQf7R
	OGvVnqYCfhHjRuhia562mZxheA2mAYYh49MdKEWsxOdKBNAmQmIUXByxAe+t4saONXrq
	/ZgnDQmE9LXpsLoqZpSiy8pgCewpFIBnkHjmsWNZRjpOGlUdSp0Dw9d+bfGK2691Rg+c
	lqtuTV+GR64kSpM3xoXyex9lqSOqV6I6afqSJhugS0F0NE6nza8X8p0/HC9ArKuyfQY+
	/UeFZKr7mgHYDAscWqGRaRE2NW77HM0e0QLCsWeTbqFoI8qXziBsLBuvMqp4sxCFK7fs
	bjSQ==
X-Gm-Message-State: AElRT7Hy4bzjdWiVkpRZ1hsXDI6wbpylarNf1ETZ8QSsJ5xYY0VGgGKI
	Z90dvFr7EjDJFpoJ/nKZxu+++PDv3bqDWKdi5Do=
X-Google-Smtp-Source: AG47ELucNeAuch90Y2De0JN/wnU0qyeoyEQCy8nZsWAnPQpsbrhtr9CHS4nuM8Eb/7de3pytS3bgH3FjCCjMBJw/dUE=
X-Received: by 10.28.22.208 with SMTP id 199mr1340164wmw.79.1521195283360;
	Fri, 16 Mar 2018 03:14:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.30.136 with HTTP; Fri, 16 Mar 2018 03:14:42 -0700 (PDT)
In-Reply-To: <58d772d75254a2cc6ae5ae2cbd35a09cd10bc77e.1521180913.git.paul.eggleton@linux.intel.com>
References: <cover.1521180913.git.paul.eggleton@linux.intel.com>
	<58d772d75254a2cc6ae5ae2cbd35a09cd10bc77e.1521180913.git.paul.eggleton@linux.intel.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Fri, 16 Mar 2018 11:14:42 +0100
Message-ID: <CA+chaQdpuYMo9-6pJTyDdfRW-iqR6QnQ4ycW56kGyxfj_iDbrw@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] lib/bb/shell.py: drop
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
X-List-Received-Date: Fri, 16 Mar 2018 10:14:49 -0000
Content-Type: multipart/alternative; boundary="001a1145af147fb045056784e082"

--001a1145af147fb045056784e082
Content-Type: text/plain; charset="UTF-8"

Thanks Paul, this was bothering me every time I was explaining to someone
that poky/bitbake and standalone bitbake are the same thing.

Are you willing to sync other less important files as well? Last time I've
checked there was also MANIFEST.in, TODO, classes and conf in the
standalone one.

On Fri, Mar 16, 2018 at 7:16 AM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> This was removed in the bitbake repository back in 2010 (bitbake
> revision 24857e2ceb405916b0b0b3e75c6c2375a909b9ba) - it's not clear
> to me what happened, but for some reason the file remained in the poky
> repository. However it does not appear that it has been used since then
> and the reasons for removing even more valid now than they were then -
> the code has moved on even further, we have memory resident bitbake
> server, and if we were to re-implement this we would do it in a
> different way. Drop the file and bring us back in sync with the bitbake
> repo.
>
> Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
> ---
>  bitbake/lib/bb/shell.py | 820 ------------------------------
> ------------------
>  1 file changed, 820 deletions(-)
>  delete mode 100644 bitbake/lib/bb/shell.py
>
> diff --git a/bitbake/lib/bb/shell.py b/bitbake/lib/bb/shell.py
> deleted file mode 100644
> index 1dd8d54bdb1..00000000000
> --- a/bitbake/lib/bb/shell.py
> +++ /dev/null
> @@ -1,820 +0,0 @@
> -# ex:ts=4:sw=4:sts=4:et
> -# -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-
> -###########################################################
> ###############
> -#
> -# Copyright (C) 2005-2006 Michael 'Mickey' Lauer <mickey@Vanille.de>
> -# Copyright (C) 2005-2006 Vanille Media
> -#
> -# This program is free software; you can redistribute it and/or modify
> -# it under the terms of the GNU General Public License version 2 as
> -# published by the Free Software Foundation.
> -#
> -# This program is distributed in the hope that it will be useful,
> -# but WITHOUT ANY WARRANTY; without even the implied warranty of
> -# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -# GNU General Public License for more details.
> -#
> -# You should have received a copy of the GNU General Public License along
> -# with this program; if not, write to the Free Software Foundation, Inc.,
> -# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
> -#
> -###########################################################
> ###############
> -#
> -# Thanks to:
> -# * Holger Freyther <zecke@handhelds.org>
> -# * Justin Patrin <papercrane@reversefold.com>
> -#
> -###########################################################
> ###############
> -
> -"""
> -BitBake Shell
> -
> -IDEAS:
> -    * list defined tasks per package
> -    * list classes
> -    * toggle force
> -    * command to reparse just one (or more) bbfile(s)
> -    * automatic check if reparsing is necessary (inotify?)
> -    * frontend for bb file manipulation
> -    * more shell-like features:
> -        - output control, i.e. pipe output into grep, sort, etc.
> -        - job control, i.e. bring running commands into background and
> foreground
> -    * start parsing in background right after startup
> -    * ncurses interface
> -
> -PROBLEMS:
> -    * force doesn't always work
> -    * readline completion for commands with more than one parameters
> -
> -"""
> -
> -###########################################################
> ###############
> -# Import and setup global variables
> -###########################################################
> ###############
> -
> -from __future__ import print_function
> -from functools import reduce
> -try:
> -    set
> -except NameError:
> -    from sets import Set as set
> -import sys, os, readline, socket, httplib, urllib, commands, popen2,
> shlex, Queue, fnmatch
> -from bb import data, parse, build, cache, taskdata, runqueue, providers
> as Providers
> -
> -__version__ = "0.5.3.1"
> -__credits__ = """BitBake Shell Version %s (C) 2005 Michael 'Mickey' Lauer
> <mickey@Vanille.de>
> -Type 'help' for more information, press CTRL-D to exit.""" % __version__
> -
> -cmds = {}
> -leave_mainloop = False
> -last_exception = None
> -cooker = None
> -parsed = False
> -debug = os.environ.get( "BBSHELL_DEBUG", "" )
> -
> -###########################################################
> ###############
> -# Class BitBakeShellCommands
> -###########################################################
> ###############
> -
> -class BitBakeShellCommands:
> -    """This class contains the valid commands for the shell"""
> -
> -    def __init__( self, shell ):
> -        """Register all the commands"""
> -        self._shell = shell
> -        for attr in BitBakeShellCommands.__dict__:
> -            if not attr.startswith( "_" ):
> -                if attr.endswith( "_" ):
> -                    command = attr[:-1].lower()
> -                else:
> -                    command = attr[:].lower()
> -                method = getattr( BitBakeShellCommands, attr )
> -                debugOut( "registering command '%s'" % command )
> -                # scan number of arguments
> -                usage = getattr( method, "usage", "" )
> -                if usage != "<...>":
> -                    numArgs = len( usage.split() )
> -                else:
> -                    numArgs = -1
> -                shell.registerCommand( command, method, numArgs, "%s %s"
> % ( command, usage ), method.__doc__ )
> -
> -    def _checkParsed( self ):
> -        if not parsed:
> -            print("SHELL: This command needs to parse bbfiles...")
> -            self.parse( None )
> -
> -    def _findProvider( self, item ):
> -        self._checkParsed()
> -        # Need to use taskData for this information
> -        preferred = data.getVar( "PREFERRED_PROVIDER_%s" % item,
> cooker.configuration.data, 1 )
> -        if not preferred: preferred = item
> -        try:
> -            lv, lf, pv, pf = Providers.findBestProvider(preferred,
> cooker.configuration.data, cooker.status)
> -        except KeyError:
> -            if item in cooker.status.providers:
> -                pf = cooker.status.providers[item][0]
> -            else:
> -                pf = None
> -        return pf
> -
> -    def alias( self, params ):
> -        """Register a new name for a command"""
> -        new, old = params
> -        if not old in cmds:
> -            print("ERROR: Command '%s' not known" % old)
> -        else:
> -            cmds[new] = cmds[old]
> -            print("OK")
> -    alias.usage = "<alias> <command>"
> -
> -    def buffer( self, params ):
> -        """Dump specified output buffer"""
> -        index = params[0]
> -        print(self._shell.myout.buffer( int( index ) ))
> -    buffer.usage = "<index>"
> -
> -    def buffers( self, params ):
> -        """Show the available output buffers"""
> -        commands = self._shell.myout.bufferedCommands()
> -        if not commands:
> -            print("SHELL: No buffered commands available yet. Start doing
> something.")
> -        else:
> -            print("="*35, "Available Output Buffers", "="*27)
> -            for index, cmd in enumerate( commands ):
> -                print("| %s %s" % ( str( index ).ljust( 3 ), cmd ))
> -            print("="*88)
> -
> -    def build( self, params, cmd = "build" ):
> -        """Build a providee"""
> -        global last_exception
> -        globexpr = params[0]
> -        self._checkParsed()
> -        names = globfilter( cooker.status.pkg_pn, globexpr )
> -        if len( names ) == 0: names = [ globexpr ]
> -        print("SHELL: Building %s" % ' '.join( names ))
> -
> -        td = taskdata.TaskData(cooker.configuration.abort)
> -        localdata = data.createCopy(cooker.configuration.data)
> -        data.update_data(localdata)
> -        data.expandKeys(localdata)
> -
> -        try:
> -            tasks = []
> -            for name in names:
> -                td.add_provider(localdata, cooker.status, name)
> -                providers = td.get_provider(name)
> -
> -                if len(providers) == 0:
> -                    raise Providers.NoProvider
> -
> -                tasks.append([name, "do_%s" % cmd])
> -
> -            td.add_unresolved(localdata, cooker.status)
> -
> -            rq = runqueue.RunQueue(cooker, localdata, cooker.status, td,
> tasks)
> -            rq.prepare_runqueue()
> -            rq.execute_runqueue()
> -
> -        except Providers.NoProvider:
> -            print("ERROR: No Provider")
> -            last_exception = Providers.NoProvider
> -
> -        except runqueue.TaskFailure as fnids:
> -            last_exception = runqueue.TaskFailure
> -
> -        except build.FuncFailed as e:
> -            print("ERROR: Couldn't build '%s'" % names)
> -            last_exception = e
> -
> -
> -    build.usage = "<providee>"
> -
> -    def clean( self, params ):
> -        """Clean a providee"""
> -        self.build( params, "clean" )
> -    clean.usage = "<providee>"
> -
> -    def compile( self, params ):
> -        """Execute 'compile' on a providee"""
> -        self.build( params, "compile" )
> -    compile.usage = "<providee>"
> -
> -    def configure( self, params ):
> -        """Execute 'configure' on a providee"""
> -        self.build( params, "configure" )
> -    configure.usage = "<providee>"
> -
> -    def install( self, params ):
> -        """Execute 'install' on a providee"""
> -        self.build( params, "install" )
> -    install.usage = "<providee>"
> -
> -    def edit( self, params ):
> -        """Call $EDITOR on a providee"""
> -        name = params[0]
> -        bbfile = self._findProvider( name )
> -        if bbfile is not None:
> -            os.system( "%s %s" % ( os.environ.get( "EDITOR", "vi" ),
> bbfile ) )
> -        else:
> -            print("ERROR: Nothing provides '%s'" % name)
> -    edit.usage = "<providee>"
> -
> -    def environment( self, params ):
> -        """Dump out the outer BitBake environment"""
> -        cooker.showEnvironment()
> -
> -    def exit_( self, params ):
> -        """Leave the BitBake Shell"""
> -        debugOut( "setting leave_mainloop to true" )
> -        global leave_mainloop
> -        leave_mainloop = True
> -
> -    def fetch( self, params ):
> -        """Fetch a providee"""
> -        self.build( params, "fetch" )
> -    fetch.usage = "<providee>"
> -
> -    def fileBuild( self, params, cmd = "build" ):
> -        """Parse and build a .bb file"""
> -        global last_exception
> -        name = params[0]
> -        bf = completeFilePath( name )
> -        print("SHELL: Calling '%s' on '%s'" % ( cmd, bf ))
> -
> -        try:
> -            cooker.buildFile(bf, cmd)
> -        except parse.ParseError:
> -            print("ERROR: Unable to open or parse '%s'" % bf)
> -        except build.FuncFailed as e:
> -            print("ERROR: Couldn't build '%s'" % name)
> -            last_exception = e
> -
> -    fileBuild.usage = "<bbfile>"
> -
> -    def fileClean( self, params ):
> -        """Clean a .bb file"""
> -        self.fileBuild( params, "clean" )
> -    fileClean.usage = "<bbfile>"
> -
> -    def fileEdit( self, params ):
> -        """Call $EDITOR on a .bb file"""
> -        name = params[0]
> -        os.system( "%s %s" % ( os.environ.get( "EDITOR", "vi" ),
> completeFilePath( name ) ) )
> -    fileEdit.usage = "<bbfile>"
> -
> -    def fileRebuild( self, params ):
> -        """Rebuild (clean & build) a .bb file"""
> -        self.fileBuild( params, "rebuild" )
> -    fileRebuild.usage = "<bbfile>"
> -
> -    def fileReparse( self, params ):
> -        """(re)Parse a bb file"""
> -        bbfile = params[0]
> -        print("SHELL: Parsing '%s'" % bbfile)
> -        parse.update_mtime( bbfile )
> -        cooker.parser.reparse(bbfile)
> -        if False: #fromCache:
> -            print("SHELL: File has not been updated, not reparsing")
> -        else:
> -            print("SHELL: Parsed")
> -    fileReparse.usage = "<bbfile>"
> -
> -    def abort( self, params ):
> -        """Toggle abort task execution flag (see bitbake -k)"""
> -        cooker.configuration.abort = not cooker.configuration.abort
> -        print("SHELL: Abort Flag is now '%s'" % repr(
> cooker.configuration.abort ))
> -
> -    def force( self, params ):
> -        """Toggle force task execution flag (see bitbake -f)"""
> -        cooker.configuration.force = not cooker.configuration.force
> -        print("SHELL: Force Flag is now '%s'" % repr(
> cooker.configuration.force ))
> -
> -    def help( self, params ):
> -        """Show a comprehensive list of commands and their purpose"""
> -        print("="*30, "Available Commands", "="*30)
> -        for cmd in sorted(cmds):
> -            function, numparams, usage, helptext = cmds[cmd]
> -            print("| %s | %s" % (usage.ljust(30), helptext))
> -        print("="*78)
> -
> -    def lastError( self, params ):
> -        """Show the reason or log that was produced by the last BitBake
> event exception"""
> -        if last_exception is None:
> -            print("SHELL: No Errors yet (Phew)...")
> -        else:
> -            reason, event = last_exception.args
> -            print("SHELL: Reason for the last error: '%s'" % reason)
> -            if ':' in reason:
> -                msg, filename = reason.split( ':' )
> -                filename = filename.strip()
> -                print("SHELL: Dumping log file for last error:")
> -                try:
> -                    print(open( filename ).read())
> -                except IOError:
> -                    print("ERROR: Couldn't open '%s'" % filename)
> -
> -    def match( self, params ):
> -        """Dump all files or providers matching a glob expression"""
> -        what, globexpr = params
> -        if what == "files":
> -            self._checkParsed()
> -            for key in globfilter( cooker.status.pkg_fn, globexpr ):
> print(key)
> -        elif what == "providers":
> -            self._checkParsed()
> -            for key in globfilter( cooker.status.pkg_pn, globexpr ):
> print(key)
> -        else:
> -            print("Usage: match %s" % self.print_.usage)
> -    match.usage = "<files|providers> <glob>"
> -
> -    def new( self, params ):
> -        """Create a new .bb file and open the editor"""
> -        dirname, filename = params
> -        packages = '/'.join( data.getVar( "BBFILES",
> cooker.configuration.data, 1 ).split('/')[:-2] )
> -        fulldirname = "%s/%s" % ( packages, dirname )
> -
> -        if not os.path.exists( fulldirname ):
> -            print("SHELL: Creating '%s'" % fulldirname)
> -            os.mkdir( fulldirname )
> -        if os.path.exists( fulldirname ) and os.path.isdir( fulldirname ):
> -            if os.path.exists( "%s/%s" % ( fulldirname, filename ) ):
> -                print("SHELL: ERROR: %s/%s already exists" % (
> fulldirname, filename ))
> -                return False
> -            print("SHELL: Creating '%s/%s'" % ( fulldirname, filename ))
> -            newpackage = open( "%s/%s" % ( fulldirname, filename ), "w" )
> -            print("""DESCRIPTION = ""
> -SECTION = ""
> -AUTHOR = ""
> -HOMEPAGE = ""
> -MAINTAINER = ""
> -LICENSE = "GPL"
> -PR = "r0"
> -
> -SRC_URI = ""
> -
> -#inherit base
> -
> -#do_configure() {
> -#
> -#}
> -
> -#do_compile() {
> -#
> -#}
> -
> -#do_stage() {
> -#
> -#}
> -
> -#do_install() {
> -#
> -#}
> -""", file=newpackage)
> -            newpackage.close()
> -            os.system( "%s %s/%s" % ( os.environ.get( "EDITOR" ),
> fulldirname, filename ) )
> -    new.usage = "<directory> <filename>"
> -
> -    def package( self, params ):
> -        """Execute 'package' on a providee"""
> -        self.build( params, "package" )
> -    package.usage = "<providee>"
> -
> -    def pasteBin( self, params ):
> -        """Send a command + output buffer to the pastebin at
> http://rafb.net/paste"""
> -        index = params[0]
> -        contents = self._shell.myout.buffer( int( index ) )
> -        sendToPastebin( "output of " + params[0], contents )
> -    pasteBin.usage = "<index>"
> -
> -    def pasteLog( self, params ):
> -        """Send the last event exception error log (if there is one) to
> http://rafb.net/paste"""
> -        if last_exception is None:
> -            print("SHELL: No Errors yet (Phew)...")
> -        else:
> -            reason, event = last_exception.args
> -            print("SHELL: Reason for the last error: '%s'" % reason)
> -            if ':' in reason:
> -                msg, filename = reason.split( ':' )
> -                filename = filename.strip()
> -                print("SHELL: Pasting log file to pastebin...")
> -
> -                file = open( filename ).read()
> -                sendToPastebin( "contents of " + filename, file )
> -
> -    def patch( self, params ):
> -        """Execute 'patch' command on a providee"""
> -        self.build( params, "patch" )
> -    patch.usage = "<providee>"
> -
> -    def parse( self, params ):
> -        """(Re-)parse .bb files and calculate the dependency graph"""
> -        cooker.status = cache.CacheData(cooker.caches_array)
> -        ignore = data.getVar("ASSUME_PROVIDED",
> cooker.configuration.data, 1) or ""
> -        cooker.status.ignored_dependencies = set( ignore.split() )
> -        cooker.handleCollections( data.getVar("BBFILE_COLLECTIONS",
> cooker.configuration.data, 1) )
> -
> -        (filelist, masked) = cooker.collect_bbfiles()
> -        cooker.parse_bbfiles(filelist, masked, cooker.myProgressCallback)
> -        cooker.buildDepgraph()
> -        global parsed
> -        parsed = True
> -        print()
> -
> -    def reparse( self, params ):
> -        """(re)Parse a providee's bb file"""
> -        bbfile = self._findProvider( params[0] )
> -        if bbfile is not None:
> -            print("SHELL: Found bbfile '%s' for '%s'" % ( bbfile,
> params[0] ))
> -            self.fileReparse( [ bbfile ] )
> -        else:
> -            print("ERROR: Nothing provides '%s'" % params[0])
> -    reparse.usage = "<providee>"
> -
> -    def getvar( self, params ):
> -        """Dump the contents of an outer BitBake environment variable"""
> -        var = params[0]
> -        value = data.getVar( var, cooker.configuration.data, 1 )
> -        print(value)
> -    getvar.usage = "<variable>"
> -
> -    def peek( self, params ):
> -        """Dump contents of variable defined in providee's metadata"""
> -        name, var = params
> -        bbfile = self._findProvider( name )
> -        if bbfile is not None:
> -            the_data = cache.Cache.loadDataFull(bbfile,
> cooker.configuration.data)
> -            value = the_data.getVar( var, 1 )
> -            print(value)
> -        else:
> -            print("ERROR: Nothing provides '%s'" % name)
> -    peek.usage = "<providee> <variable>"
> -
> -    def poke( self, params ):
> -        """Set contents of variable defined in providee's metadata"""
> -        name, var, value = params
> -        bbfile = self._findProvider( name )
> -        if bbfile is not None:
> -            print("ERROR: Sorry, this functionality is currently broken")
> -            #d = cooker.pkgdata[bbfile]
> -            #data.setVar( var, value, d )
> -
> -            # mark the change semi persistant
> -            #cooker.pkgdata.setDirty(bbfile, d)
> -            #print "OK"
> -        else:
> -            print("ERROR: Nothing provides '%s'" % name)
> -    poke.usage = "<providee> <variable> <value>"
> -
> -    def print_( self, params ):
> -        """Dump all files or providers"""
> -        what = params[0]
> -        if what == "files":
> -            self._checkParsed()
> -            for key in cooker.status.pkg_fn: print(key)
> -        elif what == "providers":
> -            self._checkParsed()
> -            for key in cooker.status.providers: print(key)
> -        else:
> -            print("Usage: print %s" % self.print_.usage)
> -    print_.usage = "<files|providers>"
> -
> -    def python( self, params ):
> -        """Enter the expert mode - an interactive BitBake Python
> Interpreter"""
> -        sys.ps1 = "EXPERT BB>>> "
> -        sys.ps2 = "EXPERT BB... "
> -        import code
> -        interpreter = code.InteractiveConsole( dict( globals() ) )
> -        interpreter.interact( "SHELL: Expert Mode - BitBake Python
> %s\nType 'help' for more information, press CTRL-D to switch back to
> BBSHELL." % sys.version )
> -
> -    def showdata( self, params ):
> -        """Execute 'showdata' on a providee"""
> -        cooker.showEnvironment(None, params)
> -    showdata.usage = "<providee>"
> -
> -    def setVar( self, params ):
> -        """Set an outer BitBake environment variable"""
> -        var, value = params
> -        data.setVar( var, value, cooker.configuration.data )
> -        print("OK")
> -    setVar.usage = "<variable> <value>"
> -
> -    def rebuild( self, params ):
> -        """Clean and rebuild a .bb file or a providee"""
> -        self.build( params, "clean" )
> -        self.build( params, "build" )
> -    rebuild.usage = "<providee>"
> -
> -    def shell( self, params ):
> -        """Execute a shell command and dump the output"""
> -        if params != "":
> -            print(commands.getoutput( " ".join( params ) ))
> -    shell.usage = "<...>"
> -
> -    def stage( self, params ):
> -        """Execute 'stage' on a providee"""
> -        self.build( params, "populate_staging" )
> -    stage.usage = "<providee>"
> -
> -    def status( self, params ):
> -        """<just for testing>"""
> -        print("-" * 78)
> -        print("building list = '%s'" % cooker.building_list)
> -        print("build path = '%s'" % cooker.build_path)
> -        print("consider_msgs_cache = '%s'" % cooker.consider_msgs_cache)
> -        print("build stats = '%s'" % cooker.stats)
> -        if last_exception is not None: print("last_exception = '%s'" %
> repr( last_exception.args ))
> -        print("memory output contents = '%s'" % self._shell.myout._buffer)
> -
> -    def test( self, params ):
> -        """<just for testing>"""
> -        print("testCommand called with '%s'" % params)
> -
> -    def unpack( self, params ):
> -        """Execute 'unpack' on a providee"""
> -        self.build( params, "unpack" )
> -    unpack.usage = "<providee>"
> -
> -    def which( self, params ):
> -        """Computes the providers for a given providee"""
> -        # Need to use taskData for this information
> -        item = params[0]
> -
> -        self._checkParsed()
> -
> -        preferred = data.getVar( "PREFERRED_PROVIDER_%s" % item,
> cooker.configuration.data, 1 )
> -        if not preferred: preferred = item
> -
> -        try:
> -            lv, lf, pv, pf = Providers.findBestProvider(preferred,
> cooker.configuration.data, cooker.status)
> -        except KeyError:
> -            lv, lf, pv, pf = (None,)*4
> -
> -        try:
> -            providers = cooker.status.providers[item]
> -        except KeyError:
> -            print("SHELL: ERROR: Nothing provides", preferred)
> -        else:
> -            for provider in providers:
> -                if provider == pf: provider = " (***) %s" % provider
> -                else:              provider = "       %s" % provider
> -                print(provider)
> -    which.usage = "<providee>"
> -
> -###########################################################
> ###############
> -# Common helper functions
> -###########################################################
> ###############
> -
> -def completeFilePath( bbfile ):
> -    """Get the complete bbfile path"""
> -    if not cooker.status: return bbfile
> -    if not cooker.status.pkg_fn: return bbfile
> -    for key in cooker.status.pkg_fn:
> -        if key.endswith( bbfile ):
> -            return key
> -    return bbfile
> -
> -def sendToPastebin( desc, content ):
> -    """Send content to http://oe.pastebin.com"""
> -    mydata = {}
> -    mydata["lang"] = "Plain Text"
> -    mydata["desc"] = desc
> -    mydata["cvt_tabs"] = "No"
> -    mydata["nick"] = "%s@%s" % ( os.environ.get( "USER", "unknown" ),
> socket.gethostname() or "unknown" )
> -    mydata["text"] = content
> -    params = urllib.urlencode( mydata )
> -    headers = {"Content-type": "application/x-www-form-urlencoded",
> "Accept": "text/plain"}
> -
> -    host = "rafb.net"
> -    conn = httplib.HTTPConnection( "%s:80" % host )
> -    conn.request("POST", "/paste/paste.php", params, headers )
> -
> -    response = conn.getresponse()
> -    conn.close()
> -
> -    if response.status == 302:
> -        location = response.getheader( "location" ) or "unknown"
> -        print("SHELL: Pasted to http://%s%s" % ( host, location ))
> -    else:
> -        print("ERROR: %s %s" % ( response.status, response.reason ))
> -
> -def completer( text, state ):
> -    """Return a possible readline completion"""
> -    debugOut( "completer called with text='%s', state='%d'" % ( text,
> state ) )
> -
> -    if state == 0:
> -        line = readline.get_line_buffer()
> -        if " " in line:
> -            line = line.split()
> -            # we are in second (or more) argument
> -            if line[0] in cmds and hasattr( cmds[line[0]][0], "usage" ):
> # known command and usage
> -                u = getattr( cmds[line[0]][0], "usage" ).split()[0]
> -                if u == "<variable>":
> -                    allmatches = cooker.configuration.data.keys()
> -                elif u == "<bbfile>":
> -                    if cooker.status.pkg_fn is None: allmatches = [ "(No
> Matches Available. Parsed yet?)" ]
> -                    else: allmatches = [ x.split("/")[-1] for x in
> cooker.status.pkg_fn ]
> -                elif u == "<providee>":
> -                    if cooker.status.pkg_fn is None: allmatches = [ "(No
> Matches Available. Parsed yet?)" ]
> -                    else: allmatches = cooker.status.providers.iterkeys()
> -                else: allmatches = [ "(No tab completion available for
> this command)" ]
> -            else: allmatches = [ "(No tab completion available for this
> command)" ]
> -        else:
> -            # we are in first argument
> -            allmatches = cmds.iterkeys()
> -
> -        completer.matches = [ x for x in allmatches if x[:len(text)] ==
> text ]
> -        #print "completer.matches = '%s'" % completer.matches
> -    if len( completer.matches ) > state:
> -        return completer.matches[state]
> -    else:
> -        return None
> -
> -def debugOut( text ):
> -    if debug:
> -        sys.stderr.write( "( %s )\n" % text )
> -
> -def columnize( alist, width = 80 ):
> -    """
> -    A word-wrap function that preserves existing line breaks
> -    and most spaces in the text. Expects that existing line
> -    breaks are posix newlines (\n).
> -    """
> -    return reduce(lambda line, word, width=width: '%s%s%s' %
> -                  (line,
> -                   ' \n'[(len(line[line.rfind('\n')+1:])
> -                         + len(word.split('\n', 1)[0]
> -                              ) >= width)],
> -                   word),
> -                  alist
> -                 )
> -
> -def globfilter( names, pattern ):
> -    return fnmatch.filter( names, pattern )
> -
> -###########################################################
> ###############
> -# Class MemoryOutput
> -###########################################################
> ###############
> -
> -class MemoryOutput:
> -    """File-like output class buffering the output of the last 10
> commands"""
> -    def __init__( self, delegate ):
> -        self.delegate = delegate
> -        self._buffer = []
> -        self.text = []
> -        self._command = None
> -
> -    def startCommand( self, command ):
> -        self._command = command
> -        self.text = []
> -    def endCommand( self ):
> -        if self._command is not None:
> -            if len( self._buffer ) == 10: del self._buffer[0]
> -            self._buffer.append( ( self._command, self.text ) )
> -    def removeLast( self ):
> -        if self._buffer:
> -            del self._buffer[ len( self._buffer ) - 1 ]
> -        self.text = []
> -        self._command = None
> -    def lastBuffer( self ):
> -        if self._buffer:
> -            return self._buffer[ len( self._buffer ) -1 ][1]
> -    def bufferedCommands( self ):
> -        return [ cmd for cmd, output in self._buffer ]
> -    def buffer( self, i ):
> -        if i < len( self._buffer ):
> -            return "BB>> %s\n%s" % ( self._buffer[i][0], "".join(
> self._buffer[i][1] ) )
> -        else: return "ERROR: Invalid buffer number. Buffer needs to be in
> (0, %d)" % ( len( self._buffer ) - 1 )
> -    def write( self, text ):
> -        if self._command is not None and text != "BB>> ":
> self.text.append( text )
> -        if self.delegate is not None: self.delegate.write( text )
> -    def flush( self ):
> -        return self.delegate.flush()
> -    def fileno( self ):
> -        return self.delegate.fileno()
> -    def isatty( self ):
> -        return self.delegate.isatty()
> -
> -###########################################################
> ###############
> -# Class BitBakeShell
> -###########################################################
> ###############
> -
> -class BitBakeShell:
> -
> -    def __init__( self ):
> -        """Register commands and set up readline"""
> -        self.commandQ = Queue.Queue()
> -        self.commands = BitBakeShellCommands( self )
> -        self.myout = MemoryOutput( sys.stdout )
> -        self.historyfilename = os.path.expanduser( "~/.bbsh_history" )
> -        self.startupfilename = os.path.expanduser( "~/.bbsh_startup" )
> -
> -        readline.set_completer( completer )
> -        readline.set_completer_delims( " " )
> -        readline.parse_and_bind("tab: complete")
> -
> -        try:
> -            readline.read_history_file( self.historyfilename )
> -        except IOError:
> -            pass  # It doesn't exist yet.
> -
> -        print(__credits__)
> -
> -    def cleanup( self ):
> -        """Write readline history and clean up resources"""
> -        debugOut( "writing command history" )
> -        try:
> -            readline.write_history_file( self.historyfilename )
> -        except:
> -            print("SHELL: Unable to save command history")
> -
> -    def registerCommand( self, command, function, numparams = 0, usage =
> "", helptext = "" ):
> -        """Register a command"""
> -        if usage == "": usage = command
> -        if helptext == "": helptext = function.__doc__ or "<not yet
> documented>"
> -        cmds[command] = ( function, numparams, usage, helptext )
> -
> -    def processCommand( self, command, params ):
> -        """Process a command. Check number of params and print a usage
> string, if appropriate"""
> -        debugOut( "processing command '%s'..." % command )
> -        try:
> -            function, numparams, usage, helptext = cmds[command]
> -        except KeyError:
> -            print("SHELL: ERROR: '%s' command is not a valid command." %
> command)
> -            self.myout.removeLast()
> -        else:
> -            if (numparams != -1) and (not len( params ) == numparams):
> -                print("Usage: '%s'" % usage)
> -                return
> -
> -            result = function( self.commands, params )
> -            debugOut( "result was '%s'" % result )
> -
> -    def processStartupFile( self ):
> -        """Read and execute all commands found in $HOME/.bbsh_startup"""
> -        if os.path.exists( self.startupfilename ):
> -            startupfile = open( self.startupfilename, "r" )
> -            for cmdline in startupfile:
> -                debugOut( "processing startup line '%s'" % cmdline )
> -                if not cmdline:
> -                    continue
> -                if "|" in cmdline:
> -                    print("ERROR: '|' in startup file is not allowed.
> Ignoring line")
> -                    continue
> -                self.commandQ.put( cmdline.strip() )
> -
> -    def main( self ):
> -        """The main command loop"""
> -        while not leave_mainloop:
> -            try:
> -                if self.commandQ.empty():
> -                    sys.stdout = self.myout.delegate
> -                    cmdline = raw_input( "BB>> " )
> -                    sys.stdout = self.myout
> -                else:
> -                    cmdline = self.commandQ.get()
> -                if cmdline:
> -                    allCommands = cmdline.split( ';' )
> -                    for command in allCommands:
> -                        pipecmd = None
> -                        #
> -                        # special case for expert mode
> -                        if command == 'python':
> -                            sys.stdout = self.myout.delegate
> -                            self.processCommand( command, "" )
> -                            sys.stdout = self.myout
> -                        else:
> -                            self.myout.startCommand( command )
> -                            if '|' in command: # disable output
> -                                command, pipecmd = command.split( '|' )
> -                                delegate = self.myout.delegate
> -                                self.myout.delegate = None
> -                            tokens = shlex.split( command, True )
> -                            self.processCommand( tokens[0], tokens[1:] or
> "" )
> -                            self.myout.endCommand()
> -                            if pipecmd is not None: # restore output
> -                                self.myout.delegate = delegate
> -
> -                                pipe = popen2.Popen4( pipecmd )
> -                                pipe.tochild.write( "\n".join(
> self.myout.lastBuffer() ) )
> -                                pipe.tochild.close()
> -                                sys.stdout.write( pipe.fromchild.read() )
> -                        #
> -            except EOFError:
> -                print()
> -                return
> -            except KeyboardInterrupt:
> -                print()
> -
> -###########################################################
> ###############
> -# Start function - called from the BitBake command line utility
> -###########################################################
> ###############
> -
> -def start( aCooker ):
> -    global cooker
> -    cooker = aCooker
> -    bbshell = BitBakeShell()
> -    bbshell.processStartupFile()
> -    bbshell.main()
> -    bbshell.cleanup()
> -
> -if __name__ == "__main__":
> -    print("SHELL: Sorry, this program should only be called by BitBake.")
> --
> 2.14.3
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--001a1145af147fb045056784e082
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Paul, this was bothering me every time I was explai=
ning to someone that poky/bitbake and standalone bitbake are the same thing=
.<div><br></div><div>Are you willing to sync other less important files as =
well? Last time I&#39;ve checked there was also MANIFEST.in, TODO, classes =
and conf in the standalone one.</div></div><div class=3D"gmail_extra"><br><=
div class=3D"gmail_quote">On Fri, Mar 16, 2018 at 7:16 AM, Paul Eggleton <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=
=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">This was removed in the bitbake repository back in 2=
010 (bitbake<br>
revision 24857e2ceb405916b0b0b3e75c6c23<wbr>75a909b9ba) - it&#39;s not clea=
r<br>
to me what happened, but for some reason the file remained in the poky<br>
repository. However it does not appear that it has been used since then<br>
and the reasons for removing even more valid now than they were then -<br>
the code has moved on even further, we have memory resident bitbake<br>
server, and if we were to re-implement this we would do it in a<br>
different way. Drop the file and bring us back in sync with the bitbake<br>
repo.<br>
<br>
Signed-off-by: Paul Eggleton &lt;<a href=3D"mailto:paul.eggleton@linux.inte=
l.com">paul.eggleton@linux.intel.com</a><wbr>&gt;<br>
---<br>
=C2=A0bitbake/lib/bb/shell.py | 820 ------------------------------<wbr>----=
--------------<br>
=C2=A01 file changed, 820 deletions(-)<br>
=C2=A0delete mode 100644 bitbake/lib/bb/shell.py<br>
<br>
diff --git a/bitbake/lib/bb/shell.py b/bitbake/lib/bb/shell.py<br>
deleted file mode 100644<br>
index 1dd8d54bdb1..00000000000<br>
--- a/bitbake/lib/bb/shell.py<br>
+++ /dev/null<br>
@@ -1,820 +0,0 @@<br>
-# ex:ts=3D4:sw=3D4:sts=3D4:et<br>
-# -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-<br>
-#############################<wbr>##############################<wbr>#####=
##########<br>
-#<br>
-# Copyright (C) 2005-2006 Michael &#39;Mickey&#39; Lauer &lt;mickey@Vanill=
e.de&gt;<br>
-# Copyright (C) 2005-2006 Vanille Media<br>
-#<br>
-# This program is free software; you can redistribute it and/or modify<br>
-# it under the terms of the GNU General Public License version 2 as<br>
-# published by the Free Software Foundation.<br>
-#<br>
-# This program is distributed in the hope that it will be useful,<br>
-# but WITHOUT ANY WARRANTY; without even the implied warranty of<br>
-# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 See the<br>
-# GNU General Public License for more details.<br>
-#<br>
-# You should have received a copy of the GNU General Public License along<=
br>
-# with this program; if not, write to the Free Software Foundation, Inc.,<=
br>
-# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.<br>
-#<br>
-#############################<wbr>##############################<wbr>#####=
##########<br>
-#<br>
-# Thanks to:<br>
-# * Holger Freyther &lt;<a href=3D"mailto:zecke@handhelds.org">zecke@handh=
elds.org</a>&gt;<br>
-# * Justin Patrin &lt;<a href=3D"mailto:papercrane@reversefold.com">paperc=
rane@reversefold.com</a>&gt;<br>
-#<br>
-#############################<wbr>##############################<wbr>#####=
##########<br>
-<br>
-&quot;&quot;&quot;<br>
-BitBake Shell<br>
-<br>
-IDEAS:<br>
-=C2=A0 =C2=A0 * list defined tasks per package<br>
-=C2=A0 =C2=A0 * list classes<br>
-=C2=A0 =C2=A0 * toggle force<br>
-=C2=A0 =C2=A0 * command to reparse just one (or more) bbfile(s)<br>
-=C2=A0 =C2=A0 * automatic check if reparsing is necessary (inotify?)<br>
-=C2=A0 =C2=A0 * frontend for bb file manipulation<br>
-=C2=A0 =C2=A0 * more shell-like features:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 - output control, i.e. pipe output into grep, =
sort, etc.<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 - job control, i.e. bring running commands int=
o background and foreground<br>
-=C2=A0 =C2=A0 * start parsing in background right after startup<br>
-=C2=A0 =C2=A0 * ncurses interface<br>
-<br>
-PROBLEMS:<br>
-=C2=A0 =C2=A0 * force doesn&#39;t always work<br>
-=C2=A0 =C2=A0 * readline completion for commands with more than one parame=
ters<br>
-<br>
-&quot;&quot;&quot;<br>
-<br>
-#############################<wbr>##############################<wbr>#####=
##########<br>
-# Import and setup global variables<br>
-#############################<wbr>##############################<wbr>#####=
##########<br>
-<br>
-from __future__ import print_function<br>
-from functools import reduce<br>
-try:<br>
-=C2=A0 =C2=A0 set<br>
-except NameError:<br>
-=C2=A0 =C2=A0 from sets import Set as set<br>
-import sys, os, readline, socket, httplib, urllib, commands, popen2, shlex=
, Queue, fnmatch<br>
-from bb import data, parse, build, cache, taskdata, runqueue, providers as=
 Providers<br>
-<br>
-__version__ =3D &quot;0.5.3.1&quot;<br>
-__credits__ =3D &quot;&quot;&quot;BitBake Shell Version %s (C) 2005 Michae=
l &#39;Mickey&#39; Lauer &lt;mickey@Vanille.de&gt;<br>
-Type &#39;help&#39; for more information, press CTRL-D to exit.&quot;&quot=
;&quot; % __version__<br>
-<br>
-cmds =3D {}<br>
-leave_mainloop =3D False<br>
-last_exception =3D None<br>
-cooker =3D None<br>
-parsed =3D False<br>
-debug =3D os.environ.get( &quot;BBSHELL_DEBUG&quot;, &quot;&quot; )<br>
-<br>
-#############################<wbr>##############################<wbr>#####=
##########<br>
-# Class BitBakeShellCommands<br>
-#############################<wbr>##############################<wbr>#####=
##########<br>
-<br>
-class BitBakeShellCommands:<br>
-=C2=A0 =C2=A0 &quot;&quot;&quot;This class contains the valid commands for=
 the shell&quot;&quot;&quot;<br>
-<br>
-=C2=A0 =C2=A0 def __init__( self, shell ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Register all the commands&qu=
ot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self._shell =3D shell<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 for attr in BitBakeShellCommands.__dict__:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if not attr.startswith( &quot;_&=
quot; ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if attr.endswith( =
&quot;_&quot; ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 comm=
and =3D attr[:-1].lower()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 comm=
and =3D attr[:].lower()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 method =3D getattr=
( BitBakeShellCommands, attr )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 debugOut( &quot;re=
gistering command &#39;%s&#39;&quot; % command )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # scan number of a=
rguments<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 usage =3D getattr(=
 method, &quot;usage&quot;, &quot;&quot; )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if usage !=3D &quo=
t;&lt;...&gt;&quot;:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 numA=
rgs =3D len( usage.split() )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 numA=
rgs =3D -1<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 shell.registerComm=
and( command, method, numArgs, &quot;%s %s&quot; % ( command, usage ), meth=
od.__doc__ )<br>
-<br>
-=C2=A0 =C2=A0 def _checkParsed( self ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if not parsed:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;SHELL: This command =
needs to parse bbfiles...&quot;)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.parse( None )<br>
-<br>
-=C2=A0 =C2=A0 def _findProvider( self, item ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self._checkParsed()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Need to use taskData for this information<br=
>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 preferred =3D data.getVar( &quot;PREFERRED_PRO=
VIDER_%s&quot; % item, cooker.configuration.data, 1 )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if not preferred: preferred =3D item<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 try:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 lv, lf, pv, pf =3D Providers.fin=
dBestProvider(<wbr>preferred, cooker.configuration.data, cooker.status)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 except KeyError:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if item in cooker.status.provide=
rs:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pf =3D cooker.stat=
us.providers[item][<wbr>0]<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pf =3D None<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 return pf<br>
-<br>
-=C2=A0 =C2=A0 def alias( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Register a new name for a co=
mmand&quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 new, old =3D params<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if not old in cmds:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;ERROR: Command &#39;=
%s&#39; not known&quot; % old)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cmds[new] =3D cmds[old]<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;OK&quot;)<br>
-=C2=A0 =C2=A0 alias.usage =3D &quot;&lt;alias&gt; &lt;command&gt;&quot;<br=
>
-<br>
-=C2=A0 =C2=A0 def buffer( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Dump specified output buffer=
&quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 index =3D params[0]<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 print(self._shell.myout.<wbr>buffer( int( inde=
x ) ))<br>
-=C2=A0 =C2=A0 buffer.usage =3D &quot;&lt;index&gt;&quot;<br>
-<br>
-=C2=A0 =C2=A0 def buffers( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Show the available output bu=
ffers&quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 commands =3D self._shell.myout.<wbr>bufferedCo=
mmands()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if not commands:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;SHELL: No buffered c=
ommands available yet. Start doing something.&quot;)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;=3D&quot;*35, &quot;=
Available Output Buffers&quot;, &quot;=3D&quot;*27)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for index, cmd in enumerate( com=
mands ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;| %s %=
s&quot; % ( str( index ).ljust( 3 ), cmd ))<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;=3D&quot;*88)<br>
-<br>
-=C2=A0 =C2=A0 def build( self, params, cmd =3D &quot;build&quot; ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Build a providee&quot;&quot;=
&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 global last_exception<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 globexpr =3D params[0]<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self._checkParsed()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 names =3D globfilter( cooker.status.pkg_pn, gl=
obexpr )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if len( names ) =3D=3D 0: names =3D [ globexpr=
 ]<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;SHELL: Building %s&quot; % &#39; &=
#39;.join( names ))<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 td =3D taskdata.TaskData(cooker.<wbr>configura=
tion.abort)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 localdata =3D data.createCopy(cooker.<wbr>conf=
iguration.data)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 data.update_data(localdata)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 data.expandKeys(localdata)<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 try:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 tasks =3D []<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for name in names:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 td.add_provider(lo=
caldata, cooker.status, name)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 providers =3D td.g=
et_provider(name)<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if len(providers) =
=3D=3D 0:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rais=
e Providers.NoProvider<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 tasks.append([name=
, &quot;do_%s&quot; % cmd])<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 td.add_unresolved(localdata, coo=
ker.status)<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rq =3D runqueue.RunQueue(cooker,=
 localdata, cooker.status, td, tasks)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rq.prepare_runqueue()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rq.execute_runqueue()<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 except Providers.NoProvider:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;ERROR: No Provider&q=
uot;)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 last_exception =3D Providers.NoP=
rovider<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 except runqueue.TaskFailure as fnids:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 last_exception =3D runqueue.Task=
Failure<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 except build.FuncFailed as e:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;ERROR: Couldn&#39;t =
build &#39;%s&#39;&quot; % names)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 last_exception =3D e<br>
-<br>
-<br>
-=C2=A0 =C2=A0 build.usage =3D &quot;&lt;providee&gt;&quot;<br>
-<br>
-=C2=A0 =C2=A0 def clean( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Clean a providee&quot;&quot;=
&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.build( params, &quot;clean&quot; )<br>
-=C2=A0 =C2=A0 clean.usage =3D &quot;&lt;providee&gt;&quot;<br>
-<br>
-=C2=A0 =C2=A0 def compile( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Execute &#39;compile&#39; on=
 a providee&quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.build( params, &quot;compile&quot; )<br>
-=C2=A0 =C2=A0 compile.usage =3D &quot;&lt;providee&gt;&quot;<br>
-<br>
-=C2=A0 =C2=A0 def configure( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Execute &#39;configure&#39; =
on a providee&quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.build( params, &quot;configure&quot; )<br=
>
-=C2=A0 =C2=A0 configure.usage =3D &quot;&lt;providee&gt;&quot;<br>
-<br>
-=C2=A0 =C2=A0 def install( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Execute &#39;install&#39; on=
 a providee&quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.build( params, &quot;install&quot; )<br>
-=C2=A0 =C2=A0 install.usage =3D &quot;&lt;providee&gt;&quot;<br>
-<br>
-=C2=A0 =C2=A0 def edit( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Call $EDITOR on a providee&q=
uot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 name =3D params[0]<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 bbfile =3D self._findProvider( name )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if bbfile is not None:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 os.system( &quot;%s %s&quot; % (=
 os.environ.get( &quot;EDITOR&quot;, &quot;vi&quot; ), bbfile ) )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;ERROR: Nothing provi=
des &#39;%s&#39;&quot; % name)<br>
-=C2=A0 =C2=A0 edit.usage =3D &quot;&lt;providee&gt;&quot;<br>
-<br>
-=C2=A0 =C2=A0 def environment( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Dump out the outer BitBake e=
nvironment&quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 cooker.showEnvironment()<br>
-<br>
-=C2=A0 =C2=A0 def exit_( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Leave the BitBake Shell&quot=
;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 debugOut( &quot;setting leave_mainloop to true=
&quot; )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 global leave_mainloop<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 leave_mainloop =3D True<br>
-<br>
-=C2=A0 =C2=A0 def fetch( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Fetch a providee&quot;&quot;=
&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.build( params, &quot;fetch&quot; )<br>
-=C2=A0 =C2=A0 fetch.usage =3D &quot;&lt;providee&gt;&quot;<br>
-<br>
-=C2=A0 =C2=A0 def fileBuild( self, params, cmd =3D &quot;build&quot; ):<br=
>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Parse and build a .bb file&q=
uot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 global last_exception<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 name =3D params[0]<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 bf =3D completeFilePath( name )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;SHELL: Calling &#39;%s&#39; on &#3=
9;%s&#39;&quot; % ( cmd, bf ))<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 try:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cooker.buildFile(bf, cmd)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 except parse.ParseError:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;ERROR: Unable to ope=
n or parse &#39;%s&#39;&quot; % bf)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 except build.FuncFailed as e:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;ERROR: Couldn&#39;t =
build &#39;%s&#39;&quot; % name)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 last_exception =3D e<br>
-<br>
-=C2=A0 =C2=A0 fileBuild.usage =3D &quot;&lt;bbfile&gt;&quot;<br>
-<br>
-=C2=A0 =C2=A0 def fileClean( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Clean a .bb file&quot;&quot;=
&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.fileBuild( params, &quot;clean&quot; )<br=
>
-=C2=A0 =C2=A0 fileClean.usage =3D &quot;&lt;bbfile&gt;&quot;<br>
-<br>
-=C2=A0 =C2=A0 def fileEdit( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Call $EDITOR on a .bb file&q=
uot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 name =3D params[0]<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 os.system( &quot;%s %s&quot; % ( os.environ.ge=
t( &quot;EDITOR&quot;, &quot;vi&quot; ), completeFilePath( name ) ) )<br>
-=C2=A0 =C2=A0 fileEdit.usage =3D &quot;&lt;bbfile&gt;&quot;<br>
-<br>
-=C2=A0 =C2=A0 def fileRebuild( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Rebuild (clean &amp; build) =
a .bb file&quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.fileBuild( params, &quot;rebuild&quot; )<=
br>
-=C2=A0 =C2=A0 fileRebuild.usage =3D &quot;&lt;bbfile&gt;&quot;<br>
-<br>
-=C2=A0 =C2=A0 def fileReparse( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;(re)Parse a bb file&quot;&qu=
ot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 bbfile =3D params[0]<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;SHELL: Parsing &#39;%s&#39;&quot; =
% bbfile)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 parse.update_mtime( bbfile )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 cooker.parser.reparse(bbfile)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if False: #fromCache:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;SHELL: File has not =
been updated, not reparsing&quot;)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;SHELL: Parsed&quot;)=
<br>
-=C2=A0 =C2=A0 fileReparse.usage =3D &quot;&lt;bbfile&gt;&quot;<br>
-<br>
-=C2=A0 =C2=A0 def abort( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Toggle abort task execution =
flag (see bitbake -k)&quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 cooker.configuration.abort =3D not cooker.conf=
iguration.abort<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;SHELL: Abort Flag is now &#39;%s&#=
39;&quot; % repr( cooker.configuration.abort ))<br>
-<br>
-=C2=A0 =C2=A0 def force( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Toggle force task execution =
flag (see bitbake -f)&quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 cooker.configuration.force =3D not cooker.conf=
iguration.force<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;SHELL: Force Flag is now &#39;%s&#=
39;&quot; % repr( cooker.configuration.force ))<br>
-<br>
-=C2=A0 =C2=A0 def help( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Show a comprehensive list of=
 commands and their purpose&quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;=3D&quot;*30, &quot;Available Comm=
ands&quot;, &quot;=3D&quot;*30)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 for cmd in sorted(cmds):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 function, numparams, usage, help=
text =3D cmds[cmd]<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;| %s | %s&quot; % (u=
sage.ljust(30), helptext))<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;=3D&quot;*78)<br>
-<br>
-=C2=A0 =C2=A0 def lastError( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Show the reason or log that =
was produced by the last BitBake event exception&quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if last_exception is None:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;SHELL: No Errors yet=
 (Phew)...&quot;)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 reason, event =3D last_exception=
.args<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;SHELL: Reason for th=
e last error: &#39;%s&#39;&quot; % reason)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if &#39;:&#39; in reason:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 msg, filename =3D =
reason.split( &#39;:&#39; )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 filename =3D filen=
ame.strip()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;SHELL:=
 Dumping log file for last error:&quot;)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 try:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 prin=
t(open( filename ).read())<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 except IOError:<br=
>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 prin=
t(&quot;ERROR: Couldn&#39;t open &#39;%s&#39;&quot; % filename)<br>
-<br>
-=C2=A0 =C2=A0 def match( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Dump all files or providers =
matching a glob expression&quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 what, globexpr =3D params<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if what =3D=3D &quot;files&quot;:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self._checkParsed()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for key in globfilter( cooker.st=
atus.pkg_fn, globexpr ): print(key)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 elif what =3D=3D &quot;providers&quot;:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self._checkParsed()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for key in globfilter( cooker.st=
atus.pkg_pn, globexpr ): print(key)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;Usage: match %s&quot=
; % self.print_.usage)<br>
-=C2=A0 =C2=A0 match.usage =3D &quot;&lt;files|providers&gt; &lt;glob&gt;&q=
uot;<br>
-<br>
-=C2=A0 =C2=A0 def new( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Create a new .bb file and op=
en the editor&quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 dirname, filename =3D params<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 packages =3D &#39;/&#39;.join( data.getVar( &q=
uot;BBFILES&quot;, cooker.configuration.data, 1 ).split(&#39;/&#39;)[:-2] )=
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 fulldirname =3D &quot;%s/%s&quot; % ( packages=
, dirname )<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if not os.path.exists( fulldirname ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;SHELL: Creating &#39=
;%s&#39;&quot; % fulldirname)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 os.mkdir( fulldirname )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if os.path.exists( fulldirname ) and os.path.i=
sdir( fulldirname ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if os.path.exists( &quot;%s/%s&q=
uot; % ( fulldirname, filename ) ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;SHELL:=
 ERROR: %s/%s already exists&quot; % ( fulldirname, filename ))<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return False<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;SHELL: Creating &#39=
;%s/%s&#39;&quot; % ( fulldirname, filename ))<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 newpackage =3D open( &quot;%s/%s=
&quot; % ( fulldirname, filename ), &quot;w&quot; )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;&quot;&quot;DESCRIPT=
ION =3D &quot;&quot;<br>
-SECTION =3D &quot;&quot;<br>
-AUTHOR =3D &quot;&quot;<br>
-HOMEPAGE =3D &quot;&quot;<br>
-MAINTAINER =3D &quot;&quot;<br>
-LICENSE =3D &quot;GPL&quot;<br>
-PR =3D &quot;r0&quot;<br>
-<br>
-SRC_URI =3D &quot;&quot;<br>
-<br>
-#inherit base<br>
-<br>
-#do_configure() {<br>
-#<br>
-#}<br>
-<br>
-#do_compile() {<br>
-#<br>
-#}<br>
-<br>
-#do_stage() {<br>
-#<br>
-#}<br>
-<br>
-#do_install() {<br>
-#<br>
-#}<br>
-&quot;&quot;&quot;, file=3Dnewpackage)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 newpackage.close()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 os.system( &quot;%s %s/%s&quot; =
% ( os.environ.get( &quot;EDITOR&quot; ), fulldirname, filename ) )<br>
-=C2=A0 =C2=A0 new.usage =3D &quot;&lt;directory&gt; &lt;filename&gt;&quot;=
<br>
-<br>
-=C2=A0 =C2=A0 def package( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Execute &#39;package&#39; on=
 a providee&quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.build( params, &quot;package&quot; )<br>
-=C2=A0 =C2=A0 package.usage =3D &quot;&lt;providee&gt;&quot;<br>
-<br>
-=C2=A0 =C2=A0 def pasteBin( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Send a command + output buff=
er to the pastebin at <a href=3D"http://rafb.net/paste" rel=3D"noreferrer" =
target=3D"_blank">http://rafb.net/paste</a>&quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 index =3D params[0]<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 contents =3D self._shell.myout.buffer( int( in=
dex ) )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 sendToPastebin( &quot;output of &quot; + param=
s[0], contents )<br>
-=C2=A0 =C2=A0 pasteBin.usage =3D &quot;&lt;index&gt;&quot;<br>
-<br>
-=C2=A0 =C2=A0 def pasteLog( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Send the last event exceptio=
n error log (if there is one) to <a href=3D"http://rafb.net/paste" rel=3D"n=
oreferrer" target=3D"_blank">http://rafb.net/paste</a>&quot;&quot;&quot;<br=
>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if last_exception is None:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;SHELL: No Errors yet=
 (Phew)...&quot;)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 reason, event =3D last_exception=
.args<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;SHELL: Reason for th=
e last error: &#39;%s&#39;&quot; % reason)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if &#39;:&#39; in reason:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 msg, filename =3D =
reason.split( &#39;:&#39; )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 filename =3D filen=
ame.strip()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;SHELL:=
 Pasting log file to pastebin...&quot;)<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file =3D open( fil=
ename ).read()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sendToPastebin( &q=
uot;contents of &quot; + filename, file )<br>
-<br>
-=C2=A0 =C2=A0 def patch( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Execute &#39;patch&#39; comm=
and on a providee&quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.build( params, &quot;patch&quot; )<br>
-=C2=A0 =C2=A0 patch.usage =3D &quot;&lt;providee&gt;&quot;<br>
-<br>
-=C2=A0 =C2=A0 def parse( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;(Re-)parse .bb files and cal=
culate the dependency graph&quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 cooker.status =3D cache.CacheData(cooker.cache=
s_<wbr>array)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 ignore =3D data.getVar(&quot;ASSUME_PROVIDED&q=
uot;, cooker.configuration.data, 1) or &quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 cooker.status.ignored_<wbr>dependencies =3D se=
t( ignore.split() )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 cooker.handleCollections( data.getVar(&quot;BB=
FILE_<wbr>COLLECTIONS&quot;, cooker.configuration.data, 1) )<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 (filelist, masked) =3D cooker.collect_bbfiles(=
)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 cooker.parse_bbfiles(filelist, masked, cooker.=
myProgressCallback)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 cooker.buildDepgraph()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 global parsed<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 parsed =3D True<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 print()<br>
-<br>
-=C2=A0 =C2=A0 def reparse( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;(re)Parse a providee&#39;s b=
b file&quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 bbfile =3D self._findProvider( params[0] )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if bbfile is not None:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;SHELL: Found bbfile =
&#39;%s&#39; for &#39;%s&#39;&quot; % ( bbfile, params[0] ))<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.fileReparse( [ bbfile ] )<b=
r>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;ERROR: Nothing provi=
des &#39;%s&#39;&quot; % params[0])<br>
-=C2=A0 =C2=A0 reparse.usage =3D &quot;&lt;providee&gt;&quot;<br>
-<br>
-=C2=A0 =C2=A0 def getvar( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Dump the contents of an oute=
r BitBake environment variable&quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 var =3D params[0]<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 value =3D data.getVar( var, cooker.configurati=
on.data, 1 )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 print(value)<br>
-=C2=A0 =C2=A0 getvar.usage =3D &quot;&lt;variable&gt;&quot;<br>
-<br>
-=C2=A0 =C2=A0 def peek( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Dump contents of variable de=
fined in providee&#39;s metadata&quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 name, var =3D params<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 bbfile =3D self._findProvider( name )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if bbfile is not None:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 the_data =3D cache.Cache.loadDat=
aFull(<wbr>bbfile, cooker.configuration.data)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 value =3D the_data.getVar( var, =
1 )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(value)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;ERROR: Nothing provi=
des &#39;%s&#39;&quot; % name)<br>
-=C2=A0 =C2=A0 peek.usage =3D &quot;&lt;providee&gt; &lt;variable&gt;&quot;=
<br>
-<br>
-=C2=A0 =C2=A0 def poke( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Set contents of variable def=
ined in providee&#39;s metadata&quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 name, var, value =3D params<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 bbfile =3D self._findProvider( name )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if bbfile is not None:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;ERROR: Sorry, this f=
unctionality is currently broken&quot;)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 #d =3D cooker.pkgdata[bbfile]<br=
>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 #data.setVar( var, value, d )<br=
>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # mark the change semi persistan=
t<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 #cooker.pkgdata.setDirty(<wbr>bb=
file, d)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 #print &quot;OK&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;ERROR: Nothing provi=
des &#39;%s&#39;&quot; % name)<br>
-=C2=A0 =C2=A0 poke.usage =3D &quot;&lt;providee&gt; &lt;variable&gt; &lt;v=
alue&gt;&quot;<br>
-<br>
-=C2=A0 =C2=A0 def print_( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Dump all files or providers&=
quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 what =3D params[0]<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if what =3D=3D &quot;files&quot;:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self._checkParsed()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for key in cooker.status.pkg_fn:=
 print(key)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 elif what =3D=3D &quot;providers&quot;:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self._checkParsed()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for key in cooker.status.provide=
rs: print(key)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;Usage: print %s&quot=
; % self.print_.usage)<br>
-=C2=A0 =C2=A0 print_.usage =3D &quot;&lt;files|providers&gt;&quot;<br>
-<br>
-=C2=A0 =C2=A0 def python( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Enter the expert mode - an i=
nteractive BitBake Python Interpreter&quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 sys.ps1 =3D &quot;EXPERT BB&gt;&gt;&gt; &quot;=
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 sys.ps2 =3D &quot;EXPERT BB... &quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 import code<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 interpreter =3D code.InteractiveConsole( dict(=
 globals() ) )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 interpreter.interact( &quot;SHELL: Expert Mode=
 - BitBake Python %s\nType &#39;help&#39; for more information, press CTRL-=
D to switch back to BBSHELL.&quot; % sys.version )<br>
-<br>
-=C2=A0 =C2=A0 def showdata( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Execute &#39;showdata&#39; o=
n a providee&quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 cooker.showEnvironment(None, params)<br>
-=C2=A0 =C2=A0 showdata.usage =3D &quot;&lt;providee&gt;&quot;<br>
-<br>
-=C2=A0 =C2=A0 def setVar( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Set an outer BitBake environ=
ment variable&quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 var, value =3D params<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 data.setVar( var, value, cooker.configuration.=
data )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;OK&quot;)<br>
-=C2=A0 =C2=A0 setVar.usage =3D &quot;&lt;variable&gt; &lt;value&gt;&quot;<=
br>
-<br>
-=C2=A0 =C2=A0 def rebuild( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Clean and rebuild a .bb file=
 or a providee&quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.build( params, &quot;clean&quot; )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.build( params, &quot;build&quot; )<br>
-=C2=A0 =C2=A0 rebuild.usage =3D &quot;&lt;providee&gt;&quot;<br>
-<br>
-=C2=A0 =C2=A0 def shell( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Execute a shell command and =
dump the output&quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if params !=3D &quot;&quot;:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(commands.getoutput( &quot;=
 &quot;.join( params ) ))<br>
-=C2=A0 =C2=A0 shell.usage =3D &quot;&lt;...&gt;&quot;<br>
-<br>
-=C2=A0 =C2=A0 def stage( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Execute &#39;stage&#39; on a=
 providee&quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.build( params, &quot;populate_staging&quo=
t; )<br>
-=C2=A0 =C2=A0 stage.usage =3D &quot;&lt;providee&gt;&quot;<br>
-<br>
-=C2=A0 =C2=A0 def status( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;&lt;just for testing&gt;&quo=
t;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;-&quot; * 78)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;building list =3D &#39;%s&#39;&quo=
t; % cooker.building_list)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;build path =3D &#39;%s&#39;&quot; =
% cooker.build_path)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;consider_msgs_cache =3D &#39;%s&#3=
9;&quot; % cooker.consider_msgs_cache)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;build stats =3D &#39;%s&#39;&quot;=
 % cooker.stats)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if last_exception is not None: print(&quot;las=
t_exception =3D &#39;%s&#39;&quot; % repr( last_exception.args ))<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;memory output contents =3D &#39;%s=
&#39;&quot; % self._shell.myout._buffer)<br>
-<br>
-=C2=A0 =C2=A0 def test( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;&lt;just for testing&gt;&quo=
t;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;testCommand called with &#39;%s&#3=
9;&quot; % params)<br>
-<br>
-=C2=A0 =C2=A0 def unpack( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Execute &#39;unpack&#39; on =
a providee&quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.build( params, &quot;unpack&quot; )<br>
-=C2=A0 =C2=A0 unpack.usage =3D &quot;&lt;providee&gt;&quot;<br>
-<br>
-=C2=A0 =C2=A0 def which( self, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Computes the providers for a=
 given providee&quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Need to use taskData for this information<br=
>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 item =3D params[0]<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self._checkParsed()<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 preferred =3D data.getVar( &quot;PREFERRED_PRO=
VIDER_%s&quot; % item, cooker.configuration.data, 1 )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if not preferred: preferred =3D item<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 try:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 lv, lf, pv, pf =3D Providers.fin=
dBestProvider(<wbr>preferred, cooker.configuration.data, cooker.status)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 except KeyError:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 lv, lf, pv, pf =3D (None,)*4<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 try:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 providers =3D cooker.status.prov=
iders[item]<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 except KeyError:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;SHELL: ERROR: Nothin=
g provides&quot;, preferred)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for provider in providers:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if provider =3D=3D=
 pf: provider =3D &quot; (***) %s&quot; % provider<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 provider =3D &quot;=C2=A0 =C2=A0 =C2=A0=
 =C2=A0%s&quot; % provider<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(provider)<br=
>
-=C2=A0 =C2=A0 which.usage =3D &quot;&lt;providee&gt;&quot;<br>
-<br>
-#############################<wbr>##############################<wbr>#####=
##########<br>
-# Common helper functions<br>
-#############################<wbr>##############################<wbr>#####=
##########<br>
-<br>
-def completeFilePath( bbfile ):<br>
-=C2=A0 =C2=A0 &quot;&quot;&quot;Get the complete bbfile path&quot;&quot;&q=
uot;<br>
-=C2=A0 =C2=A0 if not cooker.status: return bbfile<br>
-=C2=A0 =C2=A0 if not cooker.status.pkg_fn: return bbfile<br>
-=C2=A0 =C2=A0 for key in cooker.status.pkg_fn:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if key.endswith( bbfile ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return key<br>
-=C2=A0 =C2=A0 return bbfile<br>
-<br>
-def sendToPastebin( desc, content ):<br>
-=C2=A0 =C2=A0 &quot;&quot;&quot;Send content to <a href=3D"http://oe.paste=
bin.com" rel=3D"noreferrer" target=3D"_blank">http://oe.pastebin.com</a>&qu=
ot;&quot;&quot;<br>
-=C2=A0 =C2=A0 mydata =3D {}<br>
-=C2=A0 =C2=A0 mydata[&quot;lang&quot;] =3D &quot;Plain Text&quot;<br>
-=C2=A0 =C2=A0 mydata[&quot;desc&quot;] =3D desc<br>
-=C2=A0 =C2=A0 mydata[&quot;cvt_tabs&quot;] =3D &quot;No&quot;<br>
-=C2=A0 =C2=A0 mydata[&quot;nick&quot;] =3D &quot;%s@%s&quot; % ( os.enviro=
n.get( &quot;USER&quot;, &quot;unknown&quot; ), socket.gethostname() or &qu=
ot;unknown&quot; )<br>
-=C2=A0 =C2=A0 mydata[&quot;text&quot;] =3D content<br>
-=C2=A0 =C2=A0 params =3D urllib.urlencode( mydata )<br>
-=C2=A0 =C2=A0 headers =3D {&quot;Content-type&quot;: &quot;application/x-w=
ww-form-<wbr>urlencoded&quot;, &quot;Accept&quot;: &quot;text/plain&quot;}<=
br>
-<br>
-=C2=A0 =C2=A0 host =3D &quot;<a href=3D"http://rafb.net" rel=3D"noreferrer=
" target=3D"_blank">rafb.net</a>&quot;<br>
-=C2=A0 =C2=A0 conn =3D httplib.HTTPConnection( &quot;%s:80&quot; % host )<=
br>
-=C2=A0 =C2=A0 conn.request(&quot;POST&quot;, &quot;/paste/paste.php&quot;,=
 params, headers )<br>
-<br>
-=C2=A0 =C2=A0 response =3D conn.getresponse()<br>
-=C2=A0 =C2=A0 conn.close()<br>
-<br>
-=C2=A0 =C2=A0 if response.status =3D=3D 302:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 location =3D response.getheader( &quot;locatio=
n&quot; ) or &quot;unknown&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;SHELL: Pasted to http://%s%s&quot;=
 % ( host, location ))<br>
-=C2=A0 =C2=A0 else:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;ERROR: %s %s&quot; % ( response.st=
atus, response.reason ))<br>
-<br>
-def completer( text, state ):<br>
-=C2=A0 =C2=A0 &quot;&quot;&quot;Return a possible readline completion&quot=
;&quot;&quot;<br>
-=C2=A0 =C2=A0 debugOut( &quot;completer called with text=3D&#39;%s&#39;, s=
tate=3D&#39;%d&#39;&quot; % ( text, state ) )<br>
-<br>
-=C2=A0 =C2=A0 if state =3D=3D 0:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 line =3D readline.get_line_buffer()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if &quot; &quot; in line:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 line =3D line.split()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # we are in second (or more) arg=
ument<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if line[0] in cmds and hasattr( =
cmds[line[0]][0], &quot;usage&quot; ): # known command and usage<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u =3D getattr( cmd=
s[line[0]][0], &quot;usage&quot; ).split()[0]<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if u =3D=3D &quot;=
&lt;variable&gt;&quot;:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 allm=
atches =3D cooker.configuration.data.<wbr>keys()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 elif u =3D=3D &quo=
t;&lt;bbfile&gt;&quot;:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if c=
ooker.status.pkg_fn is None: allmatches =3D [ &quot;(No Matches Available. =
Parsed yet?)&quot; ]<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else=
: allmatches =3D [ x.split(&quot;/&quot;)[-1] for x in cooker.status.pkg_fn=
 ]<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 elif u =3D=3D &quo=
t;&lt;providee&gt;&quot;:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if c=
ooker.status.pkg_fn is None: allmatches =3D [ &quot;(No Matches Available. =
Parsed yet?)&quot; ]<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else=
: allmatches =3D cooker.status.providers.<wbr>iterkeys()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else: allmatches =
=3D [ &quot;(No tab completion available for this command)&quot; ]<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else: allmatches =3D [ &quot;(No=
 tab completion available for this command)&quot; ]<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # we are in first argument<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 allmatches =3D cmds.iterkeys()<b=
r>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 completer.matches =3D [ x for x in allmatches =
if x[:len(text)] =3D=3D text ]<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 #print &quot;completer.matches =3D &#39;%s&#39=
;&quot; % completer.matches<br>
-=C2=A0 =C2=A0 if len( completer.matches ) &gt; state:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 return completer.matches[state]<br>
-=C2=A0 =C2=A0 else:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 return None<br>
-<br>
-def debugOut( text ):<br>
-=C2=A0 =C2=A0 if debug:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 sys.stderr.write( &quot;( %s )\n&quot; % text =
)<br>
-<br>
-def columnize( alist, width =3D 80 ):<br>
-=C2=A0 =C2=A0 &quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 A word-wrap function that preserves existing line breaks<br>
-=C2=A0 =C2=A0 and most spaces in the text. Expects that existing line<br>
-=C2=A0 =C2=A0 breaks are posix newlines (\n).<br>
-=C2=A0 =C2=A0 &quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 return reduce(lambda line, word, width=3Dwidth: &#39;%s%s%s&=
#39; %<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (line,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;=
 \n&#39;[(len(line[line.rfind(&#39;\n&#39;)<wbr>+1:])<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0+ len(word.split(&#39;\n&#39;, 1)[0]<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ) &gt;=3D width)],<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0word)=
,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 alist<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0)<br>
-<br>
-def globfilter( names, pattern ):<br>
-=C2=A0 =C2=A0 return fnmatch.filter( names, pattern )<br>
-<br>
-#############################<wbr>##############################<wbr>#####=
##########<br>
-# Class MemoryOutput<br>
-#############################<wbr>##############################<wbr>#####=
##########<br>
-<br>
-class MemoryOutput:<br>
-=C2=A0 =C2=A0 &quot;&quot;&quot;File-like output class buffering the outpu=
t of the last 10 commands&quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 def __init__( self, delegate ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.delegate =3D delegate<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self._buffer =3D []<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.text =3D []<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self._command =3D None<br>
-<br>
-=C2=A0 =C2=A0 def startCommand( self, command ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self._command =3D command<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.text =3D []<br>
-=C2=A0 =C2=A0 def endCommand( self ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if self._command is not None:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if len( self._buffer ) =3D=3D 10=
: del self._buffer[0]<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self._buffer.append( ( self._com=
mand, self.text ) )<br>
-=C2=A0 =C2=A0 def removeLast( self ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if self._buffer:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 del self._buffer[ len( self._buf=
fer ) - 1 ]<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.text =3D []<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self._command =3D None<br>
-=C2=A0 =C2=A0 def lastBuffer( self ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if self._buffer:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return self._buffer[ len( self._=
buffer ) -1 ][1]<br>
-=C2=A0 =C2=A0 def bufferedCommands( self ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 return [ cmd for cmd, output in self._buffer ]=
<br>
-=C2=A0 =C2=A0 def buffer( self, i ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if i &lt; len( self._buffer ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return &quot;BB&gt;&gt; %s\n%s&q=
uot; % ( self._buffer[i][0], &quot;&quot;.join( self._buffer[i][1] ) )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 else: return &quot;ERROR: Invalid buffer numbe=
r. Buffer needs to be in (0, %d)&quot; % ( len( self._buffer ) - 1 )<br>
-=C2=A0 =C2=A0 def write( self, text ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if self._command is not None and text !=3D &qu=
ot;BB&gt;&gt; &quot;: self.text.append( text )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if self.delegate is not None: self.delegate.wr=
ite( text )<br>
-=C2=A0 =C2=A0 def flush( self ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 return self.delegate.flush()<br>
-=C2=A0 =C2=A0 def fileno( self ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 return self.delegate.fileno()<br>
-=C2=A0 =C2=A0 def isatty( self ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 return self.delegate.isatty()<br>
-<br>
-#############################<wbr>##############################<wbr>#####=
##########<br>
-# Class BitBakeShell<br>
-#############################<wbr>##############################<wbr>#####=
##########<br>
-<br>
-class BitBakeShell:<br>
-<br>
-=C2=A0 =C2=A0 def __init__( self ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Register commands and set up=
 readline&quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.commandQ =3D Queue.Queue()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.commands =3D BitBakeShellCommands( self )=
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.myout =3D MemoryOutput( sys.stdout )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.historyfilename =3D os.path.expanduser( &=
quot;~/.bbsh_history&quot; )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.startupfilename =3D os.path.expanduser( &=
quot;~/.bbsh_startup&quot; )<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 readline.set_completer( completer )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 readline.set_completer_delims( &quot; &quot; )=
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 readline.parse_and_bind(&quot;tab: complete&qu=
ot;)<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 try:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 readline.read_history_file( self=
.historyfilename )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 except IOError:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pass=C2=A0 # It doesn&#39;t exis=
t yet.<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 print(__credits__)<br>
-<br>
-=C2=A0 =C2=A0 def cleanup( self ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Write readline history and c=
lean up resources&quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 debugOut( &quot;writing command history&quot; =
)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 try:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 readline.write_history_file( sel=
f.historyfilename )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 except:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;SHELL: Unable to sav=
e command history&quot;)<br>
-<br>
-=C2=A0 =C2=A0 def registerCommand( self, command, function, numparams =3D =
0, usage =3D &quot;&quot;, helptext =3D &quot;&quot; ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Register a command&quot;&quo=
t;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if usage =3D=3D &quot;&quot;: usage =3D comman=
d<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if helptext =3D=3D &quot;&quot;: helptext =3D =
function.__doc__ or &quot;&lt;not yet documented&gt;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 cmds[command] =3D ( function, numparams, usage=
, helptext )<br>
-<br>
-=C2=A0 =C2=A0 def processCommand( self, command, params ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Process a command. Check num=
ber of params and print a usage string, if appropriate&quot;&quot;&quot;<br=
>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 debugOut( &quot;processing command &#39;%s&#39=
;...&quot; % command )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 try:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 function, numparams, usage, help=
text =3D cmds[command]<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 except KeyError:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;SHELL: ERROR: &#39;%=
s&#39; command is not a valid command.&quot; % command)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.myout.removeLast()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (numparams !=3D -1) and (not =
len( params ) =3D=3D numparams):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;Usage:=
 &#39;%s&#39;&quot; % usage)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 result =3D function( self.comman=
ds, params )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 debugOut( &quot;result was &#39;=
%s&#39;&quot; % result )<br>
-<br>
-=C2=A0 =C2=A0 def processStartupFile( self ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;Read and execute all command=
s found in $HOME/.bbsh_startup&quot;&quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if os.path.exists( self.startupfilename ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 startupfile =3D open( self.start=
upfilename, &quot;r&quot; )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for cmdline in startupfile:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 debugOut( &quot;pr=
ocessing startup line &#39;%s&#39;&quot; % cmdline )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if not cmdline:<br=
>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cont=
inue<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if &quot;|&quot; i=
n cmdline:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 prin=
t(&quot;ERROR: &#39;|&#39; in startup file is not allowed. Ignoring line&qu=
ot;)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cont=
inue<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.commandQ.put(=
 cmdline.strip() )<br>
-<br>
-=C2=A0 =C2=A0 def main( self ):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;The main command loop&quot;&=
quot;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 while not leave_mainloop:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 try:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if self.commandQ.e=
mpty():<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sys.=
stdout =3D self.myout.delegate<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cmdl=
ine =3D raw_input( &quot;BB&gt;&gt; &quot; )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sys.=
stdout =3D self.myout<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cmdl=
ine =3D self.commandQ.get()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if cmdline:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 allC=
ommands =3D cmdline.split( &#39;;&#39; )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for =
command in allCommands:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 pipecmd =3D None<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 #<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 # special case for expert mode<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 if command =3D=3D &#39;python&#39;:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 sys.stdout =3D self.myout.delegate<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 self.processCommand( command, &quot;&quot; )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 sys.stdout =3D self.myout<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 else:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 self.myout.startCommand( command )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 if &#39;|&#39; in command: # disable output<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 command, pipecmd =3D command.split( =
&#39;|&#39; )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 delegate =3D self.myout.delegate<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.myout.delegate =3D None<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 tokens =3D shlex.split( command, True )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 self.processCommand( tokens[0], tokens[1:] or &quo=
t;&quot; )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 self.myout.endCommand()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 if pipecmd is not None: # restore output<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.myout.delegate =3D delegate<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pipe =3D popen2.Popen4( pipecmd )<br=
>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pipe.tochild.write( &quot;\n&quot;.j=
oin( self.myout.lastBuffer() ) )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pipe.tochild.close()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sys.stdout.write( pipe.fromchild.rea=
d() )<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 #<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 except EOFError:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 except KeyboardInterrupt:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print()<br>
-<br>
-#############################<wbr>##############################<wbr>#####=
##########<br>
-# Start function - called from the BitBake command line utility<br>
-#############################<wbr>##############################<wbr>#####=
##########<br>
-<br>
-def start( aCooker ):<br>
-=C2=A0 =C2=A0 global cooker<br>
-=C2=A0 =C2=A0 cooker =3D aCooker<br>
-=C2=A0 =C2=A0 bbshell =3D BitBakeShell()<br>
-=C2=A0 =C2=A0 bbshell.processStartupFile()<br>
-=C2=A0 =C2=A0 bbshell.main()<br>
-=C2=A0 =C2=A0 bbshell.cleanup()<br>
-<br>
-if __name__ =3D=3D &quot;__main__&quot;:<br>
-=C2=A0 =C2=A0 print(&quot;SHELL: Sorry, this program should only be called=
 by BitBake.&quot;)<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.14.3<br>
<br>
--<br>
______________________________<wbr>_________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/poky</a><br=
>
</font></span></blockquote></div><br></div>

--001a1145af147fb045056784e082--
