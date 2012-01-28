Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 804A9E00599
	for <poky@yoctoproject.org>; Sat, 28 Jan 2012 10:26:43 -0800 (PST)
Received: by lagz14 with SMTP id z14so2158711lag.35
	for <poky@yoctoproject.org>; Sat, 28 Jan 2012 10:26:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=M2SVHb3UKTBaUMCXkenSsuOMFX4ExxHnWGVOGA7SCvM=;
	b=Ao8XMx1oogF+DMlNsNlzfJdcgBre93t2L3h0j4+sNyR5PyFdY7qLpHb5Ic+6vcxbwD
	XS28wwnlugYAQZcIK9ZCJFBDVw1hDB+QIVBC6YOv4ZIbr9ynFEigFMAFrvOOCs6Qx+LK
	YMc5UXkrMrnUzTI2yiv5FERj25KqFxJuaQDI4=
Received: by 10.152.114.169 with SMTP id jh9mr5898548lab.20.1327775202225;
	Sat, 28 Jan 2012 10:26:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.5.201 with HTTP; Sat, 28 Jan 2012 10:26:12 -0800 (PST)
In-Reply-To: <20120127213229.EE243159515C@gemini.denx.de>
References: <1327681281-11454-1-git-send-email-paul.gortmaker@windriver.com>
	<1327681281-11454-2-git-send-email-paul.gortmaker@windriver.com>
	<20120127173315.A632E1581959@gemini.denx.de>
	<4F22E15B.4070105@windriver.com>
	<20120127213229.EE243159515C@gemini.denx.de>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 28 Jan 2012 10:26:12 -0800
Message-ID: <CAMKF1sqgBGAG0mYYkfJzcPDVOaZGMbTuF7RhQXq+WjYhXsBT8w@mail.gmail.com>
To: Wolfgang Denk <wd@denx.de>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/3] u-boot: Don't make the -Os removal part of global settings.
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
X-List-Received-Date: Sat, 28 Jan 2012 18:26:44 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 27, 2012 at 1:32 PM, Wolfgang Denk <wd@denx.de> wrote:
> Dear Paul,
>
> In message <4F22E15B.4070105@windriver.com> you wrote:
>>
>> I would agree with you, but as I said in the commit log,
>> I don't want to be changing other people's settings that
>> I can't personally test. =C2=A0If the owners of those platforms
>> figure that is an acceptable risk, then I'll gladly send
>> another patch to remove the -Os toggle entirely.
>

it was a kludge to cope with gcc and now that gcc is fixed it should be
removed. So please go ahead

> The compiler options used by U-Boot are pretty carefully tuned.
> Messing with them is actually the greater risk - using -O2 instead of
> -Os results in considerably larger code, which breaks for example the
> mapping to flash sectors on a number of boards.
>
> I recommend removing this.
>
> Best regards,
>
> Wolfgang Denk
>
> --
> DENX Software Engineering GmbH, =C2=A0 =C2=A0 MD: Wolfgang Denk & Detlev =
Zundel
> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
> Too many people are ready to carry the stool when the piano needs =C2=A0t=
o
> be moved.
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

