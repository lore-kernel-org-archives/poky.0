Received: from wp148.webpack.hosteurope.de (wp148.webpack.hosteurope.de [80.237.132.155])
 by mx.groups.io with SMTP id smtpd.web12.14124.1583421402900702092
 for <poky@lists.yoctoproject.org>;
 Thu, 05 Mar 2020 07:16:43 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: berg-solutions.de, ip: 80.237.132.155, mailfrom: rberg@berg-solutions.de)
Received: from ip1f126570.dynamic.kabel-deutschland.de ([31.18.101.112] helo=[10.8.0.2]); authenticated
	by wp148.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1j9sEq-00035H-C2; Thu, 05 Mar 2020 16:16:41 +0100
From: "Roelof" <rberg@berg-solutions.de>
Message-Id: <46934A4B-185E-41C9-8F19-E067D7B28BA1@berg-solutions.de>
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: [poky] How to see the parameters of a shell command execution (do_rootfs, qemu, update_font_cache) ?
Date: Thu, 5 Mar 2020 16:16:38 +0100
In-Reply-To: <86622418-22C5-4C4A-A683-958A03AAC2FE@berg-solutions.de>
Cc: poky@lists.yoctoproject.org
To: Alexander Kanavin <alex.kanavin@gmail.com>
References: <9BF44414-52D8-4025-BCC2-A797002C99F2@berg-solutions.de>
 <F09F2AFF-8B49-4842-A241-305538DFAA66@berg-solutions.de>
 <CANNYZj9DWd+sqT2kFAZf35dkYtFdKY4=AODTzcdtxSzZ78bfHw@mail.gmail.com>
 <86622418-22C5-4C4A-A683-958A03AAC2FE@berg-solutions.de>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-bounce-key: webpack.hosteurope.de;rberg@berg-solutions.de;1583421403;9e26ace5;
X-HE-SMSGID: 1j9sEq-00035H-C2
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_7750BF49-68F3-47F4-ACD3-2B4D049F74BC"

--Apple-Mail=_7750BF49-68F3-47F4-ACD3-2B4D049F74BC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Extract of log.do_rootfs, thanks:

... Configuring ... Downloading ... Installing ...
Then at line 2136:

Configuring avahi-locale-de.
Configuring avahi-locale-fr.

NOTE: Running intercept scripts:
NOTE: > Executing update_font_cache intercept ...
WARNING: The postinstall intercept hook 'update_font_cache' failed, =
details in log.do_rootfs
NOTE: Exit code 1. Output:
usage: qemu-arm [options] program [arguments...]
Linux CPU emulator (compiled for arm emulation)

Options and associated environment variables:

Argument      Env-variable      Description
-h                              print this help
-help                          =20
-g port       QEMU_GDB          wait gdb connection to 'port'
-L path       QEMU_LD_PREFIX    set the elf interpreter prefix to 'path'
-s size       QEMU_STACK_SIZE   set the stack size to 'size' bytes
-cpu model    QEMU_CPU          select CPU (-cpu help for list)
-E var=3Dvalue  QEMU_SET_ENV      sets targets environment variable (see =
below)
-U var        QEMU_UNSET_ENV    unsets targets environment variable (see =
below)
-0 argv0      QEMU_ARGV0        forces target process argv[0] to be =
'argv0'
-r uname      QEMU_UNAME        set qemu uname release string to 'uname'
-B address    QEMU_GUEST_BASE   set guest_base address to 'address'
-R size       QEMU_RESERVED_VA  reserve 'size' bytes for guest virtual =
address space
-d item[,...] QEMU_LOG          enable logging of specified items (use =
'-d help' for a list of items)
-D logfile    QEMU_LOG_FILENAME write logs to 'logfile' (default stderr)
-p pagesize   QEMU_PAGESIZE     set the host page size to 'pagesize'
-singlestep   QEMU_SINGLESTEP   run in singlestep mode
-strace       QEMU_STRACE       log system calls
-seed         QEMU_RAND_SEED    Seed for pseudo-random number generator
-trace        QEMU_TRACE        =
[[enable=3D]<pattern>][,events=3D<file>][,file=3D<file>]
-version      QEMU_VERSION      display version information and exit

Defaults:
QEMU_LD_PREFIX  =3D =
/yocto/meu-phyimx6-full-image/tmp/work/phyboard_mira_imx6_11-phytec-linux-=
gnueabi/remux-full-image/1.0-r0/rootfs
QEMU_STACK_SIZE =3D 8388608 byte

You can use -E and -U options or the QEMU_SET_ENV and
QEMU_UNSET_ENV environment variables to set and unset
environment variables for the target process.
It is possible to provide several variables by separating them
by commas in getsubopt(3) style. Additionally it is possible to
provide the -E and -U options multiple times.
The following lines are equivalent:
    -E var1=3Dval2 -E var2=3Dval2 -U LD_PRELOAD -U LD_DEBUG
    -E var1=3Dval2,var2=3Dval2 -U LD_PRELOAD,LD_DEBUG
    QEMU_SET_ENV=3Dvar1=3Dval2,var2=3Dval2 =
QEMU_UNSET_ENV=3DLD_PRELOAD,LD_DEBUG
Note that if you provide several changes to a single variable
the last change will stay in effect.

See <http://qemu.org/contribute/report-a-bug> for how to report bugs.
More information on the QEMU project at <http://qemu.org>.

NOTE: > Executing update_gio_module_cache intercept ...
NOTE: > Executing update_icon_cache intercept ...
WARNING: The postinstall intercept hook 'update_icon_cache' failed, =
details in log.do_rootfs
NOTE: Exit code 1. Output:
=
/yocto/meu-phyimx6-full-image/tmp/work/phyboard_mira_imx6_11-phytec-linux-=
gnueabi/remux-full-image/1.0-r0/intercept_scripts/update_icon_cache: =
line 6: =
/yocto/meu-phyimx6-full-image/tmp/work/phyboard_mira_imx6_11-phytec-linux-=
gnueabi/remux-full-image/1.0-r0/recipe-sysroot-native//gdk-pixbuf-2.0/gdk-=
pixbuf-query-loaders: No such file or directory

NOTE: > Executing update_pixbuf_cache intercept ...
WARNING: The postinstall intercept hook 'update_pixbuf_cache' failed, =
details in log.do_rootfs
NOTE: Exit code 1. Output:
=
/yocto/meu-phyimx6-full-image/tmp/work/phyboard_mira_imx6_11-phytec-linux-=
gnueabi/remux-full-image/1.0-r0/intercept_scripts/update_pixbuf_cache: =
line 8: =
/yocto/meu-phyimx6-full-image/tmp/work/phyboard_mira_imx6_11-phytec-linux-=
gnueabi/remux-full-image/1.0-r0/rootfs/usr/lib/gdk-pixbuf-2.0/2.10.0/loade=
rs/../loaders.cache: No such file or directory

NOTE: Executing write_package_manifest ...
DEBUG: Executing python function write_package_manifest
DEBUG: Python function write_package_manifest finished
NOTE: Executing license_create_manifest ...

Then about 100 more (in this context) uninteresting lines repeating ... =
manifest ... finished ...



>> Am 05.03.2020 um 15:37 schrieb Alexander Kanavin =
<alex.kanavin@gmail.com <mailto:alex.kanavin@gmail.com>>:
>>=20
>> "  WARNING: The postinstall intercept hook =E2=80=9Aupdate_font_cache=E2=
=80=98 failed, details in log.do_rootfs"
>>=20
>> So what does log.do_rootfs say?
>>=20
>> Alex
>>=20
>>=20


--Apple-Mail=_7750BF49-68F3-47F4-ACD3-2B4D049F74BC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Extract of log.do_rootfs, thanks:<div><div><br =
class=3D""></div><div><div>... Configuring ... Downloading ... =
Installing ...</div><div>Then at line 2136:</div><div><br =
class=3D""></div><div>Configuring avahi-locale-de.</div><div>Configuring =
avahi-locale-fr.</div><div><br class=3D""></div><div>NOTE: Running =
intercept scripts:</div><div>NOTE: &gt; Executing update_font_cache =
intercept ...</div><div>WARNING: The postinstall intercept hook =
'update_font_cache' failed, details in log.do_rootfs</div><div>NOTE: =
Exit code 1. Output:</div><div>usage: qemu-arm [options] program =
[arguments...]</div><div>Linux CPU emulator (compiled for arm =
emulation)</div><div><br class=3D""></div><div>Options and associated =
environment variables:</div><div><br class=3D""></div><div>Argument =
&nbsp; &nbsp; &nbsp;Env-variable &nbsp; &nbsp; =
&nbsp;Description</div><div>-h &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;print this =
help</div><div>-help &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div><div>-g port &nbsp; =
&nbsp; &nbsp; QEMU_GDB &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;wait gdb =
connection to 'port'</div><div>-L path &nbsp; &nbsp; &nbsp; =
QEMU_LD_PREFIX &nbsp; &nbsp;set the elf interpreter prefix to =
'path'</div><div>-s size &nbsp; &nbsp; &nbsp; QEMU_STACK_SIZE &nbsp; set =
the stack size to 'size' bytes</div><div>-cpu model &nbsp; =
&nbsp;QEMU_CPU &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;select CPU (-cpu help =
for list)</div><div>-E var=3Dvalue &nbsp;QEMU_SET_ENV &nbsp; &nbsp; =
&nbsp;sets targets environment variable (see below)</div><div>-U var =
&nbsp; &nbsp; &nbsp; &nbsp;QEMU_UNSET_ENV &nbsp; &nbsp;unsets targets =
environment variable (see below)</div><div>-0 argv0 &nbsp; &nbsp; =
&nbsp;QEMU_ARGV0 &nbsp; &nbsp; &nbsp; &nbsp;forces target process =
argv[0] to be 'argv0'</div><div>-r uname &nbsp; &nbsp; &nbsp;QEMU_UNAME =
&nbsp; &nbsp; &nbsp; &nbsp;set qemu uname release string to =
'uname'</div><div>-B address &nbsp; &nbsp;QEMU_GUEST_BASE &nbsp; set =
guest_base address to 'address'</div><div>-R size &nbsp; &nbsp; &nbsp; =
QEMU_RESERVED_VA &nbsp;reserve 'size' bytes for guest virtual address =
space</div><div>-d item[,...] QEMU_LOG &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;enable logging of specified items (use '-d help' for a list of =
items)</div><div>-D logfile &nbsp; &nbsp;QEMU_LOG_FILENAME write logs to =
'logfile' (default stderr)</div><div>-p pagesize &nbsp; QEMU_PAGESIZE =
&nbsp; &nbsp; set the host page size to 'pagesize'</div><div>-singlestep =
&nbsp; QEMU_SINGLESTEP &nbsp; run in singlestep mode</div><div>-strace =
&nbsp; &nbsp; &nbsp; QEMU_STRACE &nbsp; &nbsp; &nbsp; log system =
calls</div><div>-seed &nbsp; &nbsp; &nbsp; &nbsp; QEMU_RAND_SEED &nbsp; =
&nbsp;Seed for pseudo-random number generator</div><div>-trace &nbsp; =
&nbsp; &nbsp; &nbsp;QEMU_TRACE &nbsp; &nbsp; &nbsp; =
&nbsp;[[enable=3D]&lt;pattern&gt;][,events=3D&lt;file&gt;][,file=3D&lt;fil=
e&gt;]</div><div>-version &nbsp; &nbsp; &nbsp;QEMU_VERSION &nbsp; &nbsp; =
&nbsp;display version information and exit</div><div><br =
class=3D""></div><div>Defaults:</div><div>QEMU_LD_PREFIX &nbsp;=3D =
/yocto/meu-phyimx6-full-image/tmp/work/phyboard_mira_imx6_11-phytec-linux-=
gnueabi/remux-full-image/1.0-r0/rootfs</div><div>QEMU_STACK_SIZE =3D =
8388608 byte</div><div><br class=3D""></div><div>You can use -E and -U =
options or the QEMU_SET_ENV and</div><div>QEMU_UNSET_ENV environment =
variables to set and unset</div><div>environment variables for the =
target process.</div><div>It is possible to provide several variables by =
separating them</div><div>by commas in getsubopt(3) style. Additionally =
it is possible to</div><div>provide the -E and -U options multiple =
times.</div><div>The following lines are equivalent:</div><div>&nbsp; =
&nbsp; -E var1=3Dval2 -E var2=3Dval2 -U LD_PRELOAD -U =
LD_DEBUG</div><div>&nbsp; &nbsp; -E var1=3Dval2,var2=3Dval2 -U =
LD_PRELOAD,LD_DEBUG</div><div>&nbsp; &nbsp; =
QEMU_SET_ENV=3Dvar1=3Dval2,var2=3Dval2 =
QEMU_UNSET_ENV=3DLD_PRELOAD,LD_DEBUG</div><div>Note that if you provide =
several changes to a single variable</div><div>the last change will stay =
in effect.</div><div><br class=3D""></div><div>See &lt;<a =
href=3D"http://qemu.org/contribute/report-a-bug" =
class=3D"">http://qemu.org/contribute/report-a-bug</a>&gt; for how to =
report bugs.</div><div>More information on the QEMU project at &lt;<a =
href=3D"http://qemu.org" class=3D"">http://qemu.org</a>&gt;.</div><div><br=
 class=3D""></div><div>NOTE: &gt; Executing update_gio_module_cache =
intercept ...</div><div>NOTE: &gt; Executing update_icon_cache intercept =
...</div><div>WARNING: The postinstall intercept hook =
'update_icon_cache' failed, details in log.do_rootfs</div><div>NOTE: =
Exit code 1. =
Output:</div><div>/yocto/meu-phyimx6-full-image/tmp/work/phyboard_mira_imx=
6_11-phytec-linux-gnueabi/remux-full-image/1.0-r0/intercept_scripts/update=
_icon_cache: line 6: =
/yocto/meu-phyimx6-full-image/tmp/work/phyboard_mira_imx6_11-phytec-linux-=
gnueabi/remux-full-image/1.0-r0/recipe-sysroot-native//gdk-pixbuf-2.0/gdk-=
pixbuf-query-loaders: No such file or directory</div><div><br =
class=3D""></div><div>NOTE: &gt; Executing update_pixbuf_cache intercept =
...</div><div>WARNING: The postinstall intercept hook =
'update_pixbuf_cache' failed, details in log.do_rootfs</div><div>NOTE: =
Exit code 1. =
Output:</div><div>/yocto/meu-phyimx6-full-image/tmp/work/phyboard_mira_imx=
6_11-phytec-linux-gnueabi/remux-full-image/1.0-r0/intercept_scripts/update=
_pixbuf_cache: line 8: =
/yocto/meu-phyimx6-full-image/tmp/work/phyboard_mira_imx6_11-phytec-linux-=
gnueabi/remux-full-image/1.0-r0/rootfs/usr/lib/gdk-pixbuf-2.0/2.10.0/loade=
rs/../loaders.cache: No such file or directory</div><div><br =
class=3D""></div><div>NOTE: Executing write_package_manifest =
...</div><div>DEBUG: Executing python function =
write_package_manifest</div><div>DEBUG: Python function =
write_package_manifest finished</div><div>NOTE: Executing =
license_create_manifest ...</div><div><br class=3D""></div><div>Then =
about 100 more (in this context) uninteresting lines repeating ... =
manifest ... finished ...</div><div class=3D""><br =
class=3D""></div></div><div><br class=3D""></div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; line-break: =
after-white-space;" class=3D""><div class=3D""><blockquote type=3D"cite" =
class=3D""><div class=3D"">Am 05.03.2020 um 15:37 schrieb Alexander =
Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" =
class=3D"">alex.kanavin@gmail.com</a>&gt;:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D""><div class=3D"">"&nbsp; WARNING: The postinstall intercept =
hook =E2=80=9Aupdate_font_cache=E2=80=98 failed, details in =
log.do_rootfs"</div><div class=3D""><br class=3D""></div><div =
class=3D"">So what does log.do_rootfs say?</div><div class=3D""><br =
class=3D""></div><div class=3D"">Alex<br class=3D""></div><div =
class=3D""><br class=3D""></div><div class=3D""><br =
class=3D""></div></div></div></blockquote></div></div></div></blockquote><=
/div><br class=3D""></body></html>=

--Apple-Mail=_7750BF49-68F3-47F4-ACD3-2B4D049F74BC--
