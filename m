Return-Path: <cahoshing@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40FD2E006BA
	for <poky@yoctoproject.org>; Wed, 23 Nov 2011 05:12:39 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iaqq3 with SMTP id q3so1086268iaq.35
	for <poky@yoctoproject.org>; Wed, 23 Nov 2011 05:12:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=LQ8Kzqh3AwO27LzjxWxQl/0y+rm5p3hGa6vmKuTv3Hs=;
	b=X00zd1FIHVDB93OF+qO5jmzy1q/5R5NKnKpt4cYNdIWQzXNdJ4I671kTmIAxRcEknq
	oU5rkZfPHqHqD9HwXLJU04h2dmADbi5+8cASqx4Dl4qHarsR7sKimhWXgMfx1xqFK1cM
	SOFLE/73ARL1d7bsN2DNhJTYeIMTxSpTyL3Pk=
MIME-Version: 1.0
Received: by 10.42.155.74 with SMTP id t10mr2719768icw.49.1322053958492; Wed,
	23 Nov 2011 05:12:38 -0800 (PST)
Received: by 10.231.103.74 with HTTP; Wed, 23 Nov 2011 05:12:38 -0800 (PST)
In-Reply-To: <CAMKF1so_kfqiUSTpHUL8PqLsD_wa776d9zQE-ZL30TjtgM9xQQ@mail.gmail.com>
References: <CAMTw45A5mG11yxRKF16A8YVA4eG420gRk6hBCnchbuiNRcg3fw@mail.gmail.com>
	<CAMKF1so_kfqiUSTpHUL8PqLsD_wa776d9zQE-ZL30TjtgM9xQQ@mail.gmail.com>
Date: Wed, 23 Nov 2011 18:42:38 +0530
Message-ID: <CAMTw45AggOC4d9qPn+d-s-GpPe_8VN0JBPJk8BNK93-f1nER4Q@mail.gmail.com>
From: chinmaya hoshing <cahoshing@gmail.com>
To: poky@yoctoproject.org
Subject: Re: Error in compilation for Cpluff library
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
X-List-Received-Date: Wed, 23 Nov 2011 13:12:39 -0000
Content-Type: multipart/alternative; boundary=90e6ba6e8dbc91e1af04b266ac01

--90e6ba6e8dbc91e1af04b266ac01
Content-Type: text/plain; charset=ISO-8859-1

Hi ,

I tried with the EXTRA_OEMAKE variable option in the recipe of
xbmc_10.1.bbas below :

EXTRA_OEMAKE += "LDFLAGS=-L/home/poky/build/tmp/sysroots/fishriver/usr/lib"
Also I modified the Makefile where I have specified  the required path for
LDFLAGS and $libdir  but still it is taking libexpat from my system.


On Wed, Nov 23, 2011 at 7:40 AM, Khem Raj <raj.khem@gmail.com> wrote:

> On Mon, Nov 14, 2011 at 3:29 AM, chinmaya hoshing <cahoshing@gmail.com>
> wrote:
> > Hi ,
> > I am trying to port Poky to the "sandybridge platform" and  using the
> branch
> > "bernard" for "fishriver" machine.
> > I am running Ubuntu 10.10 on 64 bit machine.
> > In this  I am trying to pull cpluff library
> > Following is the error I am getting :-
> > | /bin/sh ../libtool --tag=CC   --mode=link ccache i586-poky-linux-gcc
> -m32
> > -march=core2 -msse3 -mtune=generic -mfpmath=sse
> > --sysroot=/home/poky/build/tmp/sysroots/fishriver
>  -fexpensive-optimizations
> > -fomit-frame-pointer -frename-registers -O2 -ggdb
> > -feliminate-unused-debug-types -no-undefined -version-info 0:3:0
> > -L/home/poky/build/tmp/sysroots/fishriver/usr/lib -o libcpluff.la -rpath
> > /usr/lib psymbol.lo pscan.lo ploader.lo pinfo.lo pcontrol.lo serial.lo
> > logging.lo context.lo cpluff.lo util.lo list.lo hash.lo thread_posix.lo
> > -lexpat -ldl
> > | ccache i586-poky-linux-gcc -m32 -march=core2 -msse3 -mtune=generic
> > -mfpmath=sse --sysroot=/home/poky/build/tmp/sysroots/fishriver -shared
> >  .libs/psymbol.o .libs/pscan.o .libs/ploader.o .libs/pinfo.o
> > .libs/pcontrol.o .libs/serial.o .libs/logging.o .libs/context.o
> > .libs/cpluff.o .libs/util.o .libs/list.o .libs/hash.o
> .libs/thread_posix.o
> >  -L/home/poky/build/tmp/sysroots/fishriver/usr/lib /usr/lib/libexpat.so
> -ldl
> >  -m32 -march=core2 -msse3 -mtune=generic -mfpmath=sse -Wl,-soname
> > -Wl,libcpluff.so.0 -o .libs/libcpluff.so.0.0.3
> > | /usr/lib/libexpat.so: could not read symbols: File in wrong format
> > | collect2: ld returned 1 exit status
> > | make[3]: *** [libcpluff.la] Error 1
> > | make[3]: Leaving directory
> >
> `/home/poky/build/tmp/work/atom-poky-linux/cpluff-0.1.3-r0/cpluff-0.1.3/libcpluff'
> > | make[2]: *** [all-recursive] Error 1
> > | make[2]: Leaving directory
> >
> `/home/poky/build/tmp/work/atom-poky-linux/cpluff-0.1.3-r0/cpluff-0.1.3/libcpluff'
> > | make[1]: *** [all-recursive] Error 1
> > | make[1]: Leaving directory
> > `/home/poky/build/tmp/work/atom-poky-linux/cpluff-0.1.3-r0/cpluff-0.1.3'
> > | make: *** [all] Error 2
> > | FATAL: oe_runmake failed
> > | ERROR: Function 'do_compile' failed (see
> >
> /home/poky/build/tmp/work/atom-poky-linux/cpluff-0.1.3-r0/temp/log.do_compile.546
> > for further information)
> > NOTE: package cpluff-0.1.3-r0: task do_compile: Failed
> > ERROR: Task 8
> > (/home/sct/black_gigabyte/poky/meta-sct/recipes-sct/cpluff/
> cpluff_0.1.3.bb,
> > do_compile) failed with exit code '1'
> >
> > After going through the error it seems that during compilation it is
> taking
> > the expat library from my system instead it should take from poky
> > environment  so throwing error.
> > So what changes should I make in my recipe .Can any one help me too solve
> > the error.
> >
> > following is the recipe  for Cpluff
> >                         ************cpluff_0.1.3.bb*****************
> > DESCRIPTION = "C-Pluff, a plug-in framework for C"
> > HOMEPAGE = "http://www.c-pluff.org"
> > LICENSE = "MIT"
> > DEPENDS += "expat"
> > SRC_URI = "http://www.c-pluff.org/downloads/${PN}-${PV}.tar.gz"
> > S = "${WORKDIR}/cpluff-0.1.3"
> > export TARGET_LDFLAGS="-L${STAGING_DIR}/${MACHINE}${libdir}"     //line
> > added so that during compilation it should take libraries from poky
> > environment   but after adding this line getting same error as above
> > inherit autotools
> > do_configure() {
> >   cd ${S}
> >   ./configure --prefix=/usr
> > }
> > do_qa_configure() {
> > }
>
> this seems to be a libtool error to me. Somehow either the new libtool
> macros are not being used or libtool script itself used is old.
>

If it is a libtool error the how to set the libtool macros and where to
look for these macros


Regards
C Hoshing

--90e6ba6e8dbc91e1af04b266ac01
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi ,</div><div><br></div><div>I tried with the EXTRA_=
OEMAKE variable option in the recipe of <a href=3D"http://xbmc_10.1.bb">xbm=
c_10.1.bb</a> as below :</div><div><br></div>EXTRA_OEMAKE +=3D &quot;LDFLAG=
S=3D-L/home/poky/build/tmp/sysroots/fishriver/usr/lib&quot;<br>
Also I modified the Makefile where I have specified =A0the required path fo=
r LDFLAGS and $libdir =A0but still it is taking libexpat from my system.<di=
v>=A0<div><div><br><div class=3D"gmail_quote">On Wed, Nov 23, 2011 at 7:40 =
AM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com">ra=
j.khem@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;"><div class=3D"im">On Mon, Nov 14, 2011 at 3=
:29 AM, chinmaya hoshing &lt;<a href=3D"mailto:cahoshing@gmail.com">cahoshi=
ng@gmail.com</a>&gt; wrote:<br>

</div><div><div class=3D"h5">&gt; Hi ,<br>
&gt; I am trying=A0to=A0port Poky=A0to=A0the &quot;sandybridge platform&quo=
t; and=A0 using the branch<br>
&gt; &quot;bernard&quot; for &quot;fishriver&quot; machine.<br>
&gt; I am running Ubuntu 10.10 on 64 bit machine.<br>
&gt; In this =A0I am trying to pull cpluff library<br>
&gt; Following is the error I am getting :-<br>
&gt; | /bin/sh ../libtool --tag=3DCC =A0 --mode=3Dlink ccache i586-poky-lin=
ux-gcc -m32<br>
&gt; -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfpmath=3Dsse<br>
&gt; --sysroot=3D/home/poky/build/tmp/sysroots/fishriver =A0-fexpensive-opt=
imizations<br>
&gt; -fomit-frame-pointer -frename-registers -O2 -ggdb<br>
&gt; -feliminate-unused-debug-types -no-undefined -version-info 0:3:0<br>
&gt; -L/home/poky/build/tmp/sysroots/fishriver/usr/lib -o <a href=3D"http:/=
/libcpluff.la" target=3D"_blank">libcpluff.la</a> -rpath<br>
&gt; /usr/lib psymbol.lo pscan.lo ploader.lo pinfo.lo pcontrol.lo serial.lo=
<br>
&gt; logging.lo context.lo cpluff.lo util.lo list.lo hash.lo thread_posix.l=
o<br>
&gt; -lexpat -ldl<br>
&gt; | ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgener=
ic<br>
&gt; -mfpmath=3Dsse --sysroot=3D/home/poky/build/tmp/sysroots/fishriver -sh=
ared<br>
&gt; =A0.libs/psymbol.o .libs/pscan.o .libs/ploader.o .libs/pinfo.o<br>
&gt; .libs/pcontrol.o .libs/serial.o .libs/logging.o .libs/context.o<br>
&gt; .libs/cpluff.o .libs/util.o .libs/list.o .libs/hash.o .libs/thread_pos=
ix.o<br>
&gt; =A0-L/home/poky/build/tmp/sysroots/fishriver/usr/lib /usr/lib/libexpat=
.so -ldl<br>
&gt; =A0-m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfpmath=3Dsse -Wl,-son=
ame<br>
&gt; -Wl,libcpluff.so.0 -o .libs/libcpluff.so.0.0.3<br>
&gt; | /usr/lib/libexpat.so: could not read symbols: File in wrong format<b=
r>
&gt; | collect2: ld returned 1 exit status<br>
&gt; | make[3]: *** [<a href=3D"http://libcpluff.la" target=3D"_blank">libc=
pluff.la</a>] Error 1<br>
&gt; | make[3]: Leaving directory<br>
&gt; `/home/poky/build/tmp/work/atom-poky-linux/cpluff-0.1.3-r0/cpluff-0.1.=
3/libcpluff&#39;<br>
&gt; | make[2]: *** [all-recursive] Error 1<br>
&gt; | make[2]: Leaving directory<br>
&gt; `/home/poky/build/tmp/work/atom-poky-linux/cpluff-0.1.3-r0/cpluff-0.1.=
3/libcpluff&#39;<br>
&gt; | make[1]: *** [all-recursive] Error 1<br>
&gt; | make[1]: Leaving directory<br>
&gt; `/home/poky/build/tmp/work/atom-poky-linux/cpluff-0.1.3-r0/cpluff-0.1.=
3&#39;<br>
&gt; | make: *** [all] Error 2<br>
&gt; | FATAL: oe_runmake failed<br>
&gt; | ERROR: Function &#39;do_compile&#39; failed (see<br>
&gt; /home/poky/build/tmp/work/atom-poky-linux/cpluff-0.1.3-r0/temp/log.do_=
compile.546<br>
&gt; for further information)<br>
&gt; NOTE: package cpluff-0.1.3-r0: task do_compile: Failed<br>
&gt; ERROR: Task 8<br>
&gt; (/home/sct/black_gigabyte/poky/meta-sct/recipes-sct/cpluff/<a href=3D"=
http://cpluff_0.1.3.bb" target=3D"_blank">cpluff_0.1.3.bb</a>,<br>
&gt; do_compile) failed with exit code &#39;1&#39;<br>
&gt;<br>
&gt; After going through the error it seems that during compilation it is t=
aking<br>
&gt; the expat library from my system instead it should take from poky<br>
&gt; environment =A0so throwing error.<br>
&gt; So what changes should I make in my recipe .Can any one help me too so=
lve<br>
&gt; the error.<br>
&gt;<br>
&gt; following is the recipe =A0for Cpluff<br>
&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ************<a href=3D=
"http://cpluff_0.1.3.bb" target=3D"_blank">cpluff_0.1.3.bb</a>*************=
****<br>
&gt; DESCRIPTION =3D &quot;C-Pluff, a plug-in framework for C&quot;<br>
&gt; HOMEPAGE =3D &quot;<a href=3D"http://www.c-pluff.org" target=3D"_blank=
">http://www.c-pluff.org</a>&quot;<br>
&gt; LICENSE =3D &quot;MIT&quot;<br>
&gt; DEPENDS +=3D &quot;expat&quot;<br>
&gt; SRC_URI =3D &quot;<a href=3D"http://www.c-pluff.org/downloads/${PN}-${=
PV}.tar.gz" target=3D"_blank">http://www.c-pluff.org/downloads/${PN}-${PV}.=
tar.gz</a>&quot;<br>
&gt; S =3D &quot;${WORKDIR}/cpluff-0.1.3&quot;<br>
&gt; export TARGET_LDFLAGS=3D&quot;-L${STAGING_DIR}/${MACHINE}${libdir}&quo=
t; =A0 =A0 //line<br>
&gt; added so that during compilation it should take libraries from poky<br=
>
&gt; environment =A0 but after adding this line getting same error as above=
<br>
&gt; inherit autotools<br>
&gt; do_configure() {<br>
&gt; =A0 cd ${S}<br>
&gt; =A0 ./configure --prefix=3D/usr<br>
&gt; }<br>
&gt; do_qa_configure() {<br>
&gt; }<br>
<br>
</div></div>this seems to be a libtool error to me. Somehow either the new =
libtool<br>
macros are not being used or libtool script itself used is old.<br>
</blockquote></div><br></div></div></div><div>If it is a libtool error the =
how to set the libtool macros and where to look for these macros=A0</div><d=
iv><br></div><div><br></div><div>Regards=A0</div><div>C Hoshing</div><div>
<br></div></div>

--90e6ba6e8dbc91e1af04b266ac01--
