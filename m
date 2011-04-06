Return-Path: <raj.khem@gmail.com>
Received: from mail-bw0-f48.google.com (mail-bw0-f48.google.com
	[209.85.214.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6FD354C80132
	for <poky@yoctoproject.org>; Wed,  6 Apr 2011 12:07:08 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by bwz8 with SMTP id 8so2079776bwz.35
	for <poky@yoctoproject.org>; Wed, 06 Apr 2011 10:07:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=Cm8iZiQpokCDviuwrpHm9y5ItiWxd020KzXoy59TruA=;
	b=yFlge2kMDncIrXXL/KsNdrSvbRzMnTpF5fjH0sATgdH9HYR2it/d9LcntRbGGxTvui
	W8C6Zk3Cu8CBPJjUOHu7cWWiWQ7UfTCV8p5LM8plnH7Q3/JYElXfGl0cjDOUrGl0BOxO
	dSpooBGT+2GfO7eVlaEcOkZMhZriX+bVPIQwY=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	b=ROvtOpwHiDUlui1wejsfsP5eBAyblRDo+fR+ueaL+WsrHPsORDLCsLSXevT+CsITqG
	yIw0fs3W28IICTXo/obQQZbzpH+6LGppA3L9bRo6GnYu1oB9NgfUBzCrWHp5bF1+pea2
	wf+Vn/HSeOsD34xdM1CLkEObWF2zokRlwE42A=
Received: by 10.204.16.198 with SMTP id p6mr1112730bka.143.1302109627149; Wed,
	06 Apr 2011 10:07:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.23.136 with HTTP; Wed, 6 Apr 2011 10:06:37 -0700 (PDT)
In-Reply-To: <1302088591.2355.7.camel@scimitar>
References: <cover.1301664697.git.josh@linux.intel.com>
	<8d834327e2d84b8d4ad72b9c617d261ab8b206e2.1301664697.git.josh@linux.intel.com>
	<BANLkTi=etDyw_wqyqbErqoR92cwOXw3R4A@mail.gmail.com>
	<1301957183.24596.414.camel@rex> <1302088591.2355.7.camel@scimitar>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 6 Apr 2011 10:06:37 -0700
Message-ID: <BANLkTik=9jfHyeqiXwzS0dA2p=MDfdb8Yw@mail.gmail.com>
To: Joshua Lock <josh@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/7] elfutils: fix builds with gcc 4.6
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
X-List-Received-Date: Wed, 06 Apr 2011 17:07:08 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 6, 2011 at 4:16 AM, Joshua Lock <josh@linux.intel.com> wrote:
> On Mon, 2011-04-04 at 23:46 +0100, Richard Purdie wrote:
>> On Mon, 2011-04-04 at 23:37 +0200, Martin Jansa wrote:
>> > On Fri, Apr 1, 2011 at 3:40 PM, Joshua Lock <josh@linux.intel.com> wro=
te:
>> > > From: Joshua Lock <josh@linux.intel.com>
>> > >
>> > > gcc 4.6 (as used in Fedora 15) adds some extra warnings which are
>> > > included with Werror. The new unused-but-set variable warning causes
>> > > an error in libasm of elfutils. Work around this by removing
>> > > unused-but-set from Werror.
>> > >
>> > > Signed-off-by: Joshua Lock <josh@linux.intel.com>
>> > > ---
>> > > =C2=A0meta/recipes-devtools/elfutils/elfutils_0.148.bb | =C2=A0 =C2=
=A04 ++++
>> > > =C2=A01 files changed, 4 insertions(+), 0 deletions(-)
>> > >
>> > > diff --git a/meta/recipes-devtools/elfutils/elfutils_0.148.bb b/meta=
/recipes-devtools/elfutils/elfutils_0.148.bb
>> > > index b2f700e..c395be8 100644
>> > > --- a/meta/recipes-devtools/elfutils/elfutils_0.148.bb
>> > > +++ b/meta/recipes-devtools/elfutils/elfutils_0.148.bb
>> > > @@ -40,6 +40,10 @@ SRC_URI +=3D "\
>> > >
>> > > =C2=A0inherit autotools
>> > >
>> > > +# GCC 4.6.0 raises an unused-but-set warning in libasm, for now rem=
ove
>> > > +# this warning from Werror
>> > > +CFLAGS_virtclass-native +=3D "-Wno-error=3Dunused-but-set-variable"
>> > > +
>> > > =C2=A0EXTRA_OECONF =3D "--program-prefix=3Deu-"
>> >
>> > this breaks all other distros not yet using gcc-4.6..
>> >
>> >
>> > configure:2892: checking whether the C compiler works
>> > configure:2914: gcc -Wno-error=3Dunused-but-set-variable
>> > -isystem/OE/shr-core/tmp/sysroots/x86_64-linux/usr/include
>> > -L/OE/shr-core/tmp/sysroots/x86_64-linux/usr/lib
>> > -Wl,-rpath-link,/OE/shr-core/tmp/sysroots/x86_64-linux/usr/lib
>> > -Wl,-rpath,/OE/shr-core/tmp/sysroots/x86_64-linux/usr/lib -Wl,-O1
>> > conftest.c =C2=A0>&5
>> > cc1: error: -Werror=3Dunused-but-set-variable: No option -Wunused-but-=
set-variable
>> > configure:2918: $? =3D 1
>> > configure:2956: result: no
>> > configure: failed program was:
>> > | /* confdefs.h */
>> > | #define PACKAGE_NAME "Red Hat elfutils"
>> > | #define PACKAGE_TARNAME "elfutils"
>> > | #define PACKAGE_VERSION "0.148"
>> > | #define PACKAGE_STRING "Red Hat elfutils 0.148"
>> > | #define PACKAGE_BUGREPORT "http://bugzilla.redhat.com/bugzilla/"
>> > | #define PACKAGE_URL ""
>> > | #define PACKAGE "elfutils"
>> > | #define VERSION "0.148"
>> > | #define MODVERSION "Build on jama 2011-04-04T23:34:25+0200"
>> > | /* end confdefs.h. =C2=A0*/
>> > |
>> > | int
>> > | main ()
>> > | {
>> > |
>> > | =C2=A0 ;
>> > | =C2=A0 return 0;
>> > | }
>> > configure:2961: error: in
>> > `/OE/shr-core/tmp/work/x86_64-linux/elfutils-native-0.148-r1/elfutils-=
0.148':
>> > configure:2965: error: C compiler cannot create executables
>> > See `config.log' for more details.
>
> Sorry about this Martin. Thanks for catching and reporting.
>
>>
>> Ouch, I'm going to revert this, we'll need an alternative fix. Thanks
>> for reporting!
>
> I've worked up an alternative fix and sent a pull request to oe-core. I
> took the approach of consolidating several patches from the upstream
> source repository which remove the unused variables.
>
> I consolidated them into a single patch so that they are easier to drop
> once we update elfutils to 0.152 or higher.
>

Why not update to 0.152 then

> Regards,
> Joshua
> --
> Joshua Lock
> =C2=A0 =C2=A0 =C2=A0 =C2=A0Yocto Build System Monkey
> =C2=A0 =C2=A0 =C2=A0 =C2=A0Intel Open Source Technology Centre
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

