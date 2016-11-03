Return-Path: <matti.kaasinen@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3CF3AE00C2E; Thu,  3 Nov 2016 01:16:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matti.kaasinen[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.53 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.53 listed in dnsbl.sorbs.net]
Received: from mail-vk0-f53.google.com (mail-vk0-f53.google.com
	[209.85.213.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F36E6E00C1A
	for <poky@yoctoproject.org>; Thu,  3 Nov 2016 01:16:44 -0700 (PDT)
Received: by mail-vk0-f53.google.com with SMTP id d65so33594228vkg.0
	for <poky@yoctoproject.org>; Thu, 03 Nov 2016 01:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=LRQOlUB1Sht35GOjQew0LHVJOFv6KXh8JbyWfHCaVl4=;
	b=vpW/qub0kBaj3Sr3HOr6UOhfc+VD7MM+Kbi8bkEy7Z5JsUEAyBbSx9PRxcogH8EKvp
	d+pMITeJe/b1vJNDfBiE2s9EeoiIQZH+HZghn5+bevkoKflew9ufR3oidRA3i7j16Aff
	pojcTLqquRBgzxlftsLSOqyOGivBCaS3tCe7SPG69ruKHe4T94NJWA9mPqkQEEIkDRzH
	nvR65JYxKttJDyWcFdBtkmw1wvvAXb3Cm3nSuJNdTO7mAwzaekN+5HNpA6hl3ZKl6AQb
	3ixQCfMFTfDsC1DO94dZhiiRO3Dl8Jn/9E+XekgcKqu42wGXXR5/syaw86s+JwoY9xaR
	AuAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=LRQOlUB1Sht35GOjQew0LHVJOFv6KXh8JbyWfHCaVl4=;
	b=jPyTTCLT3bEuK539WWt+utcLhv4Jw//6pNCozoqa9lptc9frodDHojOOSJfhtsbM5C
	cs8RZUi5meSdrl1rV80UB1CQVCep2BFpjVKuWZrAWQUOuWVwq5MWJlHhmg6uwYXLQvBC
	cJBw3JGdOAfXGLised4yLZ75PcwKSfh1GQjHUWqCT51+CKOSnYMjxH+5OuOazInUcXHd
	c+UPt6k8+mMojzxZZJ64oLEkAsYyhDpDYW4IRLXcRW72fB21OKmu4qWSH9y+msuaSMBE
	/AthSWTPhh89ySAwpFtOjOOhZszw5Mko+rVad4nITyb50xV7XKAWtRq/zqVz0f+vhyiH
	N/CA==
X-Gm-Message-State: ABUngvdh62u7rZNnLGYlv/gZHZlgNJN/Y1mu4+9KC2a71J37bOp8XRV+ewoYqp/COltth0FSAi/b7RkLHfiIxw==
X-Received: by 10.31.80.132 with SMTP id e126mr6365989vkb.109.1478161004065;
	Thu, 03 Nov 2016 01:16:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.146.208 with HTTP; Thu, 3 Nov 2016 01:16:43 -0700 (PDT)
In-Reply-To: <CADnUhn2qEMbmdoE-+e_veSYD_UFYMcCrWksFpMJeWVO6HhcNtA@mail.gmail.com>
References: <CADnUhn2dnK5aK7YGB42uH7ao6DzHWy6QmNHRtmh_BMW38B3DsA@mail.gmail.com>
	<d449b830-fbd4-1625-beed-e7ccb3abeb7f@basmevissen.nl>
	<CADnUhn1YhA5ds3GkxvdLK31LF8GyLjGJ3eXL+xNo-HCM0o3tAg@mail.gmail.com>
	<acc4cb27-a1e1-d301-58fa-71611aaf970f@basmevissen.nl>
	<CADnUhn2qEMbmdoE-+e_veSYD_UFYMcCrWksFpMJeWVO6HhcNtA@mail.gmail.com>
From: matti kaasinen <matti.kaasinen@gmail.com>
Date: Thu, 3 Nov 2016 10:16:43 +0200
Message-ID: <CADnUhn394qmq_-MiL=B9gdiUtdu9muHOFDJmoGz8gJ1q_U-z0Q@mail.gmail.com>
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
X-List-Received-Date: Thu, 03 Nov 2016 08:16:48 -0000
Content-Type: multipart/alternative; boundary=001a114e1d6e91ac3b0540612d8a

--001a114e1d6e91ac3b0540612d8a
Content-Type: text/plain; charset=UTF-8

This issue is a bit off-the-original-topic, but as I found reason/solution
to this other problem, please find it below:

2016-11-02 16:13 GMT+02:00 matti kaasinen <matti.kaasinen@gmail.com>:

> Clearing workspace helped with that issue and I got new one(s): For the
> firstly: u-boot does not compile with my patches, but that is what I can
> dig. More harder one is that gcc does not produce symbols with -fpic or
> -FPIC as they did with fido - well with my recipes, anyway.
>
> Compiler commands in these utiity procedures to be packed to library are:
>     ${CC} -c -fpic ${S}/mname.c
>
> When i test object (mname.o) compiled using command:
> objdump -t objname.o
>
> I'll get only a message telling that file format is elf32-little and no
> symbols in symbol table.
> Fido compilation with same compiler options give same file format, but
> also symbols. Should add more compiler options or what else am I doing
> wrong?
>
In fact it did not matter if there was -fpic or not. Binary in working
folder was ok. However, file in staging directory was not.

File commands gave slightly different results in those two locations:
working directory:
objname.o: ELF 32-bit LSB  relocatable, ARM, EABI5 version 1 (SYSV), not
stripped
staging directory:
objname.o: ELF 32-bit LSB  relocatable, ARM, EABI5 version 1 (SYSV),
stripped

So, the reason:
The command I used in my recipe to copy object to staging directory was:
install -m 0755 ${S}/objname.o ${D}${STAGE}/

It seems that install command in bitbake recipe has changed since fido
version. Execute acl triggered something to make stripping. However,
stripping does not happen if I remove execute acl like on the line below:
install -m 0644 ${S}/objname.o ${D}${STAGE}/

--001a114e1d6e91ac3b0540612d8a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
This issue is a bit off-the-original-topic, but as I found reason/solution =
to this other problem, please find it below:<br><br>2016-11-02 16:13 GMT+02=
:00 matti kaasinen <span dir=3D"ltr">&lt;<a href=3D"mailto:matti.kaasinen@g=
mail.com" target=3D"_blank">matti.kaasinen@gmail.com</a>&gt;</span>:<br><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div>Clearing workspace help=
ed with that issue and I got new one(s): For the firstly: u-boot does not c=
ompile with my patches, but that is what I can dig. More harder one is that=
 gcc does not produce symbols with -fpic or -FPIC as they did with fido - w=
ell with my recipes, anyway.<br><br></div><div>Compiler commands in these u=
tiity procedures to be packed to library are:<br>=C2=A0=C2=A0=C2=A0 ${CC} -=
c -fpic ${S}/mname.c<br><br></div><div>When i test object (mname.o) compile=
d using command:<br></div><div>objdump -t objname.o<br><br></div><div>I&#39=
;ll get only a message telling that file format is elf32-little and no symb=
ols in symbol table.<br></div><div>Fido compilation with same compiler opti=
ons give same file format, but also symbols. Should add more compiler optio=
ns or what else am I doing wrong?</div></blockquote></div>In fact it did no=
t matter if there was -fpic or not. Binary in working folder was ok. Howeve=
r, file in staging directory was not.<br><br></div><div class=3D"gmail_extr=
a">File commands gave slightly different results in those two locations:<br=
></div><div class=3D"gmail_extra">working directory:<br>objname.o: ELF 32-b=
it LSB=C2=A0 relocatable, ARM, EABI5 version 1 (SYSV), not stripped<br></di=
v><div class=3D"gmail_extra">staging directory:<br>objname.o: ELF 32-bit LS=
B=C2=A0 relocatable, ARM, EABI5 version 1 (SYSV), stripped<br><br></div><di=
v class=3D"gmail_extra">So, the reason:<br></div><div class=3D"gmail_extra"=
>The command I used in my recipe to copy object to staging directory was:<b=
r>install -m 0755 ${S}/objname.o ${D}${STAGE}/<br><br>It seems that install=
 command in bitbake recipe has changed since fido version. Execute acl trig=
gered something to make stripping. However, stripping does not happen if I =
remove execute acl like on the line below:<br></div><div class=3D"gmail_ext=
ra">install -m 0644 ${S}/objname.o ${D}${STAGE}/<br><br></div></div>

--001a114e1d6e91ac3b0540612d8a--
