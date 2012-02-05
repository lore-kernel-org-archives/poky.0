Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1B5DE0044E
	for <poky@yoctoproject.org>; Sat,  4 Feb 2012 22:15:55 -0800 (PST)
Received: by pbcc11 with SMTP id c11so5213831pbc.35
	for <poky@yoctoproject.org>; Sat, 04 Feb 2012 22:15:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=C2DvlpGwbSIO2FHWiGMRiMOx3R8fZzoCIYE+OQrvQEM=;
	b=c8Yk8awfwSns6/+UBnpIygNtT4LU7I7a6uqaUujgKnl9v/8SLazJ6SptaM3j6zN+6u
	iZEhH87k9o43KPFWyyonZ4uc4G8+ySIGBoUWRS00oNoki/0hb5ESS+MTaX7O5m6Ukssu
	fW68afLPYqTBSCY5wnAK7s+r0r5pYevDGGeac=
MIME-Version: 1.0
Received: by 10.68.218.5 with SMTP id pc5mr34256406pbc.101.1328422555706; Sat,
	04 Feb 2012 22:15:55 -0800 (PST)
Received: by 10.142.139.16 with HTTP; Sat, 4 Feb 2012 22:15:55 -0800 (PST)
In-Reply-To: <CADkTA4PPwW50zU3xoq+Q7zPe39o4RUsw3h64m1E8QiMhaar6nQ@mail.gmail.com>
References: <CAMeAviTZx-ruqeer9OLw49Hzar-y1p8CidU+77qn5u2FSd1UZg@mail.gmail.com>
	<CADkTA4PPwW50zU3xoq+Q7zPe39o4RUsw3h64m1E8QiMhaar6nQ@mail.gmail.com>
Date: Sun, 5 Feb 2012 01:15:55 -0500
Message-ID: <CADkTA4OcSqeFODv0ukxWoT+tQwkYB31TfY=tfDSiPkvMd1eNOg@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: "Bryan O'Donoghue" <magnificopaddy@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: Applying a defconfig easily to a kernel
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
X-List-Received-Date: Sun, 05 Feb 2012 06:15:56 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Sun, Feb 5, 2012 at 12:28 AM, Bruce Ashfield
<bruce.ashfield@gmail.com> wrote:
> On Sat, Feb 4, 2012 at 5:51 AM, Bryan O'Donoghue
> <magnificopaddy@gmail.com> wrote:
>> Greetings list.
>>
>> I've had a hard time applying a complete - unmodified defconfig to my
>> local git kernel config. So rather than dig through the internals of
>> the build process, I took the following short-cut.
>>
>> It works - is it "wrong" though ? I like it because it's
>> easy/straightforward. Basically if I define a defconfig - the system
>> will trust the file and apply it directly - which I suspect is what
>> 99% of people who supply a defconfig will want anyway.
>>
>> Consider applying.
>
> This isn't what we want. defconfigs are properly handled by the integrate=
d
> build rules already. And it does work ... I confirmed that multiple times
> on Friday.
>
> You problem is that you are attempting to use the linux-yocto repository
> + a decfonfig and running into some problems. We can work through those
> issues and determine what is happening.
>
> We want the integrated defconfig handling, since features can still be ap=
pended
> and have their own associated kernel config values. With a defconfig clob=
ber,
> all that functionality is broken. As are the configuration audit
> steps, etc, etc. In
> other words, it drops the value that we are trying to promote and nudge a=
way
> from defconfigs.

And just as a followup, I was testing my last series of changes before send=
ing a
pull request, and I re-ran my defconfig tests with the linux-korg
recipe, pointed at
linux-yocto-3.2 as the source:

yow-bashfiel-l1 [/home/bruc...930686c-r0]> diff -u defconfig
linux-qemux86-standard-build/.config
--- defconfig	2012-02-05 01:08:20.971955936 -0500
+++ linux-qemux86-standard-build/.config	2012-02-05 01:11:31.481956044 -050=
0
@@ -58,7 +58,7 @@
 CONFIG_BROKEN_ON_SMP=3Dy
 CONFIG_INIT_ENV_ARG_LIMIT=3D32
 CONFIG_CROSS_COMPILE=3D""
-CONFIG_LOCALVERSION=3D"-yocto-standard"
+CONFIG_LOCALVERSION=3D"-yoctized-standard"
 # CONFIG_LOCALVERSION_AUTO is not set
 CONFIG_HAVE_KERNEL_GZIP=3Dy
 CONFIG_HAVE_KERNEL_BZIP2=3Dy

So as you can see, the only difference between the staged defconfig is
the localversion, which
was the intention of my test.

So updating to the latest master + my queue of changes may be all that
you need. And I'm about
to send them out now.

Cheers,

Bruce


>
> Cheers,
>
> Bruce
>
>
>>
>> diff --git a/meta/classes/kernel-yocto.bbclass
>> b/meta/classes/kernel-yocto.bbclass
>> index 1b73e6e..f278472 100644
>> --- a/meta/classes/kernel-yocto.bbclass
>> +++ b/meta/classes/kernel-yocto.bbclass
>> @@ -178,8 +178,15 @@ do_kernel_configme() {
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0exit 1
>> =A0 =A0 =A0 =A0fi
>>
>> - =A0 =A0 =A0 echo "# Global settings from linux recipe" >> ${B}/.config
>> - =A0 =A0 =A0 echo "CONFIG_LOCALVERSION=3D"\"${LINUX_VERSION_EXTENSION}\=
" >> ${B}/.config
>> + =A0 =A0 =A0 if [ -f ${WORKDIR}/defconfig ]; then
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 echo "[INFO] HAVE A DEFCONFIG - copying ve=
rbatim"
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 cat ${WORKDIR}/defconfig
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 cp ${WORKDIR}/defconfig ${B}/.config
>> + =A0 =A0 =A0 else
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 echo "# Global settings from linux recipe"=
 >> ${B}/.config
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 echo "CONFIG_LOCALVERSION=3D"\"${LINUX_VER=
SION_EXTENSION}\" >> ${B}/.config
>> + =A0 =A0 =A0 fi
>> +
>> =A0}
>>
>> =A0python do_kernel_configcheck()
>
>
>
> --
> "Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end"



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

