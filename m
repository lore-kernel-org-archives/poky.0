Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52491E00D6B; Tue, 18 Jun 2019 13:57:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.41 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF3D5E00CD5
	for <poky@yoctoproject.org>; Tue, 18 Jun 2019 13:57:20 -0700 (PDT)
Received: by mail-ot1-f41.google.com with SMTP id s20so16928700otp.4
	for <poky@yoctoproject.org>; Tue, 18 Jun 2019 13:57:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=zSBTdSNqAkn4wjRlrKgoyE1HF5ycKAAuH98D1anS138=;
	b=qbP1a+yZi4PXgSBp3mhx6b+t4WKdAECDfqLqOF+SRlOlsrFANoTKCljnDOUUNxcLXA
	gJg2HtG6bNUxUt9D2Kb6Et68D9gFVctzNZVOia3IEUfUFcWaBSbDlb98oMnZxeeBFqWu
	PnI4PelTavQiKXgPF9CV+3XoVOu/6HP0DxdjYea2cBAxYs4BZG7o/WcYF2DvNFXHNBvM
	X8bW3YWz/YTYzBkqf6Lx1MJQEwpI8KXlz9wDl87nFC01X5mFKaLZT2Ok1YLzxHJuv/sU
	zb0SO0sY4QR9co+zG3fgB2rFAqPPpyTElwvXx3RktY5zNSsbeJe47d9eQ0hXCeapiqwj
	8oYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=zSBTdSNqAkn4wjRlrKgoyE1HF5ycKAAuH98D1anS138=;
	b=opaFiq/R122SVSi+wNEU+6vfu2GlXkrYQKJydC0qJe4LgWGjj++uRK0JYAQIicHT+H
	hMuMXy7pgqTVo4mJQk1G0jNoJVqFxFtY2hEKsSBhbJf2Oj2SJUvTmYhjw8rqeZ74F2H6
	kLbrJBW5zr3BYyhVHPYnHFzidlOFgSaaJkNL1Ldv3VN68brT1yuhN53ZEr4tvMOqdX6c
	pUlW3XjoCQmL/QvxwXgON2nsm3aXOlsgQChGNbYYOEP+uOpUy+WjBM0WTdVlrz47dRLs
	vB/BBYADIAN8/TiUsQN4BbL0/Lt/pIIkRI9tReob+2YDq4al/Zr1RQz6fdNVEGgR+K5A
	5joQ==
X-Gm-Message-State: APjAAAWH2C7dwH3mvhrvihDL81iT3jX3UtpFlDfiOxA7QH4pmVeHGFj5
	7RUiUxmRzxw9+uuvH36zNExFUZSsd4Gjrbi+icH7KF+S
X-Google-Smtp-Source: APXvYqxtP2oGwehVZeN9vUL0AgDfemH4RVTiwxsYjODVP33qvTZK3Y/drzTW+EdIVKadIHoam/fXYlHvQq9Q0RrZ29I=
X-Received: by 2002:a9d:7003:: with SMTP id k3mr682700otj.28.1560891440185;
	Tue, 18 Jun 2019 13:57:20 -0700 (PDT)
MIME-Version: 1.0
References: <e3607e3b603a3c19c520e59774b7039d@mail.gmail.com>
In-Reply-To: <e3607e3b603a3c19c520e59774b7039d@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 18 Jun 2019 22:57:09 +0200
Message-ID: <CANNYZj_wSjvo7Dwp0T3Yuep-qGOZMFg3SWwhLCUpBa0nM0X-Cg@mail.gmail.com>
To: Jonathan Richardson <jonathan.richardson@broadcom.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: openssl10 in warrior
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
X-List-Received-Date: Tue, 18 Jun 2019 20:57:21 -0000
Content-Type: multipart/alternative; boundary="000000000000d34702058b9f5b15"

--000000000000d34702058b9f5b15
Content-Type: text/plain; charset="UTF-8"

On Tue, 18 Jun 2019 at 22:29, Jonathan Richardson <
jonathan.richardson@broadcom.com> wrote:

> How do you set the version of openssl back to openssl10? There is no
> PROVIDES
> openssl in openssl10  so I can't set PREFERRED_PROVIDER_openssl. If I
> change my
> DEPENDS in the my recipe to openssl10-native  eventually another native
> recipe that
> depends on openssl tries to populate a library to sysroot and fails
> because its already
> there.
>

Before asking how, you should explain why. What is your need for it?

Openssl 1.0 is no longer supported by upstream at the end of 2019, so Yocto
project no longer provides that version as the default or preferred one.
The recipe has been removed altogether in the master branch. Openssl is a
critical security component with a history of major vulnerabilities, so we
don't want to endorse extending the lifespan of a version that no longer
gets any kind of fixes from upstream.

Alex

--000000000000d34702058b9f5b15
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">On Tue, 18 Jun 2019 at 2=
2:29, Jonathan Richardson &lt;<a href=3D"mailto:jonathan.richardson@broadco=
m.com">jonathan.richardson@broadcom.com</a>&gt; wrote:<br></div><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:r=
gb(204,204,204);padding-left:1ex">How do you set the version of openssl bac=
k to openssl10? There is no<br>
PROVIDES<br>
openssl in openssl10=C2=A0 so I can&#39;t set PREFERRED_PROVIDER_openssl. I=
f I<br>
change my<br>
DEPENDS in the my recipe to openssl10-native=C2=A0 eventually another nativ=
e<br>
recipe that<br>
depends on openssl tries to populate a library to sysroot and fails<br>
because its already<br>
there.<br></blockquote><div><br></div><div>Before asking how, you should ex=
plain why. What is your need for it?<br></div><div><br></div><div>Openssl 1=
.0 is no longer supported by upstream at the end of 2019, so Yocto project =
no longer provides that version as the default or preferred one. The recipe=
 has been removed altogether in the master branch. Openssl is a critical se=
curity component with a history of major vulnerabilities, so we don&#39;t w=
ant to endorse extending the lifespan of a version that no longer gets any =
kind of fixes from upstream.</div><div><br></div><div>Alex=C2=A0</div></div=
></div></div>

--000000000000d34702058b9f5b15--
