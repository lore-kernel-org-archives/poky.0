Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 501C4E00C1A; Sun, 11 Dec 2016 23:48:27 -0800 (PST)
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
	*      [209.85.192.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f174.google.com (mail-pf0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B1F0E00BAF
	for <poky@yoctoproject.org>; Sun, 11 Dec 2016 23:48:26 -0800 (PST)
Received: by mail-pf0-f174.google.com with SMTP id i88so11722918pfk.2
	for <poky@yoctoproject.org>; Sun, 11 Dec 2016 23:48:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=HKqr24qE0sPMfRH98VgUUjNGL9s7W1WAku+xJDgclPU=;
	b=URhNIIAkbp1KPrcJfvHKhu19coiyFmAIG8k/dVjM/rdN9x3XF1eyrVxT1uN07/MF4P
	UmC4jGypolX0XlO/RUjw2ZbLugGMmy84ZiupD4SALSaIvHSTLOdARc5mZQedUhYl5J5b
	5xm3pu9Td4SjXnxKAUs5PA2TIeA+vABPnqNek3svYwtBCAZKIO7lYIPvG04ZNFBg7Nc3
	fQnsu+WKFQeFI6hJbYdYRftRk2xSV8OIrqmG2OcvwVbSBhlPduaQO7wLWVyi8Y31Kihz
	+BPpvB2LkrxvwkE1BoVOzANYbG8tb7GQCbs6B+haIpyusePfFUQFlRB+cPDx8Tp1JpVT
	76yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=HKqr24qE0sPMfRH98VgUUjNGL9s7W1WAku+xJDgclPU=;
	b=lvLZVOtq+hEwWCFlQoVKSluLBcJuIakiK0v4X+LjCQQoFoLqmICFkoGVhINZAsAbLL
	r5M10aO1V4ujWQkuoCoyHt30RKTkFUrvC+TUs5Cz1kQJW9mVCOFPmDqzFYKXRi8hyvPB
	SY1tJ30XXJ+573HNj5mz5iZh4Pv2q1Ch+ESDwnjW1dv5wAx/4skQ/eT/BN/ORxROiUec
	UAbx7sPzU1uzg7RYq43Zd0Vn21N/KZBojdfYgPpjxJlkKWpZ7CxKiX5S2aW4kTodoKhv
	ksby0fBiXXb7oV+OQ5SsI1hzSIyxxLODDJ3KEgoRrRvx0A24Wpc5QA6mfhrU8gy/M6Zw
	WbMQ==
X-Gm-Message-State: AKaTC03XDTa/6sV9EHlouaLMARGdJvZiYcpDunXenJIlSVMghirJMiaXQbgAgAZcHSehHg==
X-Received: by 10.98.11.198 with SMTP id 67mr94585247pfl.90.1481528905804;
	Sun, 11 Dec 2016 23:48:25 -0800 (PST)
Received: from ?IPv6:2601:646:8882:b8c:7446:7fee:3bbb:1fb9?
	([2601:646:8882:b8c:7446:7fee:3bbb:1fb9])
	by smtp.gmail.com with ESMTPSA id 74sm74685521pge.2.2016.12.11.23.48.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 11 Dec 2016 23:48:25 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 10.1 \(3251\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <83DB4EC8FADD45428E3CC4E3664761FD4243AD3E@AMDTCEX14.actuant.pri>
Date: Sun, 11 Dec 2016 23:48:46 -0800
Message-Id: <04E31FD8-07A9-4C92-9AC2-44D57EA2B86D@gmail.com>
References: <83DB4EC8FADD45428E3CC4E3664761FD4243A127@AMDTCEX14.actuant.pri>
	<CAMKF1soUOSjFujmCd7Z8NWsDFfF6bPGK60LTq_qUpdbB31y0MA@mail.gmail.com>
	<83DB4EC8FADD45428E3CC4E3664761FD4243AD3E@AMDTCEX14.actuant.pri>
To: "Keskinarkaus, Teemu" <teemu.keskinarkaus@crosscontrol.com>
X-Mailer: Apple Mail (2.3251)
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
X-List-Received-Date: Mon, 12 Dec 2016 07:48:27 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


> On Dec 11, 2016, at 11:01 PM, Keskinarkaus, Teemu =
<teemu.keskinarkaus@crosscontrol.com> wrote:
>=20
> Hi,
>=20
> I did that and this was result: GLIBC_GENERATE_LOCALES=3D"en_GB.UTF-8 =
en_GB en_US"
>=20
> So for some reason en_US.UTF-8 was dropped. Also only en-gb made to =
actual image.

Figure out why it was dropped, I think you might have additional places =
where this variable
it being modified. Save the output of bitbake -e and inspect it manually =
for the value of GLIBC_GENERATE_LOCALES


> I'm not sure if you can put more than one language in IMAGE_LINGUAS.


you can put multiple values in IMAGE_LINGUAS

>=20
> I read/heard somewhere that nowadays UTF-8 locales don't have UTF-8 in =
their filenames anymore but en_GB has also UTF-8. Seems that it defaults =
to POSIX - locale, but when I do  `locale en-gb` I get en-gb locale =
except I also get these errors:
>=20
> locale: Cannot set LC_CTYPE to default locale: No such file or =
directory
> locale: Cannot set LC_MESSAGES to default locale: No such file or =
directory
> locale: Cannot set LC_ALL to default locale: No such file or directory
> locale: unknown name "en-gb"
>=20
> But if I connect to device with Putty configured to UTF-8 I can't use =
UTF-8 properly (I use Scandic characters (=C3=A4=C3=B6) to test with) =
even after manually setting locale to en-gb (there is no utf-8 names =
locale). They work just fine if I test in PC with Ubuntu.
>=20
> Teemu Keskinarkaus
> Software system engineer
> CrossControl
> making machines smart, safe and productive
>=20
> -----Original Message-----
> From: Khem Raj [mailto:raj.khem@gmail.com]
> Sent: 12. joulukuuta 2016 8:29
> To: Keskinarkaus, Teemu
> Cc: poky@yoctoproject.org
> Subject: Re: [poky] Enabling UTF-8
>=20
> On Thu, Dec 8, 2016 at 12:02 AM, Keskinarkaus, Teemu =
<teemu.keskinarkaus@crosscontrol.com> wrote:
>> Hi,
>>=20
>>=20
>>=20
>> I=E2=80=99m trying to get UTF-8 support enabled to my image.  For =
whatever
>> reason I don=E2=80=99t seem to get it working. I have following lines =
in my local.conf.
>>=20
>>=20
>>=20
>> GLIBC_GENERATE_LOCALES =3D "en_GB en_US en_GB.UTF-8 en_US.UTF-8"
>>=20
>> IMAGE_LINGUAS =3D "en-gb en-us"
>=20
> check if this is really reflected in final metadata. you can check =
with
>=20
> bitbake -e <your-image> | grep -e "^GLIBC_GENERATE_LOCALES=3D"
>=20
>>=20
>>=20
>>=20
>> I get only en and en_GB locales to image (/usr/share/locale).
>>=20
>>=20
>>=20
>> I=E2=80=99m using Yocto 1.6.1, but I=E2=80=99ve tested it on Yocto =
2.1 too without any
>> difference.  I=E2=80=99m using valleyisland-32 =E2=80=93 machine if =
that has anything
>> to do with it.
>>=20
>>=20
>>=20
>> Is there something else needed to be done to force UTF-8 locales =
being
>> generated? Seems that those lines don=E2=80=99t change anything. Same =
locales
>> are generated with or without those lines in local.conf.
>>=20
>>=20
>>=20
>> Teemu Keskinarkaus
>> Software system engineer
>> Cell: +358 400 330047
>> Fax: +358 207 669199
>> www.crosscontrol.com
>>=20
>> CrossControl
>>=20
>> making machines smart, safe and productive
>>=20
>>=20
>>=20
>>=20
>> ________________________________
>>=20
>> Actuant Corporation Email Notice
>>=20
>> This message is intended only for the use of the Addressee and may
>> contain information that is PRIVILEGED and/or CONFIDENTIAL.
>> This email is intended only for the personal and confidential use of
>> the
>> recipient(s) named above. If the reader of this email is not an
>> intended recipient, you have received this email in error and any
>> review, dissemination, distribution or copying is strictly =
prohibited.
>> If you have received this email in error, please notify the sender
>> immediately by return mail and permanently delete the copy you =
received.
>>=20
>> Thank you.
>>=20
>> --
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>=20
>=20
> ________________________________
>=20
> Actuant Corporation Email Notice
>=20
> This message is intended only for the use of the Addressee and may =
contain information that is PRIVILEGED and/or CONFIDENTIAL.
> This email is intended only for the personal and confidential use of =
the recipient(s) named above. If the reader of this email is not an =
intended recipient, you have received this email in error and any =
review, dissemination, distribution or copying is strictly prohibited.
> If you have received this email in error, please notify the sender =
immediately by return mail and permanently delete the copy you received.
>=20
> Thank you.


