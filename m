Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web12.48861.1606674203317556792
 for <poky@lists.yoctoproject.org>;
 Sun, 29 Nov 2020 10:23:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@madison.systems header.s=google header.b=FtYKKuPU;
 spf=pass (domain: madison.systems, ip: 209.85.167.48, mailfrom: matt@madison.systems)
Received: by mail-lf1-f48.google.com with SMTP id v14so16144983lfo.3
        for <poky@lists.yoctoproject.org>; Sun, 29 Nov 2020 10:23:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=madison.systems; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=AxnGeuFEjcgltStipm7xIRNrYnTZ1TLtafiR+I6B3aw=;
        b=FtYKKuPUPZrivE2b8wlZ8ZCR2EDk85aZwTa2aQ3uwwjUbPVm7z1m8rSkiILbQgtt6f
         eDLleHb6NB5QBYPX/QRt+PHrWiz3r7G3XjFlzDcrpreaTlZhB1RfQMUfJT6HVT5jQ1fy
         cqEGTywL4atsl825bxacL0c0D0EYk/pwb3oVV7Ci682TsJQB5/tjllE0sVMG5dVbXFeb
         NWX5Ap2eSspTT04LH2fzbHXT4oThelUItJUF8pXeLHyDDPhYZzqXpOFO7rY9DV2JRGn3
         XKHG5hv54DqprTbpQDSXiRMK8oiG94Yyu+5P4R5Q5jU24iMnuCUqLnpAObX2X3miQZBE
         izUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=AxnGeuFEjcgltStipm7xIRNrYnTZ1TLtafiR+I6B3aw=;
        b=S/xxSIdyvS3ZeEzPcjBgsbOa62a5OTNalyQY7lOaiwivnSdR5eRxIlwaqXgLnYa1K9
         LQEdQIm33vgXiy61kzGtIIH6JSE63ugqPVrWcLmRh92mJxBuZdoe+R0gLrZV20B9jz4B
         A+w/xoSm4UbzM+aFC7w29fLP3P927pw6i33j3wNEowaZ15dn87QnYDOKJojTcZX4Tb14
         GTKzkxPkHc7gn2Hidrrun63cZW+clvcvW3W8/htBf0zlP0DiwRvHweIa3XT/29Dsbemu
         U9leEfe2QQotuc2Lvt7H/cFG1Ntu1KpW9rCZdgrNy9xEE7Z2dy3QXQIYnf0qd2FhfxvO
         4Nvg==
X-Gm-Message-State: AOAM5337pQrlW+n/wwQfU1dBRsggxf44qtteqBTMDQPG4pZSW3QFYyy5
	VHvsW0XntX+W99ihZTv0CsjcuSqiXhMdutL8CTOYZw==
X-Google-Smtp-Source: ABdhPJx4ewsG0oa9BmvbHdOETeMUtBP8XneKt8XHaF3XMttL0xJTfMMBE9ZfPg9OqLtpN1KrXzJAzLoCs2TxGq5wa1o=
X-Received: by 2002:a19:8941:: with SMTP id l62mr7942362lfd.408.1606674201369;
 Sun, 29 Nov 2020 10:23:21 -0800 (PST)
MIME-Version: 1.0
References: <63DA0CC5-889D-4A42-BA28-31EEBD45BF07@bitshift-dynamics.com>
 <CAGgRHJovndgs_7zFTGuZv9eDBP60kT+hGpqRYY_o5tymx9k-Kw@mail.gmail.com> <7969D9CA-F0CF-493A-BE80-59D3AB06009C@bitshift-dynamics.com>
In-Reply-To: <7969D9CA-F0CF-493A-BE80-59D3AB06009C@bitshift-dynamics.com>
From: "Matt Madison" <matt@madison.systems>
Date: Sun, 29 Nov 2020 10:23:10 -0800
Message-ID: <CAGgRHJrVrJDQXb_Z=uFmm1LUx7KNaB4980trBe8PjEYUNxFVzQ@mail.gmail.com>
Subject: Re: [poky] Adding S3 as option for sstate
To: Alexander Nassian <nassian@bitshift-dynamics.com>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 27, 2020 at 10:34 PM Alexander Nassian
<nassian@bitshift-dynamics.com> wrote:
>
> Thank you very much for your feedback and sharing your solution! I will d=
efinetly have a look into it, but had a very busy online training week.
>
> If I see it right your class enables pulling sstate packages from S3 but =
not uploading them on the go like the filesystem module, right?

No, it does handle uploading both downloaded source packages as well
as sstate packages.

Regards,
-Matt

>
> Beste Gr=C3=BC=C3=9Fe / Best regards,
>
> Alexander Nassian, Gesch=C3=A4ftsf=C3=BChrer / CEO
> nassian@bitshift-dynamics.com
>
> Am 14.11.2020 um 15:30 schrieb Matt Madison <matt@madison.systems>:
>
> On Fri, Nov 13, 2020 at 11:50 PM Alexander Nassian
> <nassian@bitshift-dynamics.com> wrote:
>
>
> Hi together,
>
> We would like to extend poky to be able to write and read sstate packages=
 not only from HTTP and FILE but also S3 buckets which would fit our CI set=
up much better than our current =E2=80=9Ezip everything and upload to S3=E2=
=80=9C in terms of incremental speed up builds. I already did some research=
 if there is something read-to-use but didn=E2=80=99t find anything.
>
> My two questions are:
> 1. Do you have any hint where to hook into? I already went through runque=
ue.py but I=E2=80=99m just a extensive user of poky, never worked on itself=
.
> 2. Would that change have any chance to be accepted upstream, or is this =
something too special for the project?
>
>
> I have a CI setup that I host in EC2 using an S3 bucket for mirroring
> and have implemented some hooks that make it work better for me.  The
> basic parts consist of a replacement for the built-in S3 fetcher and a
> bbclass to assist with populating the S3-hosted mirror.  I have a
> writeup on it at
> https://github.com/madisongh/tegra-test-distro/wiki/Using-AWS-S3-for-ssta=
te-and-downloads-mirrors
> if you're interested.  It may not be the right answer for you, but it
> may give you some ideas.
>
> Regards,
> -Matt
>
>
>
> =E2=80=94
>
> bitshift dynamics GmbH
> Neudorfer Str. 1, 79541 L=C3=B6rrach
> Registergericht: Amtsgericht Freiburg i. Breisgau, HRB 713747
> Gesch=C3=A4ftsf=C3=BChrer: Alexander Nassian, Markus Pfaffinger
>
> https://bitshift-dynamics.com
>
> Phone: +49 762158673 - 0
> General support: info@bitshift-dynamics.com
> Technical support: support@bitshift-dynamics.com
> Accounting: invoice@bitshift-dynamics.com
