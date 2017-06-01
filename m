Return-Path: <stefan.golinschi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94B1AE00B47; Thu,  1 Jun 2017 00:52:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (stefan.golinschi[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.171 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.171 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f171.google.com (mail-qt0-f171.google.com
	[209.85.216.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC3D3E00ADD
	for <poky@yoctoproject.org>; Thu,  1 Jun 2017 00:52:19 -0700 (PDT)
Received: by mail-qt0-f171.google.com with SMTP id f55so30177314qta.3
	for <poky@yoctoproject.org>; Thu, 01 Jun 2017 00:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=p7oG0WhxPQ1rgzf78OsA621lv802aKmn/0ZnPXKAkF0=;
	b=mZdCR+qzGjlV/Pri0N8CzOptIvr4iWAA0/KBn0jzmtZqGlANCghloP1nEpPlY4ZGWB
	wjr/Eb9PHD0O3IgLr9XN8jdPYPVhO8ehUnjDCVhQDnRPGRMo62ZIWLte7lXHFSnDxIrk
	x+Fbtsuiic4v30WDCvLt5Xbytddcy1stmR3E4A9Rg1UncDkUibREPj43NXC1RW3OGKow
	5hEYdeffeJdpB1g9v386lEUrPLxB43LTgUjQDn2i08f4tOIY+pYaF/o0K1FeFoar2ZXo
	ZePZcIjFsFtak6tJlTTb+Md1GusvwQYarUA6E7C3aWG6tk35kZ2lHRC1w4QzfD/wffak
	f6MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=p7oG0WhxPQ1rgzf78OsA621lv802aKmn/0ZnPXKAkF0=;
	b=KTI0M1KmeOFgQH4eIenUVOqKUB/XjR7DHDX0uguR57HdtSI2+YHI19Jz/5QFqnDv5A
	dPJuUM8YHVYoCeIAGD4XVl2zsVAcmiM3go3/5hqF/yt1N0V2ECjVyqC/Or2F1dqvTTbw
	UmHzoVTztm5T/QX+njAqwvAm8icjFretcAZp2WJ8QQ/qVCqP5CB3sv0XskdJVSCggU1l
	A9+an5pTsYmqKxYo+vxYpxmhBwidhowimuhg8601QSeED4AiBjsBwoxrkkgy6L4D3y6W
	mgjBkqIjjQP1U6DRlisLdqbpU4LfzwmRclmjqmdw2ycyAnKu9dfqjhKsZN67ciF8HkCk
	mF4w==
X-Gm-Message-State: AODbwcAI9JTu1Tz0W0ihWh6lukTfQfvLjo7SV5693utZ3jksAmds3l2M
	WyxQnBd2TAQgQNpaLkgXR4i7XC4lc6KQ9Fw=
X-Received: by 10.237.53.86 with SMTP id b22mr194185qte.142.1496303538588;
	Thu, 01 Jun 2017 00:52:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.38.68 with HTTP; Thu, 1 Jun 2017 00:51:58 -0700 (PDT)
In-Reply-To: <CAHiDW_EPY0tx2AC28bJxipn=btF7iPfrV1iRMHAJwRA_LaF7=A@mail.gmail.com>
References: <CALW5WRzihq1UrO8ckvd-rjfb9aWtnu118ePx2jn7=0KH4r-B-g@mail.gmail.com>
	<CAHiDW_EPY0tx2AC28bJxipn=btF7iPfrV1iRMHAJwRA_LaF7=A@mail.gmail.com>
From: =?UTF-8?Q?=C8=98tefan_Golinschi?= <stefan.golinschi@gmail.com>
Date: Thu, 1 Jun 2017 10:51:58 +0300
Message-ID: <CALW5WRyvytb5V-GVTYxBOTZwK0Yc=4e=-tzEN8vjsZoX7q-dEQ@mail.gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
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
X-List-Received-Date: Thu, 01 Jun 2017 07:52:21 -0000
Content-Type: multipart/alternative; boundary="001a11c01aace4d2d70550e15000"

--001a11c01aace4d2d70550e15000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You are right. I have a .bbappend to gtk+3 in meta-freescale layer[morty]
that breaks the build. This is the .bbappend in case:

cat meta-freescale/recipes-graphics/gtk+/gtk+3_%.bb
PACKAGECONFIG_remove_imxgpu2d =3D " \
    ${@bb.utils.contains("DISTRO_FEATURES", "wayland", "x11", "", d)} \
"

CFLAGS_append_imxgpu2d =3D " \
    -DLINUX \
    ${@bb.utils.contains('DISTRO_FEATURES', 'wayland', '-DEGL_API_FB
-DEGL_API_WL', '', d)} \
"
Ignoring this .bbappend makes the build of core-image-sato succeed.

Stefan

On Thu, Jun 1, 2017 at 10:00 AM, Jussi Kukkonen <jussi.kukkonen@intel.com>
wrote:

> On 31 May 2017 at 19:17, =C8=98tefan Golinschi <stefan.golinschi@gmail.co=
m>
> wrote:
>
>> I am trying to build a core-image-sato image for an imx6s SoC, but the
>> build fails during the build of matchbox-desktop due to a missing packag=
e:
>> gdk-x11-3.0.
>> In my local.conf:
>> IMAGE_INSTALL_append =3D " gdk-pixbuf".
>> Any help?
>>
>> Below is the error log:
>> $ bitbake core-image-sato
>> ERROR: matchbox-panel-2-2.11-r0 do_configure: configure failed
>> ERROR: matchbox-panel-2-2.11-r0 do_configure: Function failed:
>> do_configure (log file is located at /home/user/workspace/yocto/bui
>> ld/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-
>> panel-2/2.11-r0/temp/log.do_configure.17394)
>> ERROR: Logfile of failure stored in: /home/user/workspace/yocto/bui
>> ld/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-
>> panel-2/2.11-r0/temp/log.do_configure.17394
>> ...
>> | checking dynamic linker characteristics... GNU/Linux ld.so
>> | checking how to hardcode library paths into programs... immediate
>> | checking whether stripping libraries is possible... yes
>> | checking if libtool supports shared libraries... yes
>> | checking whether to build shared libraries... yes
>> | checking whether to build static libraries... no
>> | checking whether gcc understands -Wall... yes
>> | checking whether gcc understands -Wstrict-prototypes... yes
>> | checking whether gcc understands -Wnested-externs... yes
>> | checking whether gcc understands -Werror=3Dmissing-prototypes... yes
>> | checking whether gcc understands -Werror=3Dimplicit-function-declarati=
on...
>> yes
>> | checking whether gcc understands -Werror=3Dpointer-arith... yes
>> | checking whether gcc understands -Werror=3Dinit-self... yes
>> | checking whether gcc understands -Werror=3Dformat-security... no
>> | checking whether gcc understands -Werror=3Dformat=3D2... yes
>> | checking whether gcc understands -Werror=3Dmissing-include-dirs... yes
>> | checking whether gcc understands -Werror=3Dreturn-type... yes
>> | checking what warning flags to pass to the C compiler...  -Wall
>> -Wstrict-prototypes -Wnested-externs -Werror=3Dmissing-prototypes
>> -Werror=3Dimplicit-function-declaration -Werror=3Dpointer-arith
>> -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs
>> -Werror=3Dreturn-type
>> | checking what language compliance flags to pass to the C compiler...
>> | checking for arm-poky-linux-gnueabi-pkg-config... no
>> | checking for pkg-config... /home/user/workspace/yocto/bui
>> ld/tmp/sysroots/x86_64-linux/usr/bin/pkg-config
>> | configure: WARNING: using cross tools not prefixed with host triplet
>> | checking pkg-config is at least version 0.9.0... yes
>> | checking for MATCHBOX_PANEL... no
>> | configure: error: Package requirements (glib-2.0
>> |                   gmodule-export-2.0
>> |                   x11
>> |                   gdk-x11-3.0
>> |                   gtk+-3.0) were not met:
>>
> |
>> | No package 'gdk-x11-3.0' found
>>
>
>
> For the record this is matchbox-panel failing, not matchbox-desktop.
>
> That failure is quite surprising ... Does anything modify the gtk+3 recip=
e
> or configuration? Otherwise I don't see how gtk+3 could avoid providing
> gdk-x11-3.0.pc in a situation where matchbox-panel would still try to
> build.
>
> I think this could happen e.g. if you have "x11" in distro features but
> force gtk+3 to build without x11 packageconfig.
>
> Jussi
>
>
> |
>> | Consider adjusting the PKG_CONFIG_PATH environment variable if you
>> | installed software in a non-standard prefix.
>> |
>> | Alternatively, you may set the environment variables
>> MATCHBOX_PANEL_CFLAGS
>> | and MATCHBOX_PANEL_LIBS to avoid the need to call pkg-config.
>> | See the pkg-config man page for more details.
>> | WARNING: /home/user/workspace/yocto/build/tmp/work/cortexa9hf-neon-
>> poky-linux-gnueabi/matchbox-panel-2/2.11-r0/temp/run.do_configure.17394:=
1
>> exit 1 from 'exit 1'
>> | ERROR: Function failed: do_configure (log file is located at
>> /home/user/workspace/yocto/build/tmp/work/cortexa9hf-neon-
>> poky-linux-gnueabi/matchbox-panel-2/2.11-r0/temp/log.do_configure.17394)
>>
>> Thanks,
>> Stefan
>>
>> --
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>
>>
>


--=20
=C8=98tefan-Alexandru Golinschi

--001a11c01aace4d2d70550e15000
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You are right. I have a .bbappend to gtk+3 in meta-freesca=
le layer[morty] that breaks the build. This is the .bbappend in case:<div><=
br><div>cat meta-freescale/recipes-graphics/gtk+/gtk+3_%.bb</div><div><div>=
PACKAGECONFIG_remove_imxgpu2d =3D &quot; \</div><div>=C2=A0 =C2=A0 ${@bb.ut=
ils.contains(&quot;DISTRO_FEATURES&quot;, &quot;wayland&quot;, &quot;x11&qu=
ot;, &quot;&quot;, d)} \</div><div>&quot;</div><div><br></div><div>CFLAGS_a=
ppend_imxgpu2d =3D &quot; \</div><div>=C2=A0 =C2=A0 -DLINUX \</div><div>=C2=
=A0 =C2=A0 ${@bb.utils.contains(&#39;DISTRO_FEATURES&#39;, &#39;wayland&#39=
;, &#39;-DEGL_API_FB -DEGL_API_WL&#39;, &#39;&#39;, d)} \</div><div>&quot;<=
/div></div><div>Ignoring this .bbappend makes the build of core-image-sato =
succeed.</div><div><br></div><div>Stefan</div></div></div><div class=3D"gma=
il_extra"><br><div class=3D"gmail_quote">On Thu, Jun 1, 2017 at 10:00 AM, J=
ussi Kukkonen <span dir=3D"ltr">&lt;<a href=3D"mailto:jussi.kukkonen@intel.=
com" target=3D"_blank">jussi.kukkonen@intel.com</a>&gt;</span> wrote:<br><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><d=
iv class=3D"gmail_quote"><div><div class=3D"h5">On 31 May 2017 at 19:17, =
=C8=98tefan Golinschi <span dir=3D"ltr">&lt;<a href=3D"mailto:stefan.golins=
chi@gmail.com" target=3D"_blank">stefan.golinschi@gmail.com</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">I am trying to bu=
ild a core-image-sato image for an imx6s SoC, but the build fails during th=
e build of matchbox-desktop due to a missing package: gdk-x11-3.0.<div>In m=
y local.conf:</div><div>IMAGE_INSTALL_append =3D=C2=A0&quot; gdk-pixbuf&quo=
t;.</div><div><div>Any help?<br><div><br></div><div>Below is the error log:=
</div><div><div>$ bitbake core-image-sato<br><div><div>ERROR: matchbox-pane=
l-2-2.11-r0 do_configure: configure failed</div><div>ERROR: matchbox-panel-=
2-2.11-r0 do_configure: Function failed: do_configure (log file is located =
at /home/user/workspace/yocto/bui<wbr>ld/tmp/work/cortexa9hf-neon-<wbr>poky=
-linux-gnueabi/matchbox-<wbr>panel-2/2.11-r0/temp/log.do_<wbr>configure.173=
94)</div><div>ERROR: Logfile of failure stored in: /home/user/workspace/yoc=
to/bui<wbr>ld/tmp/work/cortexa9hf-neon-<wbr>poky-linux-gnueabi/matchbox-<wb=
r>panel-2/2.11-r0/temp/log.do_<wbr>configure.17394</div><div>...</div><div>=
| checking dynamic linker characteristics... GNU/Linux ld.so</div><div>| ch=
ecking how to hardcode library paths into programs... immediate</div><div>|=
 checking whether stripping libraries is possible... yes</div><div>| checki=
ng if libtool supports shared libraries... yes</div><div>| checking whether=
 to build shared libraries... yes</div><div>| checking whether to build sta=
tic libraries... no</div><div>| checking whether gcc understands -Wall... y=
es</div><div>| checking whether gcc understands -Wstrict-prototypes... yes<=
/div><div>| checking whether gcc understands -Wnested-externs... yes</div><=
div>| checking whether gcc understands -Werror=3Dmissing-prototypes... yes<=
/div><div>| checking whether gcc understands -Werror=3Dimplicit-function-de=
cl<wbr>aration... yes</div><div>| checking whether gcc understands -Werror=
=3Dpointer-arith... yes</div><div>| checking whether gcc understands -Werro=
r=3Dinit-self... yes</div><div>| checking whether gcc understands -Werror=
=3Dformat-security... no</div><div>| checking whether gcc understands -Werr=
or=3Dformat=3D2... yes</div><div>| checking whether gcc understands -Werror=
=3Dmissing-include-dirs..<wbr>. yes</div><div>| checking whether gcc unders=
tands -Werror=3Dreturn-type... yes</div><div>| checking what warning flags =
to pass to the C compiler... =C2=A0-Wall -Wstrict-prototypes -Wnested-exter=
ns -Werror=3Dmissing-prototypes -Werror=3Dimplicit-function-decl<wbr>aratio=
n -Werror=3Dpointer-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=
=3Dmissing-include-dirs -Werror=3Dreturn-type</div><div>| checking what lan=
guage compliance flags to pass to the C compiler...</div><div>| checking fo=
r arm-poky-linux-gnueabi-pkg-con<wbr>fig... no</div><div>| checking for pkg=
-config... /home/user/workspace/yocto/bui<wbr>ld/tmp/sysroots/x86_64-linux/=
<wbr>usr/bin/pkg-config</div><div>| configure: WARNING: using cross tools n=
ot prefixed with host triplet</div><div>| checking pkg-config is at least v=
ersion 0.9.0... yes</div><div>| checking for MATCHBOX_PANEL... no</div><div=
>| configure: error: Package requirements (glib-2.0</div><div>| =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 gmodule-export-2.0</di=
v><div>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 x11=
</div><div>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 gdk-x11-3.0</div><div>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 gtk+-3.0) were not met:=C2=A0</div></div></div></div></div></=
div></div></blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div=
><div><div><div><div><div>|=C2=A0</div><div>| No package &#39;gdk-x11-3.0&#=
39; found</div></div></div></div></div></div></div></blockquote><div><br></=
div><div><br></div></div></div><div>For the record this is matchbox-panel f=
ailing, not matchbox-desktop.</div><div><br></div><div>That failure is quit=
e surprising ... Does anything modify the gtk+3 recipe or configuration? Ot=
herwise I don&#39;t see how gtk+3 could avoid providing gdk-x11-3.0.pc in a=
 situation where matchbox-panel would still try to build.=C2=A0</div><div><=
br></div><div>I think this could happen e.g. if you have &quot;x11&quot; in=
 distro features but force gtk+3 to build without x11 packageconfig. =C2=A0=
</div><div><br></div><div>Jussi</div><div><br></div><div><br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex"><span class=3D""><div dir=3D"ltr"><div><div><div><di=
v><div><div>|=C2=A0</div><div>| Consider adjusting the PKG_CONFIG_PATH envi=
ronment variable if you</div><div>| installed software in a non-standard pr=
efix.</div><div>|=C2=A0</div><div>| Alternatively, you may set the environm=
ent variables MATCHBOX_PANEL_CFLAGS</div><div>| and MATCHBOX_PANEL_LIBS to =
avoid the need to call pkg-config.</div><div>| See the pkg-config man page =
for more details.</div><div>| WARNING: /home/user/workspace/yocto/bui<wbr>l=
d/tmp/work/cortexa9hf-neon-<wbr>poky-linux-gnueabi/matchbox-<wbr>panel-2/2.=
11-r0/temp/run.do_<wbr>configure.17394:1 exit 1 from &#39;exit 1&#39;</div>=
<div>| ERROR: Function failed: do_configure (log file is located at /home/u=
ser/workspace/yocto/bui<wbr>ld/tmp/work/cortexa9hf-neon-<wbr>poky-linux-gnu=
eabi/matchbox-<wbr>panel-2/2.11-r0/temp/log.do_<wbr>configure.17394)</div><=
div><br></div><div class=3D"m_-7609227424412934839m_-3191513226578055360gma=
il_signature"><div dir=3D"ltr"><div>Thanks,</div><div>Stefan</div></div></d=
iv>
</div></div></div></div></div></div>
<br></span><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/poky</a><br=
>
<br></font></span></blockquote></div><br></div></div>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><d=
iv><font face=3D"arial black, sans-serif" color=3D"#444444">=C8=98tefan-Ale=
xandru Golinschi</font><br></div></div></div>
</div>

--001a11c01aace4d2d70550e15000--
