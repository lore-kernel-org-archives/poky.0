Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 080DC4C80050
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 15:08:00 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so13083704iwn.35
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 13:08:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=7IF72nzuJ5/Z5jBHDqXqNyn/XgmcrDQMZGO9IXZnd40=;
	b=QJARlT2ZVK/LpnYqU+AO7WpTbdfakSpjPuLwMiYx0mNmcaR1WLiz1X5l/U5zrF4Bxj
	JSn4unq8sMQ7LQvGGD6N69Qy2dHVTHHhbeG++KUuzqcFf+eg6O4mLeYgPE5jZT34WwUa
	jLSVYNAmZVAZ9BuBa7TDUD5kMtvrgtb4ewdJk=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=HeKxhNIr1iJyTudThbbyo79QN0V1pHJF3FXIrSc9P+5deX+tnpfa4CsBxlCV8DVoZw
	hIOfhpgrsvWLQLmSVQUJLCfuBT5yJbN0FlrSeqpTd+4MRPdTOYMeYUYUp8Hka0r9/veG
	VhPlGenplZj3VP4mT4E+ycZUKM1vk/Go3Halg=
MIME-Version: 1.0
Received: by 10.231.207.73 with SMTP id fx9mr5939431ibb.137.1293743280538;
	Thu, 30 Dec 2010 13:08:00 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Thu, 30 Dec 2010 13:08:00 -0800 (PST)
In-Reply-To: <4D1A86E3.1070007@linux.intel.com>
References: <4D1A8103.2030501@linux.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D64C30DB7@shsmsx502.ccr.corp.intel.com>
	<4D1A86E3.1070007@linux.intel.com>
Date: Thu, 30 Dec 2010 16:08:00 -0500
Message-ID: <AANLkTi=EfFUs-fi6veKCdvi0XeDT+veP7eNx6YVEKauF@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
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
X-List-Received-Date: Thu, 30 Dec 2010 21:08:01 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 28, 2010 at 7:54 PM, Darren Hart <dvhart@linux.intel.com> wrote=
:
> On 12/28/2010 04:43 PM, Tian, Kevin wrote:
>>>
>>> From: Darren Hart
>>> Sent: Wednesday, December 29, 2010 8:30 AM
>>>
>>> I'm working on packaging kernelshark ("make gui" for the trace-cmd reci=
pe
>>> basically). It fails trying to link to -lgtk-x11-2.0. I have added gtk+
>>> as a DEPENDS and the library does exist in the sysroots. I have also
>>> added
>>> "inherit pkgconfig" as the project Makefile uses it extensively.
>>>
>>> gcc trace-view-main.o trace-view.o trace-view-store.o trace-filter.o
>>> trace-compat.o
>>> trace-hash.o libtracecmd.a -rdynamic -o trace-view -pthread -lgtk-x11-2=
.0
>>> -lgdk-x11-2.0
>>> -latk-1.0 -lgio-2.0 -lpangoft2-1.0 -lgdk_pixbuf-2.0 -lpangocairo-1.0
>>> -lcairo -lpango-1.0
>>> -lfreetype -lfontconfig -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt
>>> -lglib-2.0 =A0 -L.
>>> -ltracecmd -ldl
>>> | /usr/bin/ld: cannot find -lgtk-x11-2.0
>>
>> it looks that native gcc/binutils are used here, instead of the cross on=
e.
>> Or else gcc
>> should have a target prefix like i568-poky-linux-gcc, and ld should come
>> from your
>> native sysroot...
>
>
> Yes, I noticed this too. Turns out the Makefile was forcing CC=3Dgcc.
>
>
>>
>>> | collect2: ld returned 1 exit status
>>> | make[1]: *** [trace-view] Error 1
>>> | make[1]: *** Waiting for unfinished jobs....
>>> | make: *** [gui] Error 2
>>> | FATAL: oe_runmake failed
>>> | ERROR: Task failed: ('function do_compile failed',
>>>
>>> '/vol/1/dvhart/poky.git/build/tmp/work/core2-poky-linux/kernelshark-1.0=
.4+git0+0d2522
>>> 24626bd6926324f023a65f20c165232891-r0/temp/log.do_compile.12830')
>>> NOTE: package
>>> kernelshark-1.0.4+git0+0d252224626bd6926324f023a65f20c165232891-r0: tas=
k
>>> do_compile: Failed
>>> ERROR: Task 8
>>>
>>> (/home/dvhart/data/poky.git/meta/recipes-kernel/trace-cmd/kernelshark_g=
it.bb,
>>> do_compile) failed with 1
>>> ERROR:
>>> '/home/dvhart/data/poky.git/meta/recipes-kernel/trace-cmd/kernelshark_g=
it.bb'
>>> failed
>>>
>>> Without the "gui" target, trace-cmd doesn't link against anything outsi=
de
>>> of
>>> libc and ld, so the original recipe doesn't run into this.
>>
>> given earlier confusion, I'm worried whether original trace-cmd does wor=
k
>> as expected,
>> e.g. whether it runs on a non-x86 target?
>
>
> I'm confident it does not. I'll be sending a fix for that along with my
> kernelshark recipe.

Something smells wrong here, must have been an update to trace-cmd,
I ran trace-cmd on all architectures when doing the initial work. So I'm
quite confident that it did :)

Bruce

>
>
>>
>>>
>>> How does bitbake try to make the library path available to a make based
>>> project? I've tried various incantations from other non-autotools gtk+
>>> based recipes:
>>>
>>> do_compile_prepend =3D " \
>>> =A0 =A0 =A0 =A0export LDFLAGS=3D'${LDFLAGS} `${STAGING_BINDIR_NATIVE}/p=
kg-config
>>> gtk+-2.0 --libs`'; \
>>> =A0 =A0 =A0 export CFLAGS=3D'${CFLAGS} -I./ `${STAGING_BINDIR_NATIVE}/p=
kg-config
>>> gtk+-2.0 --cflags`'; "
>>>
>>> export VERBOSE=3D1
>>> CFLAGS +=3D "-L ${STAGING_LIBDIR}"
>>> LDFLAGS +=3D "-L ${STAGING_LIBDIR}"
>>> CFLAGS_prepend =3D "-L ${STAGING_LIBDIR}"
>>> LDFLAGS_prepend =3D "-L ${STAGING_LIBDIR}"
>>>
>>> However, these don't appear to impact the commands executed by the
>>> project
>>> Makefile (despite the fact that it tries to import existing CFLAGS).
>>>
>>
>> No idea here. You may need check the Makefile carefully whether there's
>> any
>> tricky lines breaking things here... At least you may change Makefile
>> directly first. :-)
>
> Yes, this is the path I took. Now working back up the stack to try and ge=
t
> it working with poky.
>
> Thanks,
>
> --
> Darren Hart
> Yocto Linux Kernel
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

