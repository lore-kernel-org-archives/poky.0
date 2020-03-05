Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com [209.85.222.48])
 by mx.groups.io with SMTP id smtpd.web12.14256.1583421564832942443
 for <poky@lists.yoctoproject.org>;
 Thu, 05 Mar 2020 07:19:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CasZRjcW;
 spf=pass (domain: gmail.com, ip: 209.85.222.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f48.google.com with SMTP id h32so2197711uah.4
        for <poky@lists.yoctoproject.org>; Thu, 05 Mar 2020 07:19:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0VMTCJ6KXOE8C0HzdS4u9y1f6Nfu6sxrZU4OVq9Z040=;
        b=CasZRjcWrlf9p0riE01caExmzWIKuwf/LVl9RUzDo6eC/V21hiWHJhZTHCVynGJniB
         KY8SoZl8gvxer/jnDR3UTn5q97m/GS0u3XDM0FoxZMThqv1+6d0n4mP3Av898FhQymUb
         7qdGWmfx+txp5MGquF2bP24tNHw06bsh4jF37vxNNW1i45R28njWpJFSkxXE7TNgjEn3
         Cter1OP3UroLQJ/j1KCJXF3SUq2MdS4Kbgmtc7cZ/FNo6UH/K01XJWLS08Qs/OcaWofu
         JUXxoXsD2Pk82eQZvQDLj9Ol54OURE5A8tTQDpkYpwoG/7iOgaWx11nSaE5oYstngSoR
         WieQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0VMTCJ6KXOE8C0HzdS4u9y1f6Nfu6sxrZU4OVq9Z040=;
        b=i2u4s9Qgu23whlCayGw6Z2rrXsR788l9uUHmlPqRuQFbHoBTQVKAoZnd5mTfPs6io1
         L3JQvOQtX5A9/skJLOtg8R0hP8A1fZdH1HQ5dtesp+jodtPXWQQcSE8cCidTWXbqxNg9
         f9Gt0fxX6ak161U7U4lRYVPUTJdyCgigjJE/wrLuy8QcpMBva7Hp0k5wmVcyIfEKdEr4
         D/t66qet0rMP863VEehwi3Jky2SufjOJHBKNN558RDC1XTP5R967cdvsd0YcOSamasqc
         KbyRDnOGAXY8MD0vPr8k8BMInMU9mErZmuz8/1uwEm6z6xWQbrwpYSYMPOmhlR7u9BzI
         kQPQ==
X-Gm-Message-State: ANhLgQ072i9wOeBMW8i3wNUBB53rVIEQBUqpjGoe6a51WZlRXrxon2Sn
	q2syldJt+SyFNVidRYu3YkJitvdmFCka2JIV8ZQ=
X-Google-Smtp-Source: ADFU+vsHRu0ROXTgm6yY4R+Y2aMAqFzoSqsdwYIBaCRTY1llXhznnbaMnj9Hd+bhdBZFK6xXiP9tlraxt6XmiLtI9+I=
X-Received: by 2002:a9f:244c:: with SMTP id 70mr1515819uaq.22.1583421563787;
 Thu, 05 Mar 2020 07:19:23 -0800 (PST)
MIME-Version: 1.0
References: <9BF44414-52D8-4025-BCC2-A797002C99F2@berg-solutions.de>
 <F09F2AFF-8B49-4842-A241-305538DFAA66@berg-solutions.de> <CANNYZj9DWd+sqT2kFAZf35dkYtFdKY4=AODTzcdtxSzZ78bfHw@mail.gmail.com>
 <86622418-22C5-4C4A-A683-958A03AAC2FE@berg-solutions.de> <46934A4B-185E-41C9-8F19-E067D7B28BA1@berg-solutions.de>
In-Reply-To: <46934A4B-185E-41C9-8F19-E067D7B28BA1@berg-solutions.de>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Thu, 5 Mar 2020 16:19:12 +0100
Message-ID: <CANNYZj_Ts2t=tLEQ-5qF2fnb5WHGEuzCyXd1nkEC_FiN9JvNbg@mail.gmail.com>
Subject: Re: [poky] How to see the parameters of a shell command execution (do_rootfs, qemu, update_font_cache) ?
To: Roelof Berg <rberg@berg-solutions.de>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d6dc0205a01d0f2b"

--000000000000d6dc0205a01d0f2b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Right; I think you should ask your distro supplier about this. It's really
hard to give advice if the problem cannot be reproduced, and it isn't
happening on plain poky.

Alex

On Thu, 5 Mar 2020 at 16:16, Roelof Berg <rberg@berg-solutions.de> wrote:

> Extract of log.do_rootfs, thanks:
>
> ... Configuring ... Downloading ... Installing ...
> Then at line 2136:
>
> Configuring avahi-locale-de.
> Configuring avahi-locale-fr.
>
> NOTE: Running intercept scripts:
> NOTE: > Executing update_font_cache intercept ...
> WARNING: The postinstall intercept hook 'update_font_cache' failed,
> details in log.do_rootfs
> NOTE: Exit code 1. Output:
> usage: qemu-arm [options] program [arguments...]
> Linux CPU emulator (compiled for arm emulation)
>
> Options and associated environment variables:
>
> Argument      Env-variable      Description
> -h                              print this help
> -help
> -g port       QEMU_GDB          wait gdb connection to 'port'
> -L path       QEMU_LD_PREFIX    set the elf interpreter prefix to 'path'
> -s size       QEMU_STACK_SIZE   set the stack size to 'size' bytes
> -cpu model    QEMU_CPU          select CPU (-cpu help for list)
> -E var=3Dvalue  QEMU_SET_ENV      sets targets environment variable (see
> below)
> -U var        QEMU_UNSET_ENV    unsets targets environment variable (see
> below)
> -0 argv0      QEMU_ARGV0        forces target process argv[0] to be 'argv=
0'
> -r uname      QEMU_UNAME        set qemu uname release string to 'uname'
> -B address    QEMU_GUEST_BASE   set guest_base address to 'address'
> -R size       QEMU_RESERVED_VA  reserve 'size' bytes for guest virtual
> address space
> -d item[,...] QEMU_LOG          enable logging of specified items (use '-=
d
> help' for a list of items)
> -D logfile    QEMU_LOG_FILENAME write logs to 'logfile' (default stderr)
> -p pagesize   QEMU_PAGESIZE     set the host page size to 'pagesize'
> -singlestep   QEMU_SINGLESTEP   run in singlestep mode
> -strace       QEMU_STRACE       log system calls
> -seed         QEMU_RAND_SEED    Seed for pseudo-random number generator
> -trace        QEMU_TRACE
>  [[enable=3D]<pattern>][,events=3D<file>][,file=3D<file>]
> -version      QEMU_VERSION      display version information and exit
>
> Defaults:
> QEMU_LD_PREFIX  =3D
> /yocto/meu-phyimx6-full-image/tmp/work/phyboard_mira_imx6_11-phytec-linux=
-gnueabi/remux-full-image/1.0-r0/rootfs
> QEMU_STACK_SIZE =3D 8388608 byte
>
> You can use -E and -U options or the QEMU_SET_ENV and
> QEMU_UNSET_ENV environment variables to set and unset
> environment variables for the target process.
> It is possible to provide several variables by separating them
> by commas in getsubopt(3) style. Additionally it is possible to
> provide the -E and -U options multiple times.
> The following lines are equivalent:
>     -E var1=3Dval2 -E var2=3Dval2 -U LD_PRELOAD -U LD_DEBUG
>     -E var1=3Dval2,var2=3Dval2 -U LD_PRELOAD,LD_DEBUG
>     QEMU_SET_ENV=3Dvar1=3Dval2,var2=3Dval2 QEMU_UNSET_ENV=3DLD_PRELOAD,LD=
_DEBUG
> Note that if you provide several changes to a single variable
> the last change will stay in effect.
>
> See <http://qemu.org/contribute/report-a-bug> for how to report bugs.
> More information on the QEMU project at <http://qemu.org>.
>
> NOTE: > Executing update_gio_module_cache intercept ...
> NOTE: > Executing update_icon_cache intercept ...
> WARNING: The postinstall intercept hook 'update_icon_cache' failed,
> details in log.do_rootfs
> NOTE: Exit code 1. Output:
> /yocto/meu-phyimx6-full-image/tmp/work/phyboard_mira_imx6_11-phytec-linux=
-gnueabi/remux-full-image/1.0-r0/intercept_scripts/update_icon_cache:
> line 6:
> /yocto/meu-phyimx6-full-image/tmp/work/phyboard_mira_imx6_11-phytec-linux=
-gnueabi/remux-full-image/1.0-r0/recipe-sysroot-native//gdk-pixbuf-2.0/gdk-=
pixbuf-query-loaders:
> No such file or directory
>
> NOTE: > Executing update_pixbuf_cache intercept ...
> WARNING: The postinstall intercept hook 'update_pixbuf_cache' failed,
> details in log.do_rootfs
> NOTE: Exit code 1. Output:
> /yocto/meu-phyimx6-full-image/tmp/work/phyboard_mira_imx6_11-phytec-linux=
-gnueabi/remux-full-image/1.0-r0/intercept_scripts/update_pixbuf_cache:
> line 8:
> /yocto/meu-phyimx6-full-image/tmp/work/phyboard_mira_imx6_11-phytec-linux=
-gnueabi/remux-full-image/1.0-r0/rootfs/usr/lib/gdk-pixbuf-2.0/2.10.0/loade=
rs/../loaders.cache:
> No such file or directory
>
> NOTE: Executing write_package_manifest ...
> DEBUG: Executing python function write_package_manifest
> DEBUG: Python function write_package_manifest finished
> NOTE: Executing license_create_manifest ...
>
> Then about 100 more (in this context) uninteresting lines repeating ...
> manifest ... finished ...
>
>
>
> Am 05.03.2020 um 15:37 schrieb Alexander Kanavin <alex.kanavin@gmail.com>=
:
>
> "  WARNING: The postinstall intercept hook =E2=80=9Aupdate_font_cache=E2=
=80=98 failed,
> details in log.do_rootfs"
>
> So what does log.do_rootfs say?
>
> Alex
>
>
>
>

--000000000000d6dc0205a01d0f2b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Right; I think you should ask your distro supplier ab=
out this. It&#39;s really hard to give advice if the problem cannot be repr=
oduced, and it isn&#39;t happening on plain poky.</div><div><br></div><div>=
Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, 5 Mar 2020 at 16:16, Roelof Berg &lt;<a href=3D"mai=
lto:rberg@berg-solutions.de">rberg@berg-solutions.de</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div style=3D"overflow-=
wrap: break-word;">Extract of log.do_rootfs, thanks:<div><div><br></div><di=
v><div>... Configuring ... Downloading ... Installing ...</div><div>Then at=
 line 2136:</div><div><br></div><div>Configuring avahi-locale-de.</div><div=
>Configuring avahi-locale-fr.</div><div><br></div><div>NOTE: Running interc=
ept scripts:</div><div>NOTE: &gt; Executing update_font_cache intercept ...=
</div><div>WARNING: The postinstall intercept hook &#39;update_font_cache&#=
39; failed, details in log.do_rootfs</div><div>NOTE: Exit code 1. Output:</=
div><div>usage: qemu-arm [options] program [arguments...]</div><div>Linux C=
PU emulator (compiled for arm emulation)</div><div><br></div><div>Options a=
nd associated environment variables:</div><div><br></div><div>Argument =C2=
=A0 =C2=A0 =C2=A0Env-variable =C2=A0 =C2=A0 =C2=A0Description</div><div>-h =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0print this help</div><div>-help =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=C2=A0</div><div>-g port =C2=A0 =C2=A0 =C2=A0 QEMU_GDB =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0wait gdb connection to &#39;port&#39;</div><div>-L path=
 =C2=A0 =C2=A0 =C2=A0 QEMU_LD_PREFIX =C2=A0 =C2=A0set the elf interpreter p=
refix to &#39;path&#39;</div><div>-s size =C2=A0 =C2=A0 =C2=A0 QEMU_STACK_S=
IZE =C2=A0 set the stack size to &#39;size&#39; bytes</div><div>-cpu model =
=C2=A0 =C2=A0QEMU_CPU =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0select CPU (-cpu he=
lp for list)</div><div>-E var=3Dvalue =C2=A0QEMU_SET_ENV =C2=A0 =C2=A0 =C2=
=A0sets targets environment variable (see below)</div><div>-U var =C2=A0 =
=C2=A0 =C2=A0 =C2=A0QEMU_UNSET_ENV =C2=A0 =C2=A0unsets targets environment =
variable (see below)</div><div>-0 argv0 =C2=A0 =C2=A0 =C2=A0QEMU_ARGV0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0forces target process argv[0] to be &#39;argv0&#39;=
</div><div>-r uname =C2=A0 =C2=A0 =C2=A0QEMU_UNAME =C2=A0 =C2=A0 =C2=A0 =C2=
=A0set qemu uname release string to &#39;uname&#39;</div><div>-B address =
=C2=A0 =C2=A0QEMU_GUEST_BASE =C2=A0 set guest_base address to &#39;address&=
#39;</div><div>-R size =C2=A0 =C2=A0 =C2=A0 QEMU_RESERVED_VA =C2=A0reserve =
&#39;size&#39; bytes for guest virtual address space</div><div>-d item[,...=
] QEMU_LOG =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0enable logging of specified it=
ems (use &#39;-d help&#39; for a list of items)</div><div>-D logfile =C2=A0=
 =C2=A0QEMU_LOG_FILENAME write logs to &#39;logfile&#39; (default stderr)</=
div><div>-p pagesize =C2=A0 QEMU_PAGESIZE =C2=A0 =C2=A0 set the host page s=
ize to &#39;pagesize&#39;</div><div>-singlestep =C2=A0 QEMU_SINGLESTEP =C2=
=A0 run in singlestep mode</div><div>-strace =C2=A0 =C2=A0 =C2=A0 QEMU_STRA=
CE =C2=A0 =C2=A0 =C2=A0 log system calls</div><div>-seed =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 QEMU_RAND_SEED =C2=A0 =C2=A0Seed for pseudo-random number genera=
tor</div><div>-trace =C2=A0 =C2=A0 =C2=A0 =C2=A0QEMU_TRACE =C2=A0 =C2=A0 =
=C2=A0 =C2=A0[[enable=3D]&lt;pattern&gt;][,events=3D&lt;file&gt;][,file=3D&=
lt;file&gt;]</div><div>-version =C2=A0 =C2=A0 =C2=A0QEMU_VERSION =C2=A0 =C2=
=A0 =C2=A0display version information and exit</div><div><br></div><div>Def=
aults:</div><div>QEMU_LD_PREFIX =C2=A0=3D /yocto/meu-phyimx6-full-image/tmp=
/work/phyboard_mira_imx6_11-phytec-linux-gnueabi/remux-full-image/1.0-r0/ro=
otfs</div><div>QEMU_STACK_SIZE =3D 8388608 byte</div><div><br></div><div>Yo=
u can use -E and -U options or the QEMU_SET_ENV and</div><div>QEMU_UNSET_EN=
V environment variables to set and unset</div><div>environment variables fo=
r the target process.</div><div>It is possible to provide several variables=
 by separating them</div><div>by commas in getsubopt(3) style. Additionally=
 it is possible to</div><div>provide the -E and -U options multiple times.<=
/div><div>The following lines are equivalent:</div><div>=C2=A0 =C2=A0 -E va=
r1=3Dval2 -E var2=3Dval2 -U LD_PRELOAD -U LD_DEBUG</div><div>=C2=A0 =C2=A0 =
-E var1=3Dval2,var2=3Dval2 -U LD_PRELOAD,LD_DEBUG</div><div>=C2=A0 =C2=A0 Q=
EMU_SET_ENV=3Dvar1=3Dval2,var2=3Dval2 QEMU_UNSET_ENV=3DLD_PRELOAD,LD_DEBUG<=
/div><div>Note that if you provide several changes to a single variable</di=
v><div>the last change will stay in effect.</div><div><br></div><div>See &l=
t;<a href=3D"http://qemu.org/contribute/report-a-bug" target=3D"_blank">htt=
p://qemu.org/contribute/report-a-bug</a>&gt; for how to report bugs.</div><=
div>More information on the QEMU project at &lt;<a href=3D"http://qemu.org"=
 target=3D"_blank">http://qemu.org</a>&gt;.</div><div><br></div><div>NOTE: =
&gt; Executing update_gio_module_cache intercept ...</div><div>NOTE: &gt; E=
xecuting update_icon_cache intercept ...</div><div>WARNING: The postinstall=
 intercept hook &#39;update_icon_cache&#39; failed, details in log.do_rootf=
s</div><div>NOTE: Exit code 1. Output:</div><div>/yocto/meu-phyimx6-full-im=
age/tmp/work/phyboard_mira_imx6_11-phytec-linux-gnueabi/remux-full-image/1.=
0-r0/intercept_scripts/update_icon_cache: line 6: /yocto/meu-phyimx6-full-i=
mage/tmp/work/phyboard_mira_imx6_11-phytec-linux-gnueabi/remux-full-image/1=
.0-r0/recipe-sysroot-native//gdk-pixbuf-2.0/gdk-pixbuf-query-loaders: No su=
ch file or directory</div><div><br></div><div>NOTE: &gt; Executing update_p=
ixbuf_cache intercept ...</div><div>WARNING: The postinstall intercept hook=
 &#39;update_pixbuf_cache&#39; failed, details in log.do_rootfs</div><div>N=
OTE: Exit code 1. Output:</div><div>/yocto/meu-phyimx6-full-image/tmp/work/=
phyboard_mira_imx6_11-phytec-linux-gnueabi/remux-full-image/1.0-r0/intercep=
t_scripts/update_pixbuf_cache: line 8: /yocto/meu-phyimx6-full-image/tmp/wo=
rk/phyboard_mira_imx6_11-phytec-linux-gnueabi/remux-full-image/1.0-r0/rootf=
s/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders/../loaders.cache: No such file or d=
irectory</div><div><br></div><div>NOTE: Executing write_package_manifest ..=
.</div><div>DEBUG: Executing python function write_package_manifest</div><d=
iv>DEBUG: Python function write_package_manifest finished</div><div>NOTE: E=
xecuting license_create_manifest ...</div><div><br></div><div>Then about 10=
0 more (in this context) uninteresting lines repeating ... manifest ... fin=
ished ...</div><div><br></div></div><div><br></div><br><blockquote type=3D"=
cite"><div><div style=3D"overflow-wrap: break-word;"><div><blockquote type=
=3D"cite"><div>Am 05.03.2020 um 15:37 schrieb Alexander Kanavin &lt;<a href=
=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com=
</a>&gt;:</div><br><div><div dir=3D"ltr"><div>&quot;=C2=A0 WARNING: The pos=
tinstall intercept hook =E2=80=9Aupdate_font_cache=E2=80=98 failed, details=
 in log.do_rootfs&quot;</div><div><br></div><div>So what does log.do_rootfs=
 say?</div><div><br></div><div>Alex<br></div><div><br></div><div><br></div>=
</div></div></blockquote></div></div></div></blockquote></div><br></div></b=
lockquote></div>

--000000000000d6dc0205a01d0f2b--
