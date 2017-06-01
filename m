Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC2FBE00B47; Thu,  1 Jun 2017 00:01:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.171 listed in dnsbl.sorbs.net]
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C1F7E00ADD
	for <poky@yoctoproject.org>; Thu,  1 Jun 2017 00:01:10 -0700 (PDT)
Received: by mail-io0-f171.google.com with SMTP id k91so27816531ioi.1
	for <poky@yoctoproject.org>; Thu, 01 Jun 2017 00:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=dPG2d3SmYL/xmyXdjHSU5nzUxs6rXKy7AH9U+RMPWfM=;
	b=gX83nxTMhVDOCV+3egHSrdfqjtnC1cOiJCICgNTt91VX4hSnwAoxB8KaMMiZ9olS2U
	HKOYXDQra/N27PqLxihcJIBtvd+yzdf6U6fBP+yXMyZN4FyNdrKX3TvrXwDhIpfxHCRY
	sd5mDup3DLOKOrwC9wQztExFWRn0ALIBQj7P3wV6HB9L3GPCZBnQYkMsCgs76x1yH2ea
	YmNAlz6BWqEQ5CsJ0kd8zRNkQmYjqX6L+K/ocwC4K8E3shm2DkZw+D7PBwcvz4QrXdfV
	E+n6lNPUAk95UQtMQBZS3fYKvvMQWQqCerIhgFiZ3frEVgMWUxcmIBoPEqqu5OwiUVdM
	p9Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=dPG2d3SmYL/xmyXdjHSU5nzUxs6rXKy7AH9U+RMPWfM=;
	b=mgbsNys2EJtTt/i8z1daIza6+3o9AnoH8wWotGCpWRG3IY1TKDg5BnMAw8/+6qlxPl
	Oo1PvwQ9b5z0oleK7aduEwbATaaQ21ioav5ICcAkNSmfSqlWbIyYii7NK1j3yATJqMkw
	aqfC7lnx98vQCtP0cqo1jEXZT+U3LEM/M8BTxECImSozeMfX6WrfsbaSaXJ5YLOGp+FN
	XR/bFcA+LKmp42562hVogh8tRzJeM4GGYZlIXRZwMpgbi3IBdz2eyUzST8PTgzrXJkGR
	MIxPI0fJ6BCsC5uZvWRPlkWLbR/EN+R8IaqXM/JDjo621FB199JFJ3NIqddI6knerGqL
	G3tw==
X-Gm-Message-State: AODbwcBa+yjb8pEVX7ScP0PoOPTqlRO2UQ4sQ78P57jbgfIh2nz9LIiS
	ztnui76gxONOI5e8+D3epP/wOLeyLTYk
X-Received: by 10.107.186.133 with SMTP id k127mr28599122iof.83.1496300470465; 
	Thu, 01 Jun 2017 00:01:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.164.170 with HTTP; Thu, 1 Jun 2017 00:00:40 -0700 (PDT)
In-Reply-To: <CALW5WRzihq1UrO8ckvd-rjfb9aWtnu118ePx2jn7=0KH4r-B-g@mail.gmail.com>
References: <CALW5WRzihq1UrO8ckvd-rjfb9aWtnu118ePx2jn7=0KH4r-B-g@mail.gmail.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Thu, 1 Jun 2017 10:00:40 +0300
Message-ID: <CAHiDW_EPY0tx2AC28bJxipn=btF7iPfrV1iRMHAJwRA_LaF7=A@mail.gmail.com>
To: =?UTF-8?Q?=C8=98tefan_Golinschi?= <stefan.golinschi@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: morty: matchbox-desktop fails due to missing gdk-x11-3.0
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
X-List-Received-Date: Thu, 01 Jun 2017 07:01:14 -0000
Content-Type: multipart/alternative; boundary="94eb2c05d8ca0556f90550e09ad4"

--94eb2c05d8ca0556f90550e09ad4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 31 May 2017 at 19:17, =C8=98tefan Golinschi <stefan.golinschi@gmail.com>
wrote:

> I am trying to build a core-image-sato image for an imx6s SoC, but the
> build fails during the build of matchbox-desktop due to a missing package=
:
> gdk-x11-3.0.
> In my local.conf:
> IMAGE_INSTALL_append =3D " gdk-pixbuf".
> Any help?
>
> Below is the error log:
> $ bitbake core-image-sato
> ERROR: matchbox-panel-2-2.11-r0 do_configure: configure failed
> ERROR: matchbox-panel-2-2.11-r0 do_configure: Function failed:
> do_configure (log file is located at /home/user/workspace/yocto/
> build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/
> matchbox-panel-2/2.11-r0/temp/log.do_configure.17394)
> ERROR: Logfile of failure stored in: /home/user/workspace/yocto/
> build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/
> matchbox-panel-2/2.11-r0/temp/log.do_configure.17394
> ...
> | checking dynamic linker characteristics... GNU/Linux ld.so
> | checking how to hardcode library paths into programs... immediate
> | checking whether stripping libraries is possible... yes
> | checking if libtool supports shared libraries... yes
> | checking whether to build shared libraries... yes
> | checking whether to build static libraries... no
> | checking whether gcc understands -Wall... yes
> | checking whether gcc understands -Wstrict-prototypes... yes
> | checking whether gcc understands -Wnested-externs... yes
> | checking whether gcc understands -Werror=3Dmissing-prototypes... yes
> | checking whether gcc understands -Werror=3Dimplicit-function-declaratio=
n...
> yes
> | checking whether gcc understands -Werror=3Dpointer-arith... yes
> | checking whether gcc understands -Werror=3Dinit-self... yes
> | checking whether gcc understands -Werror=3Dformat-security... no
> | checking whether gcc understands -Werror=3Dformat=3D2... yes
> | checking whether gcc understands -Werror=3Dmissing-include-dirs... yes
> | checking whether gcc understands -Werror=3Dreturn-type... yes
> | checking what warning flags to pass to the C compiler...  -Wall
> -Wstrict-prototypes -Wnested-externs -Werror=3Dmissing-prototypes
> -Werror=3Dimplicit-function-declaration -Werror=3Dpointer-arith
> -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs
> -Werror=3Dreturn-type
> | checking what language compliance flags to pass to the C compiler...
> | checking for arm-poky-linux-gnueabi-pkg-config... no
> | checking for pkg-config... /home/user/workspace/yocto/
> build/tmp/sysroots/x86_64-linux/usr/bin/pkg-config
> | configure: WARNING: using cross tools not prefixed with host triplet
> | checking pkg-config is at least version 0.9.0... yes
> | checking for MATCHBOX_PANEL... no
> | configure: error: Package requirements (glib-2.0
> |                   gmodule-export-2.0
> |                   x11
> |                   gdk-x11-3.0
> |                   gtk+-3.0) were not met:
>
|
> | No package 'gdk-x11-3.0' found
>


For the record this is matchbox-panel failing, not matchbox-desktop.

That failure is quite surprising ... Does anything modify the gtk+3 recipe
or configuration? Otherwise I don't see how gtk+3 could avoid providing
gdk-x11-3.0.pc in a situation where matchbox-panel would still try to
build.

I think this could happen e.g. if you have "x11" in distro features but
force gtk+3 to build without x11 packageconfig.

Jussi


|
> | Consider adjusting the PKG_CONFIG_PATH environment variable if you
> | installed software in a non-standard prefix.
> |
> | Alternatively, you may set the environment variables
> MATCHBOX_PANEL_CFLAGS
> | and MATCHBOX_PANEL_LIBS to avoid the need to call pkg-config.
> | See the pkg-config man page for more details.
> | WARNING: /home/user/workspace/yocto/build/tmp/work/cortexa9hf-
> neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/temp/run.do_configure.17=
394:1
> exit 1 from 'exit 1'
> | ERROR: Function failed: do_configure (log file is located at
> /home/user/workspace/yocto/build/tmp/work/cortexa9hf-
> neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/temp/
> log.do_configure.17394)
>
> Thanks,
> Stefan
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
>

--94eb2c05d8ca0556f90550e09ad4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 3=
1 May 2017 at 19:17, =C8=98tefan Golinschi <span dir=3D"ltr">&lt;<a href=3D=
"mailto:stefan.golinschi@gmail.com" target=3D"_blank">stefan.golinschi@gmai=
l.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"l=
tr">I am trying to build a core-image-sato image for an imx6s SoC, but the =
build fails during the build of matchbox-desktop due to a missing package: =
gdk-x11-3.0.<div>In my local.conf:</div><div>IMAGE_INSTALL_append =3D=C2=A0=
&quot; gdk-pixbuf&quot;.</div><div><div>Any help?<br><div><br></div><div>Be=
low is the error log:</div><div><div>$ bitbake core-image-sato<br><div><div=
>ERROR: matchbox-panel-2-2.11-r0 do_configure: configure failed</div><div>E=
RROR: matchbox-panel-2-2.11-r0 do_configure: Function failed: do_configure =
(log file is located at /home/user/workspace/yocto/<wbr>build/tmp/work/cort=
exa9hf-<wbr>neon-poky-linux-gnueabi/<wbr>matchbox-panel-2/2.11-r0/temp/<wbr=
>log.do_configure.17394)</div><div>ERROR: Logfile of failure stored in: /ho=
me/user/workspace/yocto/<wbr>build/tmp/work/cortexa9hf-<wbr>neon-poky-linux=
-gnueabi/<wbr>matchbox-panel-2/2.11-r0/temp/<wbr>log.do_configure.17394</di=
v><div>...</div><div>| checking dynamic linker characteristics... GNU/Linux=
 ld.so</div><div>| checking how to hardcode library paths into programs... =
immediate</div><div>| checking whether stripping libraries is possible... y=
es</div><div>| checking if libtool supports shared libraries... yes</div><d=
iv>| checking whether to build shared libraries... yes</div><div>| checking=
 whether to build static libraries... no</div><div>| checking whether gcc u=
nderstands -Wall... yes</div><div>| checking whether gcc understands -Wstri=
ct-prototypes... yes</div><div>| checking whether gcc understands -Wnested-=
externs... yes</div><div>| checking whether gcc understands -Werror=3Dmissi=
ng-prototypes... yes</div><div>| checking whether gcc understands -Werror=
=3Dimplicit-function-<wbr>declaration... yes</div><div>| checking whether g=
cc understands -Werror=3Dpointer-arith... yes</div><div>| checking whether =
gcc understands -Werror=3Dinit-self... yes</div><div>| checking whether gcc=
 understands -Werror=3Dformat-security... no</div><div>| checking whether g=
cc understands -Werror=3Dformat=3D2... yes</div><div>| checking whether gcc=
 understands -Werror=3Dmissing-include-dirs..<wbr>. yes</div><div>| checkin=
g whether gcc understands -Werror=3Dreturn-type... yes</div><div>| checking=
 what warning flags to pass to the C compiler... =C2=A0-Wall -Wstrict-proto=
types -Wnested-externs -Werror=3Dmissing-prototypes -Werror=3Dimplicit-func=
tion-<wbr>declaration -Werror=3Dpointer-arith -Werror=3Dinit-self -Werror=
=3Dformat=3D2 -Werror=3Dmissing-include-dirs -Werror=3Dreturn-type</div><di=
v>| checking what language compliance flags to pass to the C compiler...</d=
iv><div>| checking for arm-poky-linux-gnueabi-pkg-<wbr>config... no</div><d=
iv>| checking for pkg-config... /home/user/workspace/yocto/<wbr>build/tmp/s=
ysroots/x86_64-<wbr>linux/usr/bin/pkg-config</div><div>| configure: WARNING=
: using cross tools not prefixed with host triplet</div><div>| checking pkg=
-config is at least version 0.9.0... yes</div><div>| checking for MATCHBOX_=
PANEL... no</div><div>| configure: error: Package requirements (glib-2.0</d=
iv><div>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 gm=
odule-export-2.0</div><div>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 x11</div><div>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 gdk-x11-3.0</div><div>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 gtk+-3.0) were not met:=C2=A0</div></div=
></div></div></div></div></div></blockquote><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div dir=3D"ltr"><div><div><div><div><div><div>|=C2=A0</div><div>| No packa=
ge &#39;gdk-x11-3.0&#39; found</div></div></div></div></div></div></div></b=
lockquote><div><br></div><div><br></div><div>For the record this is matchbo=
x-panel failing, not matchbox-desktop.</div><div><br></div><div>That failur=
e is quite surprising ... Does anything modify the gtk+3 recipe or configur=
ation? Otherwise I don&#39;t see how gtk+3 could avoid providing gdk-x11-3.=
0.pc in a situation where matchbox-panel would still try to build.=C2=A0</d=
iv><div><br></div><div>I think this could happen e.g. if you have &quot;x11=
&quot; in distro features but force gtk+3 to build without x11 packageconfi=
g. =C2=A0</div><div><br></div><div>Jussi</div><div><br></div><div><br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div><div><div><div><=
div>|=C2=A0</div><div>| Consider adjusting the PKG_CONFIG_PATH environment =
variable if you</div><div>| installed software in a non-standard prefix.</d=
iv><div>|=C2=A0</div><div>| Alternatively, you may set the environment vari=
ables MATCHBOX_PANEL_CFLAGS</div><div>| and MATCHBOX_PANEL_LIBS to avoid th=
e need to call pkg-config.</div><div>| See the pkg-config man page for more=
 details.</div><div>| WARNING: /home/user/workspace/yocto/<wbr>build/tmp/wo=
rk/cortexa9hf-<wbr>neon-poky-linux-gnueabi/<wbr>matchbox-panel-2/2.11-r0/te=
mp/<wbr>run.do_configure.17394:1 exit 1 from &#39;exit 1&#39;</div><div>| E=
RROR: Function failed: do_configure (log file is located at /home/user/work=
space/yocto/<wbr>build/tmp/work/cortexa9hf-<wbr>neon-poky-linux-gnueabi/<wb=
r>matchbox-panel-2/2.11-r0/temp/<wbr>log.do_configure.17394)</div><div><br>=
</div><div class=3D"m_-3191513226578055360gmail_signature"><div dir=3D"ltr"=
><div>Thanks,</div><div>Stefan</div></div></div>
</div></div></div></div></div></div>
<br>--<br>
______________________________<wbr>_________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/poky</a><br=
>
<br></blockquote></div><br></div></div>

--94eb2c05d8ca0556f90550e09ad4--
