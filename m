Return-Path: <kergoth@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7BCC74C80BD8
	for <poky@yoctoproject.org>; Tue, 28 Dec 2010 18:41:55 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwb31 with SMTP id 31so11840877wwb.11
	for <poky@yoctoproject.org>; Tue, 28 Dec 2010 16:41:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:mime-version:sender:received
	:in-reply-to:references:from:date:x-google-sender-auth:message-id
	:subject:to:cc:content-type:content-transfer-encoding;
	bh=6N9eApu5AtmYsuJw+sJM6IGv3x3u0uizwRpfk/R7XiU=;
	b=wpZTzcVy2ySbO3x3gTWGo74OxBN5yukZu7SqqRsX1D7jcZZLdydl2Q1kuF59l82TJT
	cVnzCOrYXcCQ6jJ4aAMKkp06Cs5WF4ITfw6Pm7oHM0kDjvT1oB4J84mYgUAOApPwINZD
	1dyNvosJ2NlsTh5t5hd0qPjlmzPVz1Fse4A74=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	b=k2Nd7vV2QMyvZHYj5JBVSAkilTdoWUH4JSKW1UQOeHonNKmNjsP0MQA5oR6JqBd8Yn
	mHA+zZw/N098OjlJxBF3TU8CfqK9h2Xs6bdn7mTgFgQKQRj4qrWk9diQs2woamm4o2Zn
	R1dXzvizRZh8c9zHLsuJECokqlddU7dAGIBwA=
Received: by 10.216.155.75 with SMTP id i53mr8680501wek.27.1293583314358; Tue,
	28 Dec 2010 16:41:54 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.216.67.67 with HTTP; Tue, 28 Dec 2010 16:41:34 -0800 (PST)
In-Reply-To: <4D1A8103.2030501@linux.intel.com>
References: <4D1A8103.2030501@linux.intel.com>
From: Chris Larson <clarson@kergoth.com>
Date: Tue, 28 Dec 2010 17:41:34 -0700
X-Google-Sender-Auth: GbVWZ24lmzWBcwoMo0g6gM_9Kb4
Message-ID: <AANLkTinj7sVzHzDX9b09H+BQy4HDUvs-5kt8gehhOiZ2@mail.gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Library paths for Makefile based recipes
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
X-List-Received-Date: Wed, 29 Dec 2010 00:41:55 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 28, 2010 at 5:29 PM, Darren Hart <dvhart@linux.intel.com> wrote=
:
> I'm working on packaging kernelshark ("make gui" for the trace-cmd recipe
> basically). It fails trying to link to -lgtk-x11-2.0. I have added gtk+
> as a DEPENDS and the library does exist in the sysroots. I have also adde=
d
> "inherit pkgconfig" as the project Makefile uses it extensively.
>
> gcc trace-view-main.o trace-view.o trace-view-store.o trace-filter.o trac=
e-compat.o trace-hash.o libtracecmd.a -rdynamic -o trace-view -pthread -lgt=
k-x11-2.0 -lgdk-x11-2.0 -latk-1.0 -lgio-2.0 -lpangoft2-1.0 -lgdk_pixbuf-2.0=
 -lpangocairo-1.0 -lcairo -lpango-1.0 -lfreetype -lfontconfig -lgobject-2.0=
 -lgmodule-2.0 -lgthread-2.0 -lrt -lglib-2.0 =C2=A0 -L. -ltracecmd -ldl
> | /usr/bin/ld: cannot find -lgtk-x11-2.0
> | collect2: ld returned 1 exit status
> | make[1]: *** [trace-view] Error 1
> | make[1]: *** Waiting for unfinished jobs....
> | make: *** [gui] Error 2
> | FATAL: oe_runmake failed
> | ERROR: Task failed: ('function do_compile failed', '/vol/1/dvhart/poky.=
git/build/tmp/work/core2-poky-linux/kernelshark-1.0.4+git0+0d252224626bd692=
6324f023a65f20c165232891-r0/temp/log.do_compile.12830')
> NOTE: package kernelshark-1.0.4+git0+0d252224626bd6926324f023a65f20c16523=
2891-r0: task do_compile: Failed
> ERROR: Task 8 (/home/dvhart/data/poky.git/meta/recipes-kernel/trace-cmd/k=
ernelshark_git.bb, do_compile) failed with 1
> ERROR: '/home/dvhart/data/poky.git/meta/recipes-kernel/trace-cmd/kernelsh=
ark_git.bb' failed
>
> Without the "gui" target, trace-cmd doesn't link against anything outside=
 of
> libc and ld, so the original recipe doesn't run into this.
>
> How does bitbake try to make the library path available to a make based
> project? I've tried various incantations from other non-autotools gtk+
> based recipes:
>
> do_compile_prepend =3D " \
> =C2=A0 =C2=A0 =C2=A0 =C2=A0export LDFLAGS=3D'${LDFLAGS} `${STAGING_BINDIR=
_NATIVE}/pkg-config gtk+-2.0 --libs`'; \
> =C2=A0 =C2=A0 =C2=A0 export CFLAGS=3D'${CFLAGS} -I./ `${STAGING_BINDIR_NA=
TIVE}/pkg-config gtk+-2.0 --cflags`'; "

This will only work if EXTRA_OEMAKE is default, by the way.  The
default EXTRA_OEMAKE is "-e MAKEFLAGS=3D", which means "override all
makefile variables with the values from the environment, if they
exist, and don't pass the -e flag into submakes".

In my opinion, the better bet is to be explicit -- pass variables into
the make execution explicitly, rather than relying on exports and the
environment to do so, e.g.:

EXTRA_OEMAKE =3D "\
    'CC=3D${CC}' \
    'CFLAGS=3D${CFLAGS}' \
    'LFLAGS=3D${LDFLAGS}' \
"

Or what have you -- of course, what you pass in and how these are used
depends on the buildsystem in question.

> However, these don't appear to impact the commands executed by the projec=
t
> Makefile (despite the fact that it tries to import existing CFLAGS).

You don't want cflags, you want the ldflags, or whatever corresponding
variable is used in the makefiles.  Short answer: read the makefiles.
The default behavior for non-autotools recipes is actually an
unfortunate one: it tends to "just work" for a lot of cases, which
actually encourages people to not actually read and at least minimally
grasp the buildsystem of what they're building, which causes problems
later on.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

