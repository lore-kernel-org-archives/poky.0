Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
 by mx.groups.io with SMTP id smtpd.web11.818.1597280243135043828
 for <poky@lists.yoctoproject.org>;
 Wed, 12 Aug 2020 17:57:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@broadcom.com header.s=google header.b=W+g9XRvw;
 spf=permerror, err=parse error for token &{10 18 %{i}._ip.%{h}._ehlo.%{d}._spf.vali.email}: invalid domain name (domain: broadcom.com, ip: 209.85.219.173, mailfrom: jonathan.richardson@broadcom.com)
Received: by mail-yb1-f173.google.com with SMTP id a34so2368960ybj.9
        for <poky@lists.yoctoproject.org>; Wed, 12 Aug 2020 17:57:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=ozSC5kAYCniJy+92JlUQK6Ylp5qSMPau0YAWDH3hOuc=;
        b=W+g9XRvw01BovRAyVk0awLk7HDKM8N7qrbuQDju11p4h2TlA7mTpBPWR5Kkagcpj7k
         BqRk3mifr68ZQBi2JbhLvC4u3D1+WLNvOs1jqoDhP2j0C2r5qZ59SDiVkiEJbJXAmpq3
         Ya7fRIrtbHzyr6Sw6xE5DQTkUHykJaPbnkaos=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=ozSC5kAYCniJy+92JlUQK6Ylp5qSMPau0YAWDH3hOuc=;
        b=GpW3bnj5lRRSx8h5167Ks4LxVnJ32egTBaIoe/rnq9Q32Wv9xYTjN8n82OOypTQ6mU
         MPuTd+7d1lkn930u2Xf3mKuOZlJSaLSWbQQ9hNdbU9uJvaeG/A5KN1U1G9yVoDlguujm
         9eKmpNl9q8mU9Y2PPnLpCFrceuQREFV7PWKjrL3P0w946cttG62zyKVge+6EneyPE62F
         7I8U8ARx1Mv/RFRPFz0AzjBhE2Ai6IL2N3U/kBrs5EuwmOC5MfR+G3ub5ZfpSuaOIeoH
         MxbxWyHc4ayQgbp4GkAHx1zcBUMSRMkUc0295o6amV+N70JkVJymIzqKeStYzzRRQawg
         D4pw==
X-Gm-Message-State: AOAM533yYAmd1dvy07m2+8TAcucewH1Sci6+0pP9UozqJsaTjlqKPh1D
	LXUoeqN+qKyj4tPew7ajUaGz+7lU1DyyVLJaQTw3qg==
X-Google-Smtp-Source: ABdhPJzy9saFJYataEz9JXRpgRhKLuxzv58ZwthhVBHq6MWOeOsJKAMsKHS8Xehj09R2K9nIIaQeB3JQiC3Ehu3e+g4=
X-Received: by 2002:a25:2513:: with SMTP id l19mr3221510ybl.367.1597280242351;
 Wed, 12 Aug 2020 17:57:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAHrpVsUkTgim53raUgXgkiGvpzrWZJVPFEBzU1YX0S03_ix-kg@mail.gmail.com>
 <CAMKF1so6iTZNupBciUh8dgUQDWQ1-YH7iUy=RU4YFMrx77mqDA@mail.gmail.com>
 <CAHrpVsVvD55j=BHjN2Jv+b71A8rOTVpYYoaMKAyF_zFcXMUw6A@mail.gmail.com>
 <0994fb3e-7adb-def7-89ab-f8e8c3f64113@linux.microsoft.com>
 <21192528214e26ccb6a30dfa64e1b6cf@mail.gmail.com> <CAMKF1srSDt59-7Av3JWao9=T=RhjGsoPqdw8LJF70TrhyPSLHQ@mail.gmail.com>
In-Reply-To: <CAMKF1srSDt59-7Av3JWao9=T=RhjGsoPqdw8LJF70TrhyPSLHQ@mail.gmail.com>
From: "Jonathan Richardson" <jonathan.richardson@broadcom.com>
Date: Wed, 12 Aug 2020 17:57:11 -0700
Message-ID: <CAHrpVsXjOR0V9dVUW9=Akfa5sL1bUqaEoaXxaC9cKxkgvKmMmw@mail.gmail.com>
Subject: Re: [poky] TCLIBC with newlib
To: Khem Raj <raj.khem@gmail.com>
Cc: Alejandro Hernandez Samaniego <alhe@linux.microsoft.com>, poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 12, 2020 at 1:48 PM Khem Raj <raj.khem@gmail.com> wrote:
>
> On Wed, Aug 12, 2020 at 12:03 PM Jonathan Richardson
> <jonathan.richardson@broadcom.com> wrote:
> >
> > Hi Alejandro,
> >
> >
> >
> > Thanks for your feedback. I narrowed it down. It builds when building s=
imple code that uses a makefile to compile some MCU code running on a corte=
x-m0. Now we=E2=80=99re compiling zephyr OS for a cortex M0-plus. The toolc=
hain is a bit more complicated because of all the x86 native build dependen=
cies.
> >
> >
> >
> > Ignoring that for now I created a simple helloworld recipe with an empt=
y main compiled with autotools (attached). The problems arise when autotool=
s pulls in libtool-cross. If you switch to a makefile instead of using auto=
tools then libtool-cross doesn=E2=80=99t get pulled in and it builds fine. =
I think the toolchain should be buildable when using autotools class and ne=
wlib.
> >
> >
>
> I think its a usecase which perhaps is not yet supported. I would
> suggest to open a tracker ticket in yocto bugzilla for this, since it
> won't be a one liner to fix it

Ok thanks Richard. I'll do that. In my example I didn't use libtool
but most autoconf configs would and therefore it would need
libtool-cross. Since my attempts to add the proper flags to the tools
caused circular dependencies it's not a proper solution. I'll look
into it a bit more and see if I can come up with something. Having
this support would be useful.
