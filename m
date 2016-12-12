Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7763E00BAF; Sun, 11 Dec 2016 22:29:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f171.google.com (mail-ua0-f171.google.com
	[209.85.217.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CF8BE00B93
	for <poky@yoctoproject.org>; Sun, 11 Dec 2016 22:29:11 -0800 (PST)
Received: by mail-ua0-f171.google.com with SMTP id b35so72834851uaa.3
	for <poky@yoctoproject.org>; Sun, 11 Dec 2016 22:29:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=3biOTnuXyIsCrLX087lDQu8aqKgW7CL7uh2TldwGR7o=;
	b=B0YZYZX3mjYRQm8Rr5Tn9Y5eave4E5UQTPwTgIIOHB+HSJ9X+o2aSMhtHFUDIFgQj9
	IKlangXSJ/BTc4UKWiN2b4tii3WLFI9xtMnI+FNLHR9Pzqo0hWUIodsWu1O5mOl+87Gh
	G2SDYr5cYeGKo2nyzYKaQnoAZMbr+KNgfEW+Yrz1Fe8NGI8p2brSEmBkMFjBDmzSsCa+
	n0KK6mGOdCf05uH2k/c2EUuZ/7srm3gmrmCKkiUN0OjtIa6W+3gLYCoTWYj782AQaePK
	JjMs/W6J0A971LkZVEAPOJivV7j1QXdbsX1Iq3z0JDt4+79ldfYg2r5XH+6qCZgkJxIG
	+6dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=3biOTnuXyIsCrLX087lDQu8aqKgW7CL7uh2TldwGR7o=;
	b=cbLwWYzkGS+77iuTwxJSJPXG6jG7LTY5X4QO7JwXNo9AZivUvFKRW2sJNCnzHIkmX0
	5RoZWq3rYGcjx4H2D7CY19jymLVLo7gFEvtmrakArMcm+Sujuky/8Y6Nyhzq6/DaJ1Gq
	YXmCb1hIr0VwGk6S5EZQw+zuCo9WCLt9/gsGPI18DbvAl3m2F9531TGdHRe6yMgZeXn3
	8tSmDC8i9l4EaGIxi7DXCroCJ6DGPcdZgHmrwCse8v2qBoAhPYjCEH1R3VYIczaXh43v
	D5em7ELF/npcLPWaayhavq+l7sabxMbUnyrDNAIzghEPFOrRLfHDX02rsJU4HOqkp9vU
	5nug==
X-Gm-Message-State: AKaTC013PuNpQIPbvSAJ4M28SKFaR/n3pFq/8Beox3EWMDYt7JHjnB8cng1/Qw0Hqq9cRsy1atxbJnCCj8gntg==
X-Received: by 10.159.55.142 with SMTP id q14mr74053866uaq.107.1481524151113; 
	Sun, 11 Dec 2016 22:29:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.87 with HTTP; Sun, 11 Dec 2016 22:28:40 -0800 (PST)
In-Reply-To: <83DB4EC8FADD45428E3CC4E3664761FD4243A127@AMDTCEX14.actuant.pri>
References: <83DB4EC8FADD45428E3CC4E3664761FD4243A127@AMDTCEX14.actuant.pri>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 11 Dec 2016 22:28:40 -0800
Message-ID: <CAMKF1soUOSjFujmCd7Z8NWsDFfF6bPGK60LTq_qUpdbB31y0MA@mail.gmail.com>
To: "Keskinarkaus, Teemu" <teemu.keskinarkaus@crosscontrol.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Enabling UTF-8
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
X-List-Received-Date: Mon, 12 Dec 2016 06:29:14 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 8, 2016 at 12:02 AM, Keskinarkaus, Teemu
<teemu.keskinarkaus@crosscontrol.com> wrote:
> Hi,
>
>
>
> I=E2=80=99m trying to get UTF-8 support enabled to my image.  For whateve=
r reason I
> don=E2=80=99t seem to get it working. I have following lines in my local.=
conf.
>
>
>
> GLIBC_GENERATE_LOCALES =3D "en_GB en_US en_GB.UTF-8 en_US.UTF-8"
>
> IMAGE_LINGUAS =3D "en-gb en-us"

check if this is really reflected in final metadata. you can check with

bitbake -e <your-image> | grep -e "^GLIBC_GENERATE_LOCALES=3D"

>
>
>
> I get only en and en_GB locales to image (/usr/share/locale).
>
>
>
> I=E2=80=99m using Yocto 1.6.1, but I=E2=80=99ve tested it on Yocto 2.1 to=
o without any
> difference.  I=E2=80=99m using valleyisland-32 =E2=80=93 machine if that =
has anything to do
> with it.
>
>
>
> Is there something else needed to be done to force UTF-8 locales being
> generated? Seems that those lines don=E2=80=99t change anything. Same loc=
ales are
> generated with or without those lines in local.conf.
>
>
>
> Teemu Keskinarkaus
> Software system engineer
> Cell: +358 400 330047
> Fax: +358 207 669199
> www.crosscontrol.com
>
> CrossControl
>
> making machines smart, safe and productive
>
>
>
>
> ________________________________
>
> Actuant Corporation Email Notice
>
> This message is intended only for the use of the Addressee and may contai=
n
> information that is PRIVILEGED and/or CONFIDENTIAL.
> This email is intended only for the personal and confidential use of the
> recipient(s) named above. If the reader of this email is not an intended
> recipient, you have received this email in error and any review,
> dissemination, distribution or copying is strictly prohibited.
> If you have received this email in error, please notify the sender
> immediately by return mail and permanently delete the copy you received.
>
> Thank you.
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

