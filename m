Return-Path: <matti.kaasinen@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DF62E00ACE; Wed,  2 Nov 2016 07:13:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matti.kaasinen[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.46 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f46.google.com (mail-vk0-f46.google.com
	[209.85.213.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 596BCE009FA
	for <poky@yoctoproject.org>; Wed,  2 Nov 2016 07:13:49 -0700 (PDT)
Received: by mail-vk0-f46.google.com with SMTP id x186so13686815vkd.1
	for <poky@yoctoproject.org>; Wed, 02 Nov 2016 07:13:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+4XGEfLBMGvmdY1CMNjQD9E/aXH6Ve48ykx7NM23cYg=;
	b=aRIryFhL/bWjilF7hixwbJRCFxJRSeazU/tG51l7SvG/agOsucoNAL+pZjfRQgJC2g
	QzLirkO3ZGHlbWqkZYNhlTOBpZd6KHQF5pQ+PitSB7bGJniqV+bBZOfXnnMMWhVIkByC
	pajUU3edrRU/HOTdONerjAxTh7WNnVHBtlPCShAgfJmScs/OS9BKWW1eCS2KM6nIxM4g
	tC/65jlqONKyAyCaTyYDOPzhrNGnhH0xIWqjaOGBPSvy0rNpeH2gZ8FSTIB+kDcR0p4L
	huLFE/yNZjnOpzP9Y20cgi5FDxi688+QHrgWARaULZnmqZlzf0Tc6hg+Sk2fZGO6E7QI
	NWjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+4XGEfLBMGvmdY1CMNjQD9E/aXH6Ve48ykx7NM23cYg=;
	b=UBHvfOT44SOd2aXPq3Y5FprB+arjRRD2ctepiE8zbjxFEHvDT3mQv7BxRRBXKdqEXn
	x06mVsIhIFer566wAvVIUaTzUchHbQv74JRmjllfKvetANYwYKa8N7p23De1X89MJ/FZ
	1lknADv2BgT8BM8oLktxtMh8B7sU0N/zzIkkdX5LZWIhF6syYNbO0toZYDkQgpxaiKE6
	NSFYr48j9gbRrNx4ds2CbngzsdQQX4EW1fBU/QGFyyiGnetgKw+RYtZSfzNF5lmgBTBF
	Wk+xLngXFUhHqMmeMCIKCFnTLueZlttGLkXeId2IVl+N9wOaS3JRK9OtF6O0lfa5Mamu
	3EjA==
X-Gm-Message-State: ABUngvcidl7opOhfa7OrykqgcPXDhnVA3igcJL1LktTC+6YBzOeZI0bNIJYXfFrjJOHJ66oTceJces1yX3uZuw==
X-Received: by 10.31.80.132 with SMTP id e126mr2543265vkb.109.1478096027960;
	Wed, 02 Nov 2016 07:13:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.146.208 with HTTP; Wed, 2 Nov 2016 07:13:47 -0700 (PDT)
In-Reply-To: <acc4cb27-a1e1-d301-58fa-71611aaf970f@basmevissen.nl>
References: <CADnUhn2dnK5aK7YGB42uH7ao6DzHWy6QmNHRtmh_BMW38B3DsA@mail.gmail.com>
	<d449b830-fbd4-1625-beed-e7ccb3abeb7f@basmevissen.nl>
	<CADnUhn1YhA5ds3GkxvdLK31LF8GyLjGJ3eXL+xNo-HCM0o3tAg@mail.gmail.com>
	<acc4cb27-a1e1-d301-58fa-71611aaf970f@basmevissen.nl>
From: matti kaasinen <matti.kaasinen@gmail.com>
Date: Wed, 2 Nov 2016 16:13:47 +0200
Message-ID: <CADnUhn2qEMbmdoE-+e_veSYD_UFYMcCrWksFpMJeWVO6HhcNtA@mail.gmail.com>
To: Bas Mevissen <abuse@basmevissen.nl>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: svn fetcher crashes
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
X-List-Received-Date: Wed, 02 Nov 2016 14:13:53 -0000
Content-Type: multipart/alternative; boundary=001a114e1d6eb22a220540520cec

--001a114e1d6eb22a220540520cec
Content-Type: text/plain; charset=UTF-8

2016-11-01 23:40 GMT+02:00 Bas Mevissen <abuse@basmevissen.nl>:

> On 01/11/16 18:49, matti kaasinen wrote:
>
>>
>> 2016-11-01 19:05 GMT+02:00 Bas Mevissen <abuse@basmevissen.nl
>> <mailto:abuse@basmevissen.nl>>:
>>
>>     It might be wise to wait a few days and start from the upcoming
>>     morthy release.
>>
>> Unfortunately I need meta-ti layer and they support only every other
>> main version. Their latest release is krogoth and they are skipping
>> morthy. In fact, some update (source revision 4.1.17 -> 4.1.18)  broke
>> kernel that is why I tried to make this upgrade instead of trying to fix
>> kernel.
>>
>>
> Too bad.
>
> Be aware that from Krogoth to Morpy, quite some GCC6 host compiler fixes
> were added. So keep your build host on a distro with GCC 5.x.
>

 Version seems to be arm-poky-linux-gnueabi-gcc (GCC) 5.3.0, but something
strange there is now compared to fido compilation.(see below)

>
>     Did you start with a clean work area?
>>
>> No, I did not, I deleted SSTATE_DIR, though. I'll clean it tomorrow.
>>
>>
> OK, keep us posted.

Clearing workspace helped with that issue and I got new one(s): For the
firstly: u-boot does not compile with my patches, but that is what I can
dig. More harder one is that gcc does not produce symbols with -fpic or
-FPIC as they did with fido - well with my recipes, anyway.

Compiler commands in these utiity procedures to be packed to library are:
    ${CC} -c -fpic ${S}/mname.c

When i test object (mname.o) compiled using command:
objdump -t objname.o

I'll get only a message telling that file format is elf32-little and no
symbols in symbol table.
Fido compilation with same compiler options give same file format, but also
symbols. Should add more compiler options or what else am I doing wrong?

Thanks,
Matti

--001a114e1d6eb22a220540520cec
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
2016-11-01 23:40 GMT+02:00 Bas Mevissen <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:abuse@basmevissen.nl" target=3D"_blank">abuse@basmevissen.nl</a>&gt;</=
span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><span class=3D"=
gmail-">On 01/11/16 18:49, matti kaasinen wrote:<br>
</span><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><span class=3D"gma=
il-">
<br>
2016-11-01 19:05 GMT+02:00 Bas Mevissen &lt;<a href=3D"mailto:abuse@basmevi=
ssen.nl" target=3D"_blank">abuse@basmevissen.nl</a><br></span>
&lt;mailto:<a href=3D"mailto:abuse@basmevissen.nl" target=3D"_blank">abuse@=
basmevissen.nl</a>&gt;&gt;<wbr>:<span class=3D"gmail-"><br>
<br>
=C2=A0 =C2=A0 It might be wise to wait a few days and start from the upcomi=
ng<br>
=C2=A0 =C2=A0 morthy release.<br>
<br>
Unfortunately I need meta-ti layer and they support only every other<br>
main version. Their latest release is krogoth and they are skipping<br>
morthy. In fact, some update (source revision 4.1.17 -&gt; 4.1.18)=C2=A0 br=
oke<br>
kernel that is why I tried to make this upgrade instead of trying to fix<br=
>
kernel.<br>
<br>
</span></blockquote>
<br>
Too bad.<br>
<br>
Be aware that from Krogoth to Morpy, quite some GCC6 host compiler fixes we=
re added. So keep your build host on a distro with GCC 5.x.<span class=3D"g=
mail-"><br></span></blockquote><div><br>=C2=A0Version seems to be arm-poky-=
linux-gnueabi-gcc (GCC) 5.3.0, but something strange there is now compared =
to fido compilation.(see below)<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><span class=3D"gmail-">
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
=C2=A0 =C2=A0 Did you start with a clean work area?<br>
<br>
No, I did not, I deleted SSTATE_DIR, though. I&#39;ll clean it tomorrow.<br=
>
<br>
</blockquote>
<br></span>
OK, keep us posted.</blockquote><div>Clearing workspace helped with that is=
sue and I got new one(s): For the firstly: u-boot does not compile with my =
patches, but that is what I can dig. More harder one is that gcc does not p=
roduce symbols with -fpic or -FPIC as they did with fido - well with my rec=
ipes, anyway.<br><br></div><div>Compiler commands in these utiity procedure=
s to be packed to library are:<br>=C2=A0=C2=A0=C2=A0 ${CC} -c -fpic ${S}/mn=
ame.c<br><br></div><div>When i test object (mname.o) compiled using command=
:<br></div><div>objdump -t objname.o<br><br></div><div>I&#39;ll get only a =
message telling that file format is elf32-little and no symbols in symbol t=
able.<br></div><div>Fido compilation with same compiler options give same f=
ile format, but also symbols. Should add more compiler options or what else=
 am I doing wrong?<br><br></div><div>Thanks,<br></div><div>Matti<br></div><=
div><br></div></div><br><br></div></div>

--001a114e1d6eb22a220540520cec--
