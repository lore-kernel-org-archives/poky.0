Return-Path: <contact@nicheconsult.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE6AAE00D38; Wed, 31 Jul 2019 10:23:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_QP_LONG_LINE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [217.26.49.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from mxout017.mail.hostpoint.ch (mxout017.mail.hostpoint.ch
	[217.26.49.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC285E00CD5
	for <poky@yoctoproject.org>; Wed, 31 Jul 2019 10:23:29 -0700 (PDT)
Received: from [10.0.2.46] (helo=asmtp013.mail.hostpoint.ch)
	by mxout017.mail.hostpoint.ch with esmtp (Exim 4.92 (FreeBSD))
	(envelope-from <contact@nicheconsult.in>)
	id 1hssJz-000EXb-CJ; Wed, 31 Jul 2019 19:23:27 +0200
Received: from [122.172.95.138] (helo=[192.168.1.3])
	by asmtp013.mail.hostpoint.ch with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91 (FreeBSD))
	(envelope-from <contact@nicheconsult.in>)
	id 1hssJx-000478-Ue; Wed, 31 Jul 2019 19:23:27 +0200
X-Authenticated-Sender-Id: contact@nicheconsult.in
From: Niche Consulting India <contact@nicheconsult.in>
Message-Id: <AB061DE5-38D5-471B-849A-EF16694940D3@nicheconsult.in>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Wed, 31 Jul 2019 22:53:22 +0530
In-Reply-To: <CAMKF1sqFNbLYMvtSxmyiS3K5naJqx7X7bOf9N0y4fNzpkCQOfQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
References: <1564544459-411336-1-git-send-email-changqing.li@windriver.com>
	<8b53b4e5ccd515faed145f1844ac7be1170338fa.camel@linuxfoundation.org>
	<5DDDFCF3-C543-4699-91C4-AF5D54C98D8A@nicheconsult.in>
	<CAMKF1sqFNbLYMvtSxmyiS3K5naJqx7X7bOf9N0y4fNzpkCQOfQ@mail.gmail.com>
X-Mailer: Apple Mail (2.3273)
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: error in building qt5-image
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
X-List-Received-Date: Wed, 31 Jul 2019 17:23:31 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_3CB15FAD-A005-403D-88F9-A8F7624EA421"

--Apple-Mail=_3CB15FAD-A005-403D-88F9-A8F7624EA421
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

there is no option to enforce single build process. Given below is usage =
of bit bake.

=E2=80=94=E2=80=94=E2=80=94
> Usage: bitbake [options] [recipename/target recipe:do_task ...]
>=20
>     Executes the specified task (default is 'build') for a given set =
of target recipes (.bb files).
>     It is assumed there is a conf/bblayers.conf available in cwd or in =
BBPATH which
>     will provide the layer, BBFILES and other configuration =
information.
>=20
> Options:
>   --version             show program's version number and exit
>   -h, --help            show this help message and exit
>   -b BUILDFILE, --buildfile=3DBUILDFILE
>                         Execute tasks from a specific .bb recipe =
directly.
>                         WARNING: Does not handle any dependencies from =
other
>                         recipes.
>   -k, --continue        Continue as much as possible after an error. =
While the
>                         target that failed and anything depending on =
it cannot
>                         be built, as much as possible will be built =
before
>                         stopping.
>   -f, --force           Force the specified targets/task to run =
(invalidating
>                         any existing stamp file).
>   -c CMD, --cmd=3DCMD     Specify the task to execute. The exact =
options
>                         available depend on the metadata. Some =
examples might
>                         be 'compile' or 'populate_sysroot' or =
'listtasks' may
>                         give a list of the tasks available.
>   -C INVALIDATE_STAMP, --clear-stamp=3DINVALIDATE_STAMP
>                         Invalidate the stamp for the specified task =
such as
>                         'compile' and then run the default task for =
the
>                         specified target(s).
>   -r PREFILE, --read=3DPREFILE
>                         Read the specified file before bitbake.conf.
>   -R POSTFILE, --postread=3DPOSTFILE
>                         Read the specified file after bitbake.conf.
>   -v, --verbose         Enable tracing of shell tasks (with 'set -x'). =
Also
>                         print bb.note(...) messages to stdout (in =
addition to
>                         writing them to ${T}/log.do_<task>).
>   -D, --debug           Increase the debug level. You can specify this =
more
>                         than once. -D sets the debug level to 1, where =
only
>                         bb.debug(1, ...) messages are printed to =
stdout; -DD
>                         sets the debug level to 2, where both =
bb.debug(1, ...)
>                         and bb.debug(2, ...) messages are printed; =
etc.
>                         Without -D, no debug messages are printed. =
Note that
>                         -D only affects output to stdout. All debug =
messages
>                         are written to ${T}/log.do_taskname, =
regardless of the
>                         debug level.
>   -q, --quiet           Output less log message data to the terminal. =
You can
>                         specify this more than once.
>   -n, --dry-run         Don't execute, just go through the motions.
>   -S SIGNATURE_HANDLER, --dump-signatures=3DSIGNATURE_HANDLER
>                         Dump out the signature construction =
information, with
>                         no task execution. The SIGNATURE_HANDLER =
parameter is
>                         passed to the handler. Two common values are =
none and
>                         printdiff but the handler may define =
more/less. none
>                         means only dump the signature, printdiff means =
compare
>                         the dumped signature with the cached one.
>   -p, --parse-only      Quit after parsing the BB recipes.
>   -s, --show-versions   Show current and preferred versions of all =
recipes.
>   -e, --environment     Show the global or per-recipe environment =
complete
>                         with information about where variables were
>                         set/changed.
>   -g, --graphviz        Save dependency tree information for the =
specified
>                         targets in the dot syntax.
>   -I EXTRA_ASSUME_PROVIDED, --ignore-deps=3DEXTRA_ASSUME_PROVIDED
>                         Assume these dependencies don't exist and are =
already
>                         provided (equivalent to ASSUME_PROVIDED). =
Useful to
>                         make dependency graphs more appealing
>   -l DEBUG_DOMAINS, --log-domains=3DDEBUG_DOMAINS
>                         Show debug logging for the specified logging =
domains
>   -P, --profile         Profile the command and save reports.
>   -u UI, --ui=3DUI        The user interface to use (knotty, ncurses =
or taskexp
>                         - default knotty).
>   --token=3DXMLRPCTOKEN   Specify the connection token to be used when
>                         connecting to a remote server.
>   --revisions-changed   Set the exit code depending on whether =
upstream
>                         floating revisions have changed or not.
>   --server-only         Run bitbake without a UI, only starting a =
server
>                         (cooker) process.
>   -B BIND, --bind=3DBIND  The name/address for the bitbake xmlrpc =
server to bind
>                         to.
>   -T SERVER_TIMEOUT, --idle-timeout=3DSERVER_TIMEOUT
>                         Set timeout to unload bitbake server due to
>                         inactivity, set to -1 means no unload, =
default:
>                         Environment variable BB_SERVER_TIMEOUT.
>   --no-setscene         Do not run any setscene tasks. sstate will be =
ignored
>                         and everything needed, built.
>   --setscene-only       Only run setscene tasks, don't run any real =
tasks.
>   --remote-server=3DREMOTE_SERVER
>                         Connect to the specified server.
>   -m, --kill-server     Terminate any running bitbake server.
>   --observe-only        Connect to a server as an observing-only =
client.
>   --status-only         Check the status of the remote bitbake server.
>   -w WRITEEVENTLOG, --write-log=3DWRITEEVENTLOG
>                         Writes the event log of the build to a bitbake =
event
>                         json file. Use '' (empty string) to assign the =
name
>                         automatically.
>   --runall=3DRUNALL       Run the specified task for any recipe in the =
taskgraph
>                         of the specified target (even if it wouldn't =
otherwise
>                         have run).
>   --runonly=3DRUNONLY     Run only the specified task within the =
taskgraph of
>                         the specified targets (and any task =
dependencies those
>                         tasks may have).

> On 31-Jul-2019, at 10:15 PM, Khem Raj <raj.khem@gmail.com> wrote:
>=20
> It seems to be a parallel build issue. Try to enforce -j1 and see if =
that helps
>=20
> On Wed, Jul 31, 2019 at 8:23 AM Niche Consulting India
> <contact@nicheconsult.in> wrote:
>>=20
>> hello,
>> i encountered this error when building qt5-image for ubuntu 14.04 on =
warrior branch.
>>=20
>>=20
>> Can someone tell me how to fix this? does this mean i checked out an =
older version of code?
>>=20
>> =E2=80=94=E2=80=94=E2=80=94=E2=80=94
>> # bit bake qt5-image
>> =E2=80=A6.
>> n file included from libavdevice/avdevice.h:51,
>>                 from libavdevice/avdevice.c:23:
>> ./libavformat/avformat.h:2070:17: note: declared here
>> AVOutputFormat *av_oformat_next(const AVOutputFormat *f);
>>                 ^~~~~~~~~~~~~~~
>> libavdevice/avdevice.c:92:13: warning: 'av_iformat_next' is =
deprecated [-Wdeprecated-declarations]
>>             if (!(prev =3D av_iformat_next(prev)))
>>             ^~
>> In file included from libavdevice/avdevice.h:51,
>>                 from libavdevice/avdevice.c:23:
>> ./libavformat/avformat.h:2062:17: note: declared here
>> AVInputFormat  *av_iformat_next(const AVInputFormat  *f);
>>                 ^~~~~~~~~~~~~~~
>> make[1]: *** write jobserver: Bad file descriptor.  Stop.
>> ERROR: oe_runmake failed
>> make: *** [compile] Error 2
>> WARNING: exit code 1 from a shell command.
>> ERROR: Function failed: do_compile (log file is located at =
/data/build_area/warrior/poky/build/tmp/work/raspberrypi3-poky-linux-gnuea=
bi/omxplayer/git-r4/temp/log.do_compile.26121)
>>=20
>> --
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky


--Apple-Mail=_3CB15FAD-A005-403D-88F9-A8F7624EA421
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">there is no option to enforce single build process. Given =
below is usage of bit bake.<div class=3D""><br class=3D""></div><div =
class=3D"">=E2=80=94=E2=80=94=E2=80=94</div><div =
class=3D""><div><blockquote type=3D"cite" class=3D""><div class=3D""><font=
 color=3D"#000000" class=3D"">Usage: bitbake [options] =
[recipename/target recipe:do_task ...]</font></div><div class=3D""><font =
color=3D"#000000" class=3D""><br class=3D""></font></div><div =
class=3D""><font color=3D"#000000" class=3D"">&nbsp; &nbsp; Executes the =
specified task (default is 'build') for a given set of target recipes =
(.bb files).</font></div><div class=3D""><font color=3D"#000000" =
class=3D"">&nbsp; &nbsp; It is assumed there is a conf/bblayers.conf =
available in cwd or in BBPATH which</font></div><div class=3D""><font =
color=3D"#000000" class=3D"">&nbsp; &nbsp; will provide the layer, =
BBFILES and other configuration information.</font></div><div =
class=3D""><font color=3D"#000000" class=3D""><br =
class=3D""></font></div><div class=3D""><font color=3D"#000000" =
class=3D"">Options:</font></div><div class=3D""><font color=3D"#000000" =
class=3D"">&nbsp; --version &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
show program's version number and exit</font></div><div class=3D""><font =
color=3D"#000000" class=3D"">&nbsp; -h, --help &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;show this help message and exit</font></div><div =
class=3D""><font color=3D"#000000" class=3D"">&nbsp; -b BUILDFILE, =
--buildfile=3DBUILDFILE</font></div><div class=3D""><font =
color=3D"#000000" class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Execute tasks from a specific =
.bb recipe directly.</font></div><div class=3D""><font color=3D"#000000" =
class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; WARNING: Does not handle any dependencies =
from other</font></div><div class=3D""><font color=3D"#000000" =
class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; recipes.</font></div><div class=3D""><font =
color=3D"#000000" class=3D"">&nbsp; -k, --continue &nbsp; &nbsp; &nbsp; =
&nbsp;Continue as much as possible after an error. While =
the</font></div><div class=3D""><font color=3D"#000000" class=3D"">&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; target that failed and anything depending on it =
cannot</font></div><div class=3D""><font color=3D"#000000" =
class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; be built, as much as possible will be built =
before</font></div><div class=3D""><font color=3D"#000000" =
class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; stopping.</font></div><div class=3D""><font =
color=3D"#000000" class=3D"">&nbsp; -f, --force &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; Force the specified targets/task to run =
(invalidating</font></div><div class=3D""><font color=3D"#000000" =
class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; any existing stamp file).</font></div><div =
class=3D""><font color=3D"#000000" class=3D"">&nbsp; -c CMD, --cmd=3DCMD =
&nbsp; &nbsp; Specify the task to execute. The exact =
options</font></div><div class=3D""><font color=3D"#000000" =
class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; available depend on the metadata. Some =
examples might</font></div><div class=3D""><font color=3D"#000000" =
class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; be 'compile' or 'populate_sysroot' or =
'listtasks' may</font></div><div class=3D""><font color=3D"#000000" =
class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; give a list of the tasks =
available.</font></div><div class=3D""><font color=3D"#000000" =
class=3D"">&nbsp; -C INVALIDATE_STAMP, =
--clear-stamp=3DINVALIDATE_STAMP</font></div><div class=3D""><font =
color=3D"#000000" class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Invalidate the stamp for the =
specified task such as</font></div><div class=3D""><font color=3D"#000000"=
 class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 'compile' and then run the default task for =
the</font></div><div class=3D""><font color=3D"#000000" class=3D"">&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; specified target(s).</font></div><div class=3D""><font =
color=3D"#000000" class=3D"">&nbsp; -r PREFILE, =
--read=3DPREFILE</font></div><div class=3D""><font color=3D"#000000" =
class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; Read the specified file before =
bitbake.conf.</font></div><div class=3D""><font color=3D"#000000" =
class=3D"">&nbsp; -R POSTFILE, --postread=3DPOSTFILE</font></div><div =
class=3D""><font color=3D"#000000" class=3D"">&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Read the =
specified file after bitbake.conf.</font></div><div class=3D""><font =
color=3D"#000000" class=3D"">&nbsp; -v, --verbose &nbsp; &nbsp; &nbsp; =
&nbsp; Enable tracing of shell tasks (with 'set -x'). =
Also</font></div><div class=3D""><font color=3D"#000000" class=3D"">&nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; print bb.note(...) messages to stdout (in addition =
to</font></div><div class=3D""><font color=3D"#000000" class=3D"">&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; writing them to ${T}/log.do_&lt;task&gt;).</font></div><div =
class=3D""><font color=3D"#000000" class=3D"">&nbsp; -D, --debug &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; Increase the debug level. You can specify =
this more</font></div><div class=3D""><font color=3D"#000000" =
class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; than once. -D sets the debug level to 1, =
where only</font></div><div class=3D""><font color=3D"#000000" =
class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; bb.debug(1, ...) messages are printed to =
stdout; -DD</font></div><div class=3D""><font color=3D"#000000" =
class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; sets the debug level to 2, where both =
bb.debug(1, ...)</font></div><div class=3D""><font color=3D"#000000" =
class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; and bb.debug(2, ...) messages are printed; =
etc.</font></div><div class=3D""><font color=3D"#000000" class=3D"">&nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; Without -D, no debug messages are printed. Note =
that</font></div><div class=3D""><font color=3D"#000000" class=3D"">&nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; -D only affects output to stdout. All debug =
messages</font></div><div class=3D""><font color=3D"#000000" =
class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; are written to ${T}/log.do_taskname, =
regardless of the</font></div><div class=3D""><font color=3D"#000000" =
class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; debug level.</font></div><div class=3D""><font=
 color=3D"#000000" class=3D"">&nbsp; -q, --quiet &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; Output less log message data to the terminal. You =
can</font></div><div class=3D""><font color=3D"#000000" class=3D"">&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; specify this more than once.</font></div><div class=3D""><font =
color=3D"#000000" class=3D"">&nbsp; -n, --dry-run &nbsp; &nbsp; &nbsp; =
&nbsp; Don't execute, just go through the motions.</font></div><div =
class=3D""><font color=3D"#000000" class=3D"">&nbsp; -S =
SIGNATURE_HANDLER, --dump-signatures=3DSIGNATURE_HANDLER</font></div><div =
class=3D""><font color=3D"#000000" class=3D"">&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Dump out =
the signature construction information, with</font></div><div =
class=3D""><font color=3D"#000000" class=3D"">&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; no task =
execution. The SIGNATURE_HANDLER parameter is</font></div><div =
class=3D""><font color=3D"#000000" class=3D"">&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; passed to =
the handler. Two common values are none and</font></div><div =
class=3D""><font color=3D"#000000" class=3D"">&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; printdiff =
but the handler may define more/less. none</font></div><div =
class=3D""><font color=3D"#000000" class=3D"">&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; means =
only dump the signature, printdiff means compare</font></div><div =
class=3D""><font color=3D"#000000" class=3D"">&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; the =
dumped signature with the cached one.</font></div><div class=3D""><font =
color=3D"#000000" class=3D"">&nbsp; -p, --parse-only &nbsp; &nbsp; =
&nbsp;Quit after parsing the BB recipes.</font></div><div class=3D""><font=
 color=3D"#000000" class=3D"">&nbsp; -s, --show-versions &nbsp; Show =
current and preferred versions of all recipes.</font></div><div =
class=3D""><font color=3D"#000000" class=3D"">&nbsp; -e, --environment =
&nbsp; &nbsp; Show the global or per-recipe environment =
complete</font></div><div class=3D""><font color=3D"#000000" =
class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; with information about where variables =
were</font></div><div class=3D""><font color=3D"#000000" class=3D"">&nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; set/changed.</font></div><div class=3D""><font color=3D"#000000" =
class=3D"">&nbsp; -g, --graphviz &nbsp; &nbsp; &nbsp; &nbsp;Save =
dependency tree information for the specified</font></div><div =
class=3D""><font color=3D"#000000" class=3D"">&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; targets =
in the dot syntax.</font></div><div class=3D""><font color=3D"#000000" =
class=3D"">&nbsp; -I EXTRA_ASSUME_PROVIDED, =
--ignore-deps=3DEXTRA_ASSUME_PROVIDED</font></div><div class=3D""><font =
color=3D"#000000" class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Assume these dependencies =
don't exist and are already</font></div><div class=3D""><font =
color=3D"#000000" class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; provided (equivalent to =
ASSUME_PROVIDED). Useful to</font></div><div class=3D""><font =
color=3D"#000000" class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; make dependency graphs more =
appealing</font></div><div class=3D""><font color=3D"#000000" =
class=3D"">&nbsp; -l DEBUG_DOMAINS, =
--log-domains=3DDEBUG_DOMAINS</font></div><div class=3D""><font =
color=3D"#000000" class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Show debug logging for the =
specified logging domains</font></div><div class=3D""><font =
color=3D"#000000" class=3D"">&nbsp; -P, --profile &nbsp; &nbsp; &nbsp; =
&nbsp; Profile the command and save reports.</font></div><div =
class=3D""><font color=3D"#000000" class=3D"">&nbsp; -u UI, --ui=3DUI =
&nbsp; &nbsp; &nbsp; &nbsp;The user interface to use (knotty, ncurses or =
taskexp</font></div><div class=3D""><font color=3D"#000000" =
class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; - default knotty).</font></div><div =
class=3D""><font color=3D"#000000" class=3D"">&nbsp; --token=3DXMLRPCTOKEN=
 &nbsp; Specify the connection token to be used when</font></div><div =
class=3D""><font color=3D"#000000" class=3D"">&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
connecting to a remote server.</font></div><div class=3D""><font =
color=3D"#000000" class=3D"">&nbsp; --revisions-changed &nbsp; Set the =
exit code depending on whether upstream</font></div><div class=3D""><font =
color=3D"#000000" class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; floating revisions have =
changed or not.</font></div><div class=3D""><font color=3D"#000000" =
class=3D"">&nbsp; --server-only &nbsp; &nbsp; &nbsp; &nbsp; Run bitbake =
without a UI, only starting a server</font></div><div class=3D""><font =
color=3D"#000000" class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; (cooker) =
process.</font></div><div class=3D""><font color=3D"#000000" =
class=3D"">&nbsp; -B BIND, --bind=3DBIND &nbsp;The name/address for the =
bitbake xmlrpc server to bind</font></div><div class=3D""><font =
color=3D"#000000" class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; to.</font></div><div =
class=3D""><font color=3D"#000000" class=3D"">&nbsp; -T SERVER_TIMEOUT, =
--idle-timeout=3DSERVER_TIMEOUT</font></div><div class=3D""><font =
color=3D"#000000" class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Set timeout to unload bitbake =
server due to</font></div><div class=3D""><font color=3D"#000000" =
class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; inactivity, set to -1 means no unload, =
default:</font></div><div class=3D""><font color=3D"#000000" =
class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; Environment variable =
BB_SERVER_TIMEOUT.</font></div><div class=3D""><font color=3D"#000000" =
class=3D"">&nbsp; --no-setscene &nbsp; &nbsp; &nbsp; &nbsp; Do not run =
any setscene tasks. sstate will be ignored</font></div><div =
class=3D""><font color=3D"#000000" class=3D"">&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; and =
everything needed, built.</font></div><div class=3D""><font =
color=3D"#000000" class=3D"">&nbsp; --setscene-only &nbsp; &nbsp; &nbsp; =
Only run setscene tasks, don't run any real tasks.</font></div><div =
class=3D""><font color=3D"#000000" class=3D"">&nbsp; =
--remote-server=3DREMOTE_SERVER</font></div><div class=3D""><font =
color=3D"#000000" class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Connect to the specified =
server.</font></div><div class=3D""><font color=3D"#000000" =
class=3D"">&nbsp; -m, --kill-server &nbsp; &nbsp; Terminate any running =
bitbake server.</font></div><div class=3D""><font color=3D"#000000" =
class=3D"">&nbsp; --observe-only &nbsp; &nbsp; &nbsp; &nbsp;Connect to a =
server as an observing-only client.</font></div><div class=3D""><font =
color=3D"#000000" class=3D"">&nbsp; --status-only &nbsp; &nbsp; &nbsp; =
&nbsp; Check the status of the remote bitbake server.</font></div><div =
class=3D""><font color=3D"#000000" class=3D"">&nbsp; -w WRITEEVENTLOG, =
--write-log=3DWRITEEVENTLOG</font></div><div class=3D""><font =
color=3D"#000000" class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Writes the event log of the =
build to a bitbake event</font></div><div class=3D""><font =
color=3D"#000000" class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; json file. Use '' (empty =
string) to assign the name</font></div><div class=3D""><font =
color=3D"#000000" class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
automatically.</font></div><div class=3D""><font color=3D"#000000" =
class=3D"">&nbsp; --runall=3DRUNALL &nbsp; &nbsp; &nbsp; Run the =
specified task for any recipe in the taskgraph</font></div><div =
class=3D""><font color=3D"#000000" class=3D"">&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; of the =
specified target (even if it wouldn't otherwise</font></div><div =
class=3D""><font color=3D"#000000" class=3D"">&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; have =
run).</font></div><div class=3D""><font color=3D"#000000" =
class=3D"">&nbsp; --runonly=3DRUNONLY &nbsp; &nbsp; Run only the =
specified task within the taskgraph of</font></div><div class=3D""><font =
color=3D"#000000" class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; the specified targets (and any =
task dependencies those</font></div><div class=3D""><font =
color=3D"#000000" class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; tasks may =
have).</font></div></blockquote><br class=3D""><blockquote type=3D"cite" =
class=3D""><div class=3D"">On 31-Jul-2019, at 10:15 PM, Khem Raj &lt;<a =
href=3D"mailto:raj.khem@gmail.com" class=3D"">raj.khem@gmail.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"">It seems to be a parallel build issue. Try to enforce -j1 and =
see if that helps<br class=3D""><br class=3D"">On Wed, Jul 31, 2019 at =
8:23 AM Niche Consulting India<br class=3D"">&lt;<a =
href=3D"mailto:contact@nicheconsult.in" =
class=3D"">contact@nicheconsult.in</a>&gt; wrote:<br =
class=3D""><blockquote type=3D"cite" class=3D""><br class=3D"">hello,<br =
class=3D""> i encountered this error when building qt5-image for ubuntu =
14.04 on warrior branch.<br class=3D""><br class=3D""><br class=3D"">Can =
someone tell me how to fix this? does this mean i checked out an older =
version of code?<br class=3D""><br class=3D"">=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94<br class=3D""># bit bake qt5-image<br class=3D"">=E2=80=A6.<br =
class=3D"">n file included from libavdevice/avdevice.h:51,<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;from libavdevice/avdevice.c:23:<br =
class=3D"">./libavformat/avformat.h:2070:17: note: declared here<br =
class=3D""> AVOutputFormat *av_oformat_next(const AVOutputFormat *f);<br =
class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;^~~~~~~~~~~~~~~<br =
class=3D"">libavdevice/avdevice.c:92:13: warning: 'av_iformat_next' is =
deprecated [-Wdeprecated-declarations]<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if=
 (!(prev =3D av_iformat_next(prev)))<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;^~=
<br class=3D"">In file included from libavdevice/avdevice.h:51,<br =
class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;from libavdevice/avdevice.c:23:<br =
class=3D"">./libavformat/avformat.h:2062:17: note: declared here<br =
class=3D""> AVInputFormat &nbsp;*av_iformat_next(const AVInputFormat =
&nbsp;*f);<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;^~~~~~~~~~~~~~~<br class=3D"">make[1]: *** write =
jobserver: Bad file descriptor. &nbsp;Stop.<br class=3D"">ERROR: =
oe_runmake failed<br class=3D"">make: *** [compile] Error 2<br =
class=3D"">WARNING: exit code 1 from a shell command.<br class=3D"">ERROR:=
 Function failed: do_compile (log file is located at =
/data/build_area/warrior/poky/build/tmp/work/raspberrypi3-poky-linux-gnuea=
bi/omxplayer/git-r4/temp/log.do_compile.26121)<br class=3D""><br =
class=3D"">--<br =
class=3D"">_______________________________________________<br =
class=3D"">poky mailing list<br class=3D""><a =
href=3D"mailto:poky@yoctoproject.org" =
class=3D"">poky@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/poky<br =
class=3D""></blockquote></div></div></blockquote></div><br =
class=3D""></div></body></html>=

--Apple-Mail=_3CB15FAD-A005-403D-88F9-A8F7624EA421--
