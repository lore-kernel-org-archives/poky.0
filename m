Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web09.453.1624378437562244523
 for <poky@lists.yoctoproject.org>;
 Tue, 22 Jun 2021 09:13:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=za1fY55E;
 spf=pass (domain: burtonini.com, ip: 209.85.128.52, mailfrom: ross@burtonini.com)
Received: by mail-wm1-f52.google.com with SMTP id o33-20020a05600c5121b02901e360c98c08so401098wms.5
        for <poky@lists.yoctoproject.org>; Tue, 22 Jun 2021 09:13:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2VXAZyeFSeXm3YyyOG7Yo3jyQHOZJp8a/JnmKWP3qIU=;
        b=za1fY55EOiz3O02WkTZ3DedWpZzmJRQhLL5guR4SRDybEP3+F8zhSZvvdokViq5eBV
         SiYTS+oAr0rpJ7ArysxiGw8UBm2gz0ITJ6Wjzl/vJxpLh3yLNuK6kp6v5EyplfF/dfRI
         89DrU9pV3eH58lDNq+vaOn3Sc3qq2ns3X0R74Hx4nuIS6U4LYcKtVS+jIKkSZYwwOlsi
         edmZp5XwxuvL1zD60xUBcSOQuesPCN+/geloJ5Fhl2C+q+XFqNt3wRe9wk3qsPsXBJ1o
         zQl+T8l5EvTa8JmxMHeo2B/YlWjGdSSLd8SFFb8XpluDUZFzdeiM6Q9ustH2tUlFl0pd
         Ev7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2VXAZyeFSeXm3YyyOG7Yo3jyQHOZJp8a/JnmKWP3qIU=;
        b=WZf+exqrpPou4WIbHlaUDXG52/CBWe71yXmoaV5togwDab4Cv4J6G4ZUo+58UUK1HF
         kOUcILb3RW3L3IXT2R4aMZQdrSxs5YjAp9ZovxJxWYm5DvwRowrtNfCwI+UU9xy0jIzD
         z4FoOGMEgsn4y5fyX6pk6/tppHsbTvCltndu8VNYeLUaF8BjpRpicnKhjhaVwjX2avRI
         ekyZcMgVZ65CObt9MCfl8SFELbJRG17Upk9lTJTJ2CczHmQbwCSOhAikeJByGJXgbM8I
         iwoRHzcbeipz+5Dz2cPgudFsNbqk67kKQmw19PL1hVzG8POU4Oq4q3pN31KaaEA+tmgk
         TVDg==
X-Gm-Message-State: AOAM533No72xEHVNtNphE5BGWN+IJKRJeHx+5d5Yc8H3FyXD2gJ6gJF9
	Dq4vcQrSakWhV9rdWoy0w1an9yrrIxoVeXpCqVcjUw==
X-Google-Smtp-Source: ABdhPJxkKdKseWlIRikF6ldKqkir0hsnBiyLoMfE3mWbfcVsuLdpUoCo6oSeap52bacbc73lfUSOhpwenn/x9ar3s3c=
X-Received: by 2002:a05:600c:281:: with SMTP id 1mr5064521wmk.171.1624378435804;
 Tue, 22 Jun 2021 09:13:55 -0700 (PDT)
MIME-Version: 1.0
References: <646e26c8-aa05-7ae6-568d-321d7a266281@engineeredarts.co.uk>
In-Reply-To: <646e26c8-aa05-7ae6-568d-321d7a266281@engineeredarts.co.uk>
From: "Ross Burton" <ross@burtonini.com>
Date: Tue, 22 Jun 2021 17:13:44 +0100
Message-ID: <CAAnfSTsfuf9gjq3_0LY=qtj17jVmM7gL4Tby6zMEMYEHdtnoYw@mail.gmail.com>
Subject: Re: [poky] howto run unit tests
To: Daniel Squires <dan@engineeredarts.co.uk>
Cc: poky <poky@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, 22 Jun 2021 at 13:49, Daniel Squires <dan@engineeredarts.co.uk> wrote:
> We are trying to run some built binaries as a task in a recipe as a part
> of unit testing. This can potentially get complicated (though I feel it
> could/should be abstracted away) as it may need to take care of
> architecture differences between the host and the build target but for
> now we are happy to just run for the cases where these match, and
> possibly later look at using qemu.
> We are struggling to find any examples of this being done in existing
> recipes. We managed to manually run what we want by copying built files
> into the recipe-sysroot directory and using fakechroot but feel there
> must be an existing way to achieve what we want, and that we just
> haven't looked for the right thing.
> We have also found some docs re ptest however these seem to all relate
> to running tests on the final resulting image, we wish to be able to run
> some tests before this, on individual package builds as part of CI.

Running stuff in qemu at build time is a bit of a pain as qemu-user
has some rather sizable gaps, and you can't easily use qemu-system.
If your host and target CPUs are compatible you can do horrible things
involving fakechroot but that's not recommended.

I'd say it's best to install the tests with ptest, and run them in a
complete image as part of the CI.

Ross
