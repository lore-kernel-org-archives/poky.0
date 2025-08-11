Return-Path: <trent.piepho@igorinstitute.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6A39CA0ED1
	for <webhook@archiver.kernel.org>; Mon, 11 Aug 2025 17:12:57 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
 by mx.groups.io with SMTP id smtpd.web10.53801.1754932372259470804
 for <poky@lists.yoctoproject.org>;
 Mon, 11 Aug 2025 10:12:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@igorinstitute.com header.s=google header.b=VRC0Xjzk;
 spf=none, err=SPF record not found (domain: igorinstitute.com, ip: 209.85.208.43, mailfrom: trent.piepho@igorinstitute.com)
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-61576e33ce9so7864740a12.1
        for <poky@lists.yoctoproject.org>; Mon, 11 Aug 2025 10:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=igorinstitute.com; s=google; t=1754932371; x=1755537171; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D5qcL0oPbXhzRrH4NqCm8xTw6oz5Sztb45BudTvRGdg=;
        b=VRC0XjzkffveUcRQPLTrMk1EevzC757pNQY+6xwXa6eUlBg4eGaVigtzmcWzHH9aRy
         TmueRz4SDWF/H9isbeft3GWuKPgGs4wHKI0U0aJdlMjVUO07G4hhVDUy8wrAq5NlIqGg
         zI6mqFAsvPADgK5hfzYXFFTsP12QeNex6HskGB136iz3shsG63JIt82/sws57A+iIueJ
         bdzkjcDm3TJVxKVHR5bH+MAJQJquLRN84YmhM8XRl+24EN7Fr0euL9OqeLvrkT/iMbpl
         IWf3ayJ/6w0Z8Hk5JntZjTFH12wvAWh9860Ks31/u4D6Zy80LzVNEfAF9fjPLTRN9P+m
         kBZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754932371; x=1755537171;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D5qcL0oPbXhzRrH4NqCm8xTw6oz5Sztb45BudTvRGdg=;
        b=Bj6fno+LBVik9NWONY6XoP3VbLyo0ZedKPXJV51gx8D0q9PYTpPVj48kwXHhjv6j3k
         AD00sUpqnnDhECc20gKfoIUDpT4cNdBNwzx/xS/a9S+mzgWrx3wHaCCm2UMst77OI1NV
         HxzAHHJfoyqckllgyvl7C17uqfC9GOSRdVuSL+bCy60byEmwqWRU3sE9ln9IZU0MM4Gp
         1j3SGG4tWib1Bj1H7v+FRIhHi2iVT0a/ft6FEEXu+r299bPxycZoZA33UlTxfIRWTcbn
         JnzUmJHHCacZuikPe1ynkfijQ90GwTUPdgZpZFMY7uVpUyrr/VDFDq7et7chbd3aJS/u
         M/Hw==
X-Gm-Message-State: AOJu0Yx4HkAqJS6dSL55XL+6Wlk2ILYoP24Nx41IV54trHGKHqfBYq4k
	ocogDcfKbyZkFzRXWvnrRwrXUwjxntuHb9Hm7I3lL+C7FdWaQVWDzzidOm6+YhOGvErvfuAUBkg
	z6+edt3gHTY3arPXEH6w/42ZzeyWrFO3+VJRbWE+vcQ==
X-Gm-Gg: ASbGncu37/i6wbu9qecdbJ1HYbBVTTKGgwwn9wnGQskKrq+8ngB3hxzqpR+WbW9z6DZ
	K0wmgfINkb8CWlwyk7GlJLCH2D8aYVI0jiEcKD1Ioi7Xp9T74Lx9Ys+og6sonhmglQqHHIRx260
	yy/6bMk9VCu2j9XX9rOjECExMCtOTavzTqu57yJTbRq2fWxJ+LVYGHbjYr5EX9FvBGjcHU94hda
	4Dnmyg=
X-Google-Smtp-Source: AGHT+IHkDvPlokHC8toe40BNQ8c/kYl4foeN6vuxviNLaexIAX5UcENmCFlAHgwapVw7Z9mtgwEsodj1Pcnd2ojtpxU=
X-Received: by 2002:aa7:ce12:0:b0:615:9247:e2fa with SMTP id
 4fb4d7f45d1cf-6184db318c4mr288701a12.8.1754932370555; Mon, 11 Aug 2025
 10:12:50 -0700 (PDT)
MIME-Version: 1.0
References: <2n8W.1754202497905279149.soMo@lists.yoctoproject.org>
 <CANNYZj9gh1ucaFOtcCPScawXGT25O4MHfcAiJ=EYf-cUhXcX-Q@mail.gmail.com>
 <CAMHeXxN_eGUQpPTjKw1pZbzPX6s-BV-hWvGy97z-MRn42bFMFw@mail.gmail.com> <4cd6ace5-0185-409d-8797-277ce6209f8e@cherry.de>
In-Reply-To: <4cd6ace5-0185-409d-8797-277ce6209f8e@cherry.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Mon, 11 Aug 2025 10:12:38 -0700
X-Gm-Features: Ac12FXz6xXXw_1S4cJeRt3tQszKnuNNEuwWv_SQqdp2JpkxylfaHi9yEGJfoRAA
Message-ID: <CAMHeXxMJ1NWKawm4R=g+UJLJ82+i6tFCeajqSDBXskngtU3LBw@mail.gmail.com>
Subject: Re: [poky] How to override mesa VULKAN_DRIVERS and GALLIUMDRIVERS variables?
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 11 Aug 2025 17:12:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13721

On Mon, Aug 11, 2025 at 5:29=E2=80=AFAM Quentin Schulz <quentin.schulz@cher=
ry.de> wrote:
> >> VULKAN_DRIVERS is basically internal to the recipe. You need to set
> >> PACKAGECONFIG for mesa to include the needed set:
> >>
> >> VULKAN_DRIVERS:append =3D "${@bb.utils.contains('PACKAGECONFIG',
> >> 'freedreno', ',freedreno', '', d)}"
> >
> > Not sure I follow what you're saying.  If I add the above code inside
> > a machine conf file or via bbappend, I'm stuck only adding new drivers
>
> The above code already exists in mesa.inc, Alex was just pointing at the
> implementation and why setting PACKAGECONFIG appropriately would add
> what;s needed to VULKAN_DRIVERS.

I'm using Scarthgap.  Should have said that in the beginning.  So that
code isn't there already.  It could be added in a bbappend, and would
parse, but wouldn't have the desired effect.

> So in order to have your intel and amd vulkan drivers, you need "amd
> intel libclc gallium-llvm" in PACKAGECONFIG at the very least. Removing
> other should just be a matter of not adding them to PACKAGECONFIG in the
> first place.

I'm using scarthgap, which is different here.  The intel and amd
drivers sets don't use PACKAGECONFIG.  It seems this is just a
limitation of scarthgap's mesa build that has since been fixed.

In the current master-next, nouveau and svga are :appended to
PACKAGECONFIG by default, rather than being explicitly enabled.  But
since it's space delimited instead of comma delimited it's possible to
remove them.  But it's not possible to add a machine override with the
PACKAGECONFIG value set to the desired list, as it's using append to
add them.  It's only to remove options from the default list.

> GALLIUMDRIVERS_IRIS =3D "${@bb.utils.contains('PACKAGECONFIG', 'intel lib=
clc', ',iris', '', d)}"
> GALLIUMDRIVERS:append =3D "${@bb.utils.contains('PACKAGECONFIG', 'gallium=
-llvm', '${GALLIUMDRIVERS_LLVM}', '', d)}"
>
> So you need "amd intel libclc gallium gallium-llvm" at a minimum in your
> PACKAGECONFIG for this to build properly.

There's an additional line later in the file:
GALLIUMDRIVERS:append =3D "${@bb.utils.contains('PACKAGECONFIG',
'intel', ',i915,crocus', '', d)}"

So that PACKAGECONFIG will also include the i915 and crocus drivers
along with the iris driver.  I'm trying to only include iris.

I'm not using amd, but it seems to have a similar issue: adding amd to
the PACKAGECONFIG will enable multiple amd drivers and there's no way
to edit the list via :remove or other layering techniques.

> Note that this shouldn't be working according to our recipe as intel
> drivers should be requiring libclc. We may have a made a mistake here
> though, but something we could fix with the right amount of information,
> context and testing :)

I'm using the scarthgap versions, perhaps the libclc requirement is
newer than that?  But I'm quite sure this config builds and that
chromium's GPU acceleration works.  I have since disabled vulkan,
since it doesn't appear to work correctly in chromium (at all).  So
I'm not completely sure if the vulkan driver config works, including
if the swrast driver (which can not be disabled via PACKAGECONFIG) is
truly necessary to be forced on.

