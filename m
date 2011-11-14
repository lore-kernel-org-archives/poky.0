Return-Path: <cahoshing@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F37BE00305
	for <poky@yoctoproject.org>; Mon, 14 Nov 2011 03:29:10 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iakh37 with SMTP id h37so11340265iak.35
	for <poky@yoctoproject.org>; Mon, 14 Nov 2011 03:29:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=UTuu7ICby1o/g55mrrf+E4rE9bLxJEMX/40+mccmido=;
	b=eVU4Cc55CzJWmpgs2Oj0CUIevKZb3Ul2nRBdHaGwOJi+gV5NB8oqa+kTC0bDwwwRhx
	10eTL8jh8MfUuo2S1ppc0PnY5YRB6NtlpGZs6dOM7ulg8PO8vvA/wvOZb1AN7wQ7DZ0q
	aP/BJmb33GoW+/GIwRp/G2DbogGDUJv8qOPuo=
MIME-Version: 1.0
Received: by 10.231.63.143 with SMTP id b15mr413833ibi.14.1321270148824; Mon,
	14 Nov 2011 03:29:08 -0800 (PST)
Received: by 10.231.208.66 with HTTP; Mon, 14 Nov 2011 03:29:08 -0800 (PST)
Date: Mon, 14 Nov 2011 16:59:08 +0530
Message-ID: <CAMTw45A5mG11yxRKF16A8YVA4eG420gRk6hBCnchbuiNRcg3fw@mail.gmail.com>
From: chinmaya hoshing <cahoshing@gmail.com>
To: poky@yoctoproject.org
Subject: Error in compilation for Cpluff library
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
X-List-Received-Date: Mon, 14 Nov 2011 11:29:10 -0000
Content-Type: multipart/alternative; boundary=000e0cd4b636df7e1e04b1b02dda

--000e0cd4b636df7e1e04b1b02dda
Content-Type: text/plain; charset=ISO-8859-1

Hi ,
I am trying to port Poky to the "sandybridge platform" and  using the
branch "bernard" for "fishriver" machine.
I am running Ubuntu 10.10 on 64 bit machine.
In this  I am trying to pull cpluff library
Following is the error I am getting :-

| /bin/sh ../libtool --tag=CC   --mode=link ccache i586-poky-linux-gcc -m32
-march=core2 -msse3 -mtune=generic -mfpmath=sse
--sysroot=/home/poky/build/tmp/sysroots/fishriver
 -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2
-ggdb -feliminate-unused-debug-types -no-undefined -version-info 0:3:0
-L/home/poky/build/tmp/sysroots/fishriver/usr/lib -o libcpluff.la -rpath
/usr/lib psymbol.lo pscan.lo ploader.lo pinfo.lo pcontrol.lo serial.lo
logging.lo context.lo cpluff.lo util.lo list.lo hash.lo thread_posix.lo
-lexpat -ldl
| ccache i586-poky-linux-gcc -m32 -march=core2 -msse3 -mtune=generic
-mfpmath=sse --sysroot=/home/poky/build/tmp/sysroots/fishriver -shared
 .libs/psymbol.o .libs/pscan.o .libs/ploader.o .libs/pinfo.o
.libs/pcontrol.o .libs/serial.o .libs/logging.o .libs/context.o
.libs/cpluff.o .libs/util.o .libs/list.o .libs/hash.o .libs/thread_posix.o
 -L/home/poky/build/tmp/sysroots/fishriver/usr/lib /usr/lib/libexpat.so
-ldl  -m32 -march=core2 -msse3 -mtune=generic -mfpmath=sse -Wl,-soname
-Wl,libcpluff.so.0 -o .libs/libcpluff.so.0.0.3
| /usr/lib/libexpat.so: could not read symbols: File in wrong format
| collect2: ld returned 1 exit status
| make[3]: *** [libcpluff.la] Error 1
| make[3]: Leaving directory
`/home/poky/build/tmp/work/atom-poky-linux/cpluff-0.1.3-r0/cpluff-0.1.3/libcpluff'
| make[2]: *** [all-recursive] Error 1
| make[2]: Leaving directory
`/home/poky/build/tmp/work/atom-poky-linux/cpluff-0.1.3-r0/cpluff-0.1.3/libcpluff'
| make[1]: *** [all-recursive] Error 1
| make[1]: Leaving directory
`/home/poky/build/tmp/work/atom-poky-linux/cpluff-0.1.3-r0/cpluff-0.1.3'
| make: *** [all] Error 2
| FATAL: oe_runmake failed
| ERROR: Function 'do_compile' failed (see
/home/poky/build/tmp/work/atom-poky-linux/cpluff-0.1.3-r0/temp/log.do_compile.546
for further information)
NOTE: package cpluff-0.1.3-r0: task do_compile: Failed
ERROR: Task 8 (/home/sct/black_gigabyte/poky/meta-sct/recipes-sct/cpluff/
cpluff_0.1.3.bb, do_compile) failed with exit code '1'


After going through the error it seems that during compilation it is taking
the expat library from my system instead it should take from poky
environment  so throwing error.
So what changes should I make in my recipe .Can any one help me too solve
the error.


following is the recipe  for Cpluff
                        ************cpluff_0.1.3.bb*****************
DESCRIPTION = "C-Pluff, a plug-in framework for C"
HOMEPAGE = "http://www.c-pluff.org"
LICENSE = "MIT"

DEPENDS += "expat"
SRC_URI = "http://www.c-pluff.org/downloads/${PN}-${PV}.tar.gz"
S = "${WORKDIR}/cpluff-0.1.3"

export TARGET_LDFLAGS="-L${STAGING_DIR}/${MACHINE}${libdir}"     //line
added so that during compilation it should take libraries from poky
environment   but after adding this line getting same error as above
inherit autotools

do_configure() {
  cd ${S}
  ./configure --prefix=/usr
}
do_qa_configure() {
}

                                        *********************
Regards
C Hoshing

--000e0cd4b636df7e1e04b1b02dda
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><meta http-equiv=3D"content-type" content=3D"text/html; ch=
arset=3Dutf-8"><span class=3D"Apple-style-span" style=3D"border-collapse: c=
ollapse; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size:=
 13px; "><span style=3D"border-collapse: collapse; font-family: arial, sans=
-serif; font-size: 13px; ">Hi ,</span></span><div>
<span class=3D"Apple-style-span" style=3D"border-collapse: collapse; color:=
 rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13px; "><span =
style=3D"border-collapse: collapse; font-family: arial, sans-serif; font-si=
ze: 13px; ">I am trying=A0<span>to</span>=A0port Poky=A0<span>to</span>=A0t=
he &quot;sandybridge platform&quot; and=A0 using the branch &quot;bernard&q=
uot; for &quot;fishriver&quot; machine.<br>
I am running Ubuntu 10.10 on 64 bit machine.</span><div><font face=3D"arial=
, sans-serif"><span style=3D"border-collapse: collapse; ">In this =A0I am t=
rying to pull cpluff library=A0</span></font></div><div><font face=3D"arial=
, sans-serif"><span style=3D"border-collapse: collapse; ">Following is the =
error I am getting :-</span></font></div>
<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse: colla=
pse; "><br></span></font></div></span><span class=3D"Apple-style-span" styl=
e=3D"border-collapse: collapse; color: rgb(34, 34, 34); font-family: arial,=
 sans-serif; font-size: 13px; ">| /bin/sh ../libtool --tag=3DCC =A0 --mode=
=3Dlink ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgene=
ric -mfpmath=3Dsse --sysroot=3D/home/poky/build/tmp/sysroots/fishriver =A0-=
fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2 -ggdb =
-feliminate-unused-debug-types -no-undefined -version-info 0:3:0 -L/home/po=
ky/build/tmp/sysroots/fishriver/usr/lib -o <a href=3D"http://libcpluff.la">=
libcpluff.la</a> -rpath /usr/lib psymbol.lo pscan.lo ploader.lo pinfo.lo pc=
ontrol.lo serial.lo logging.lo context.lo cpluff.lo util.lo list.lo hash.lo=
 thread_posix.lo =A0 -lexpat -ldl</span><div>
<font face=3D"arial, sans-serif"><div style=3D"border-collapse: collapse; c=
olor: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13px; ">|=
 ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mf=
pmath=3Dsse --sysroot=3D/home/poky/build/tmp/sysroots/fishriver -shared =A0=
.libs/psymbol.o .libs/pscan.o .libs/ploader.o .libs/pinfo.o .libs/pcontrol.=
o .libs/serial.o .libs/logging.o .libs/context.o .libs/cpluff.o .libs/util.=
o .libs/list.o .libs/hash.o .libs/thread_posix.o =A0-L/home/poky/build/tmp/=
sysroots/fishriver/usr/lib /usr/lib/libexpat.so -ldl =A0-m32 -march=3Dcore2=
 -msse3 -mtune=3Dgeneric -mfpmath=3Dsse -Wl,-soname -Wl,libcpluff.so.0 -o .=
libs/libcpluff.so.0.0.3</div>
<div style=3D"border-collapse: collapse; color: rgb(34, 34, 34); font-famil=
y: arial, sans-serif; font-size: 13px; ">| /usr/lib/libexpat.so: could not =
read symbols: File in wrong format</div><div style=3D"border-collapse: coll=
apse; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13=
px; ">
| collect2: ld returned 1 exit status</div><div style=3D"border-collapse: c=
ollapse; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size:=
 13px; ">| make[3]: *** [<a href=3D"http://libcpluff.la">libcpluff.la</a>] =
Error 1</div>
<div style=3D"border-collapse: collapse; color: rgb(34, 34, 34); font-famil=
y: arial, sans-serif; font-size: 13px; ">| make[3]: Leaving directory `/hom=
e/poky/build/tmp/work/atom-poky-linux/cpluff-0.1.3-r0/cpluff-0.1.3/libcpluf=
f&#39;</div>
<div style=3D"border-collapse: collapse; color: rgb(34, 34, 34); font-famil=
y: arial, sans-serif; font-size: 13px; ">| make[2]: *** [all-recursive] Err=
or 1</div><div style=3D"border-collapse: collapse; color: rgb(34, 34, 34); =
font-family: arial, sans-serif; font-size: 13px; ">
| make[2]: Leaving directory `/home/poky/build/tmp/work/atom-poky-linux/cpl=
uff-0.1.3-r0/cpluff-0.1.3/libcpluff&#39;</div><div style=3D"border-collapse=
: collapse; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-si=
ze: 13px; ">
| make[1]: *** [all-recursive] Error 1</div><div style=3D"border-collapse: =
collapse; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size=
: 13px; ">| make[1]: Leaving directory `/home/poky/build/tmp/work/atom-poky=
-linux/cpluff-0.1.3-r0/cpluff-0.1.3&#39;</div>
<div style=3D"border-collapse: collapse; color: rgb(34, 34, 34); font-famil=
y: arial, sans-serif; font-size: 13px; ">| make: *** [all] Error 2</div><di=
v style=3D"border-collapse: collapse; color: rgb(34, 34, 34); font-family: =
arial, sans-serif; font-size: 13px; ">
| FATAL: oe_runmake failed</div><div style=3D"border-collapse: collapse; co=
lor: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13px; ">| =
ERROR: Function &#39;do_compile&#39; failed (see /home/poky/build/tmp/work/=
atom-poky-linux/cpluff-0.1.3-r0/temp/log.do_compile.546 for further informa=
tion)</div>
<div style=3D"border-collapse: collapse; color: rgb(34, 34, 34); font-famil=
y: arial, sans-serif; font-size: 13px; ">NOTE: package cpluff-0.1.3-r0: tas=
k do_compile: Failed</div><div style=3D"border-collapse: collapse; color: r=
gb(34, 34, 34); font-family: arial, sans-serif; font-size: 13px; ">
ERROR: Task 8 (/home/sct/black_gigabyte/poky/meta-sct/recipes-sct/cpluff/<a=
 href=3D"http://cpluff_0.1.3.bb">cpluff_0.1.3.bb</a>, do_compile) failed wi=
th exit code &#39;1&#39;</div><div style=3D"border-collapse: collapse; colo=
r: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13px; ">
<br></div><div style=3D"border-collapse: collapse; color: rgb(34, 34, 34); =
font-family: arial, sans-serif; font-size: 13px; "><br></div><div style=3D"=
border-collapse: collapse; color: rgb(34, 34, 34); font-family: arial, sans=
-serif; font-size: 13px; ">
After going through the error it seems that during compilation it is taking=
 the expat library from my system instead it should take from poky environm=
ent =A0so throwing error.</div><div style=3D"border-collapse: collapse; col=
or: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13px; ">
So what changes should I make in my recipe .Can any one help me too solve t=
he error.</div><div style=3D"border-collapse: collapse; color: rgb(34, 34, =
34); font-family: arial, sans-serif; font-size: 13px; "><br></div><div styl=
e=3D"border-collapse: collapse; color: rgb(34, 34, 34); font-family: arial,=
 sans-serif; font-size: 13px; ">
<br></div><div style=3D"border-collapse: collapse; color: rgb(34, 34, 34); =
font-family: arial, sans-serif; font-size: 13px; ">following is the recipe =
=A0for Cpluff =A0</div><div style=3D"border-collapse: collapse; color: rgb(=
34, 34, 34); font-family: arial, sans-serif; font-size: 13px; ">
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ************<a href=3D"http=
://cpluff_0.1.3.bb">cpluff_0.1.3.bb</a>*****************</div><div><div><fo=
nt class=3D"Apple-style-span" color=3D"#222222"><span class=3D"Apple-style-=
span" style=3D"border-collapse: collapse;">DESCRIPTION =3D &quot;C-Pluff, a=
 plug-in framework for C&quot;</span></font></div>
<div><font class=3D"Apple-style-span" color=3D"#222222"><span class=3D"Appl=
e-style-span" style=3D"border-collapse: collapse;">HOMEPAGE =3D &quot;<a hr=
ef=3D"http://www.c-pluff.org">http://www.c-pluff.org</a>&quot;</span></font=
></div><div>
<span class=3D"Apple-style-span" style=3D"border-collapse: collapse; color:=
 rgb(34, 34, 34); ">LICENSE =3D &quot;MIT&quot;</span></div><div><font clas=
s=3D"Apple-style-span" color=3D"#222222"><span class=3D"Apple-style-span" s=
tyle=3D"border-collapse: collapse;"><br>
</span></font></div><div><font class=3D"Apple-style-span" color=3D"#222222"=
><span class=3D"Apple-style-span" style=3D"border-collapse: collapse;">DEPE=
NDS +=3D &quot;expat&quot;=A0</span></font></div><div><span class=3D"Apple-=
style-span" style=3D"border-collapse: collapse; color: rgb(34, 34, 34); ">S=
RC_URI =3D &quot;<a href=3D"http://www.c-pluff.org/downloads/${PN}-${PV}.ta=
r.gz">http://www.c-pluff.org/downloads/${PN}-${PV}.tar.gz</a>&quot;</span><=
/div>
<div><span class=3D"Apple-style-span" style=3D"border-collapse: collapse; c=
olor: rgb(34, 34, 34); ">S =3D &quot;${WORKDIR}/cpluff-0.1.3&quot;</span></=
div><div><span class=3D"Apple-style-span" style=3D"border-collapse: collaps=
e; color: rgb(34, 34, 34); "><br>
</span></div><div><span class=3D"Apple-style-span" style=3D"border-collapse=
: collapse; color: rgb(34, 34, 34); ">export TARGET_LDFLAGS=3D&quot;-L${STA=
GING_DIR}/${MACHINE}${libdir}&quot; =A0 =A0 //line added so that during com=
pilation it should take libraries from poky environment =A0 but after addin=
g this line getting same error as above=A0</span></div>
<div><span class=3D"Apple-style-span" style=3D"border-collapse: collapse; c=
olor: rgb(34, 34, 34); ">inherit autotools</span></div><div><span class=3D"=
Apple-style-span" style=3D"border-collapse: collapse; color: rgb(34, 34, 34=
); "><br>
</span></div><div><span class=3D"Apple-style-span" style=3D"border-collapse=
: collapse; color: rgb(34, 34, 34); ">do_configure() {</span></div><div><fo=
nt class=3D"Apple-style-span" color=3D"#222222"><span class=3D"Apple-style-=
span" style=3D"border-collapse: collapse;">=A0 cd ${S}</span></font></div>
<div><font class=3D"Apple-style-span" color=3D"#222222"><span class=3D"Appl=
e-style-span" style=3D"border-collapse: collapse;">=A0 ./configure --prefix=
=3D/usr =A0</span></font></div><div><font class=3D"Apple-style-span" color=
=3D"#222222"><span class=3D"Apple-style-span" style=3D"border-collapse: col=
lapse;">}</span></font></div>
<div><font class=3D"Apple-style-span" color=3D"#222222"><span class=3D"Appl=
e-style-span" style=3D"border-collapse: collapse;">do_qa_configure() {</spa=
n></font></div><div><font class=3D"Apple-style-span" color=3D"#222222"><spa=
n class=3D"Apple-style-span" style=3D"border-collapse: collapse;">}</span><=
/font></div>
<div><font class=3D"Apple-style-span" color=3D"#222222"><span class=3D"Appl=
e-style-span" style=3D"border-collapse: collapse;"><br></span></font></div>=
<div><font class=3D"Apple-style-span" color=3D"#222222"><span class=3D"Appl=
e-style-span" style=3D"border-collapse: collapse;">=A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 *******************=
**</span></font></div>
<div style=3D"border-collapse: collapse; color: rgb(34, 34, 34); font-famil=
y: arial, sans-serif; font-size: 13px; ">Regards=A0</div></div><div style=
=3D"border-collapse: collapse; color: rgb(34, 34, 34); font-family: arial, =
sans-serif; font-size: 13px; ">
C Hoshing</div></font></div></div></div>

--000e0cd4b636df7e1e04b1b02dda--
