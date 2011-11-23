Return-Path: <raj.khem@gmail.com>
Received: from mail-fx0-f48.google.com (mail-fx0-f48.google.com
	[209.85.161.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82B5FE006BA
	for <poky@yoctoproject.org>; Tue, 22 Nov 2011 18:11:35 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by faap19 with SMTP id p19so1674529faa.35
	for <poky@yoctoproject.org>; Tue, 22 Nov 2011 18:11:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=flKOvRxkKE1ixZpgqViRyNYUwUk6qJ1FTb0w7KUrfIw=;
	b=SvF+xJ4sYN5x1AF4Tl4sMYYewunBQXXjfDBEd1+lFk7JvTQ6uyG9I+AVrbiMNTfPUI
	CQb4l9cX1Av+RjQjqP5BGMFdmQqQqkzThbTsKEe1/bKOeCntFK4U3z2jGIf81yIkcYB9
	OEV8zPTC0kTRoYK/3AsSZpM2wkflWF5Fl9aMM=
Received: by 10.152.132.39 with SMTP id or7mr13307071lab.14.1322014286070;
	Tue, 22 Nov 2011 18:11:26 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.24.36 with HTTP; Tue, 22 Nov 2011 18:10:55 -0800 (PST)
In-Reply-To: <CAMTw45A5mG11yxRKF16A8YVA4eG420gRk6hBCnchbuiNRcg3fw@mail.gmail.com>
References: <CAMTw45A5mG11yxRKF16A8YVA4eG420gRk6hBCnchbuiNRcg3fw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 22 Nov 2011 18:10:55 -0800
Message-ID: <CAMKF1so_kfqiUSTpHUL8PqLsD_wa776d9zQE-ZL30TjtgM9xQQ@mail.gmail.com>
To: chinmaya hoshing <cahoshing@gmail.com>
Cc: poky@yoctoproject.org
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
X-List-Received-Date: Wed, 23 Nov 2011 02:11:36 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 14, 2011 at 3:29 AM, chinmaya hoshing <cahoshing@gmail.com> wro=
te:
> Hi ,
> I am trying=C2=A0to=C2=A0port Poky=C2=A0to=C2=A0the "sandybridge platform=
" and=C2=A0 using the branch
> "bernard" for "fishriver" machine.
> I am running Ubuntu 10.10 on 64 bit machine.
> In this =C2=A0I am trying to pull cpluff library
> Following is the error I am getting :-
> | /bin/sh ../libtool --tag=3DCC =C2=A0 --mode=3Dlink ccache i586-poky-lin=
ux-gcc -m32
> -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfpmath=3Dsse
> --sysroot=3D/home/poky/build/tmp/sysroots/fishriver =C2=A0-fexpensive-opt=
imizations
> -fomit-frame-pointer -frename-registers -O2 -ggdb
> -feliminate-unused-debug-types -no-undefined -version-info 0:3:0
> -L/home/poky/build/tmp/sysroots/fishriver/usr/lib -o libcpluff.la -rpath
> /usr/lib psymbol.lo pscan.lo ploader.lo pinfo.lo pcontrol.lo serial.lo
> logging.lo context.lo cpluff.lo util.lo list.lo hash.lo thread_posix.lo
> -lexpat -ldl
> | ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric
> -mfpmath=3Dsse --sysroot=3D/home/poky/build/tmp/sysroots/fishriver -share=
d
> =C2=A0.libs/psymbol.o .libs/pscan.o .libs/ploader.o .libs/pinfo.o
> .libs/pcontrol.o .libs/serial.o .libs/logging.o .libs/context.o
> .libs/cpluff.o .libs/util.o .libs/list.o .libs/hash.o .libs/thread_posix.=
o
> =C2=A0-L/home/poky/build/tmp/sysroots/fishriver/usr/lib /usr/lib/libexpat=
.so -ldl
> =C2=A0-m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfpmath=3Dsse -Wl,-son=
ame
> -Wl,libcpluff.so.0 -o .libs/libcpluff.so.0.0.3
> | /usr/lib/libexpat.so: could not read symbols: File in wrong format
> | collect2: ld returned 1 exit status
> | make[3]: *** [libcpluff.la] Error 1
> | make[3]: Leaving directory
> `/home/poky/build/tmp/work/atom-poky-linux/cpluff-0.1.3-r0/cpluff-0.1.3/l=
ibcpluff'
> | make[2]: *** [all-recursive] Error 1
> | make[2]: Leaving directory
> `/home/poky/build/tmp/work/atom-poky-linux/cpluff-0.1.3-r0/cpluff-0.1.3/l=
ibcpluff'
> | make[1]: *** [all-recursive] Error 1
> | make[1]: Leaving directory
> `/home/poky/build/tmp/work/atom-poky-linux/cpluff-0.1.3-r0/cpluff-0.1.3'
> | make: *** [all] Error 2
> | FATAL: oe_runmake failed
> | ERROR: Function 'do_compile' failed (see
> /home/poky/build/tmp/work/atom-poky-linux/cpluff-0.1.3-r0/temp/log.do_com=
pile.546
> for further information)
> NOTE: package cpluff-0.1.3-r0: task do_compile: Failed
> ERROR: Task 8
> (/home/sct/black_gigabyte/poky/meta-sct/recipes-sct/cpluff/cpluff_0.1.3.b=
b,
> do_compile) failed with exit code '1'
>
> After going through the error it seems that during compilation it is taki=
ng
> the expat library from my system instead it should take from poky
> environment =C2=A0so throwing error.
> So what changes should I make in my recipe .Can any one help me too solve
> the error.
>
> following is the recipe =C2=A0for Cpluff
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ************cpluff_0.1.3.bb*****************
> DESCRIPTION =3D "C-Pluff, a plug-in framework for C"
> HOMEPAGE =3D "http://www.c-pluff.org"
> LICENSE =3D "MIT"
> DEPENDS +=3D "expat"
> SRC_URI =3D "http://www.c-pluff.org/downloads/${PN}-${PV}.tar.gz"
> S =3D "${WORKDIR}/cpluff-0.1.3"
> export TARGET_LDFLAGS=3D"-L${STAGING_DIR}/${MACHINE}${libdir}" =C2=A0 =C2=
=A0 //line
> added so that during compilation it should take libraries from poky
> environment =C2=A0 but after adding this line getting same error as above
> inherit autotools
> do_configure() {
> =C2=A0 cd ${S}
> =C2=A0 ./configure --prefix=3D/usr
> }
> do_qa_configure() {
> }

this seems to be a libtool error to me. Somehow either the new libtool
macros are not being used or libtool script itself used is old.

