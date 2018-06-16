Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90A85E00DD7; Fri, 15 Jun 2018 21:31:49 -0700 (PDT)
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
	*      [209.85.217.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f196.google.com (mail-ua0-f196.google.com
	[209.85.217.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8F30E006F1
	for <poky@yoctoproject.org>; Fri, 15 Jun 2018 21:31:48 -0700 (PDT)
Received: by mail-ua0-f196.google.com with SMTP id x18-v6so7678643uaj.9
	for <poky@yoctoproject.org>; Fri, 15 Jun 2018 21:31:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=qjOL6FJT1jxP/BHJPWx/dTteRCSTvt4ZbP1mtXDTSIE=;
	b=jz7zaaTHrpaMwj4gS8UC6UPoOOFa82Qj8IRt5u9NfT1DebNVF0HsPMYoDE4+kbpUlm
	vWLdRLLaVrtx0D+e6jr9cqG+STKsaGlxF3RVUIeEdh/cRU4rW5ZDnfV+8jc1xkrJK9xa
	pRe1hTmIwDTYbTzkYM+KLay7wWDqsYE1I1ox+KJJCMF4OcaYh7OoSDmrSZbAo/FQOdDp
	3BoolQswNJD2vHFYORq2FpmnDfe7yYpk/VIIXIoifDXkuUuolOC32QIyKJpdnopT42dM
	e1YkKnR1oBjw0CPN4M8XXivMTm3urIlLNp9U4uMcSa5fYTckHK4qbwEVqL0MpbA/oaAQ
	4PGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=qjOL6FJT1jxP/BHJPWx/dTteRCSTvt4ZbP1mtXDTSIE=;
	b=Lbwg3YTNwIMDmasqgm6tfqN+pL0lQ1QbxZNU5oVjsdQ77adkNlogeDrl2ZfoLkyR5N
	p1ntE719RyVUbpU1Qni9k9b53hSSStZsOE/RARdk+fbd5eSLY5E7Fvc1OBtx/JLTNVfu
	mN9lFHeABwP9mlCaqVJgGw8V6IXtbVI2sLTIO7EPirg+Xn1VIW2u4pECw6ki5BzG+oak
	K4E0l5JiSi2sI5ywI2awB3r7E85oDdibgNFpY/uZQkaAc7cpRX/nEKR7kJ0kSb5Xkz4X
	iKUY0SPtHgfAqTXJw+YC4NrwX7TelkpTTrqT7P3EYHyWtK5BtNrt/+URpsr6LCVJ+VrO
	AfiA==
X-Gm-Message-State: APt69E24gP1QLIhbqHGDb2Y7wlEfZtV243VPdXCaGRQRDekbBQixeepg
	8uVFl616ti2r0JcisdSjZxQwFkm/3ZPqi+MRVtyTeA==
X-Google-Smtp-Source: ADUXVKK8uVOZKpueuqerQs1i9gmfPN3qno581YszvAcA2nQ7YUX+Kq17OYKevcLp3rH3tUhxmWenSRRBnhLYCZbHVuI=
X-Received: by 2002:ab0:5851:: with SMTP id
	p17-v6mr2858690uac.164.1529123508056; 
	Fri, 15 Jun 2018 21:31:48 -0700 (PDT)
MIME-Version: 1.0
References: <941E6EEF-B2B6-4022-8FA1-C74869EE3673@contoso.com>
	<5684131f-fc72-c11e-ddf4-98e1c90e938e@gmail.com>
	<2C921F74-76FD-47E7-BB5B-5C39A59B22F8@redaptiveinc.com>
In-Reply-To: <2C921F74-76FD-47E7-BB5B-5C39A59B22F8@redaptiveinc.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 15 Jun 2018 21:30:42 -0700
Message-ID: <CAMKF1sqymbTpN9LCBs-fqsK20tRLTRksDx37nJxPyuy6K9zv9w@mail.gmail.com>
To: Marc Pernia <marc.pernia@redaptiveinc.com>
Cc: poky@yoctoproject.org
Subject: Re: How do I apply a patch to a wic configuration file (beagle bone-yocto.wks)?
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
X-List-Received-Date: Sat, 16 Jun 2018 04:31:49 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 15, 2018 at 3:47 PM Marc Pernia
<marc.pernia@redaptiveinc.com> wrote:
>
> Hey Khem, thanks for your prompt response!
>
> How would I go about defining my own kickstart file?  Our board was desig=
ned based on the BBG reference design, so we use the beaglebone-yocto bsp l=
ayer, alas, we don=E2=80=99t manage a machine configuration in our layer.
> Is there another way to define WKS_FILE from our layer? ...in place of th=
e WKS_FILE defined in the bsp layer that isn=E2=80=99t owned by us?

The machine config metadata defines it as a weak assignment see
WKS_FILE ?=3D "beaglebone-yocto.wks"

so you should be able to override it in config metadata in your own
layer to point to a different
file ( may be even in local.conf file )

WKS_FILE =3D "your-beaglebone-yocto.wks"

you might be able to use machine override as well

WKS_FILE_beaglebone-yocto =3D "your-beaglebone-yocto.wks"

then you can put the new wks file in

meta-<your-layer>/wic/


>
> SLR-
>
> =EF=BB=BFOn 6/15/18, 2:34 PM, "Khem Raj" <raj.khem@gmail.com> wrote:
>
>     Hi Marc
>
>     On 6/14/18 11:51 PM, Marc Pernia wrote:
>     > I need to patch meta-yacto-bsp/wic/beaglebone-yocto.wks.  I have a =
patch
>     > ready, but how can I apply that patch from a recipe in my custom la=
yer.
>     > All the patching I have done in the past has been done with a bbapp=
end
>     > created for an existing bb file;  this time the target has no bb fi=
le,
>     > its a .wks file.
>     >
>
>     You can define a new wks file in your layer since the default you are
>     referring to above is a reference. And if your changes are good for t=
his
>     reference then please post these modifications to yocto mailing list.
>
>     Otherwise, if the wks file is specific to image format you want for y=
our
>     devices then keeping that to your layer would be right thing to do.
>
>     >
>     >
>     > SLR-
>     >
>     >
>
>
>
>

