Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com [209.85.208.193])
 by mx.groups.io with SMTP id smtpd.web10.4487.1598475123859767176
 for <poky@lists.yoctoproject.org>;
 Wed, 26 Aug 2020 13:52:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=0FQA5HT1;
 spf=pass (domain: burtonini.com, ip: 209.85.208.193, mailfrom: ross@burtonini.com)
Received: by mail-lj1-f193.google.com with SMTP id m22so3950765ljj.5
        for <poky@lists.yoctoproject.org>; Wed, 26 Aug 2020 13:52:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IxsCwcN0AwU4GWUxWTLrMUjI84dhZEaDaC4KD9VpkJ4=;
        b=0FQA5HT1NZNuVOgjaYCQjAAr86fcR2StXU50umFuNdOSXw2gmtSKbG8Wp9h7rMJJ3W
         uotEKZ2tuo8IsASwN83OqJBc+bHvLOc5MSgGx6fzUOPRrA70Y2JuSoZ15s0tKVRfRWqm
         6wal6ULWDDoFyCgQXu/+123OwYSuHSyrOQeyT6iY8u72cLhGgqqiawBXOSBtJo8FZcLP
         QUt9MjFnk/wklrKpIGn0Imkx4uTg8WJ8657mpEJuXKmSqWB92vLYb5y9YPEA3j/oSYtg
         0G3PuuRzbfktKHMceAGh+JTzRN+hURdY/wj1XEoyDF1jJiSfQE7rJS2D/2l95w5E/qoY
         B1sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IxsCwcN0AwU4GWUxWTLrMUjI84dhZEaDaC4KD9VpkJ4=;
        b=o3WeDhAKudz/qcYdjODR18VdhpOS2phgqKjfHrVeI4foet36lbywM+/jOhFE8ACSpm
         FwhiIBpzaSGXD3bgWuSWBRevI5XphtgMP1K4801ou/HSdRBjmK8X25CokGuqI/GG6HzU
         jvdO1hOWwXRRxGNoFhv/ejXB8cze9yml6My5uAzrIG7IT4fkBVM2CRKPPaxp2Twp2aLi
         wN9LyuG1cEPfiYS3sbbyd69Jgb+tdtvCj6Icqu0roikG1lexbRYFQ4cDmMq/HVUv/cBp
         k7u+3lp67q3V0efICSOcLZjo1qKtLl3sevuvSI/3U9HCuwpTsw0pEjQayTrZK1RzqJ5F
         6mYw==
X-Gm-Message-State: AOAM531UFRN9h1s5eWoTEl02ZljJ2q6NLqp56CM+heXxmMCrlsj+rtof
	ecYVVif2ns/jT8FEhF22kMKTlCpTkd+z7BcEJNcfuw==
X-Google-Smtp-Source: ABdhPJxhtObLWuBR9EIMU+myv7zQTKeGUpmVltwxIXVR800LPRUYBLbKZKR94RJ3Z26GHdVtlYXAA5liF2E3WeAf53A=
X-Received: by 2002:a2e:a370:: with SMTP id i16mr8481185ljn.22.1598475121824;
 Wed, 26 Aug 2020 13:52:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200826145206.6871-1-alex.kanavin@gmail.com> <3adabcedbdb85a19e12d0bb3f50a99d6030affa2.camel@linuxfoundation.org>
 <CANNYZj94DOMzkj8ND65SDZNAF7ytaSJXE6L_fKkVtU9Dt6mwFQ@mail.gmail.com> <aea26ec4a292d5179170b6020e61d4062b099053.camel@linuxfoundation.org>
In-Reply-To: <aea26ec4a292d5179170b6020e61d4062b099053.camel@linuxfoundation.org>
From: "Ross Burton" <ross@burtonini.com>
Date: Wed, 26 Aug 2020 21:51:51 +0100
Message-ID: <CAAnfSTuLEADjROSUb-W9rYSk=ZjFxQxYUVmDg6Z597Wqz22Pog@mail.gmail.com>
Subject: Re: [poky] [PATCH] poky.conf: do not install packagegroup-core-device-devel into qemu images
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 26 Aug 2020 at 17:14, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> > The x32 test, and the multilib test both need binutils in core-image-
> > sato - probably should be tweaked in config.json, as neither test is
> > added to TEST_SUITES by default?
>
> That feels extremely ugly but its one way to address it I guess :/

Would it be better to make the tests check for binutils being present,
and then ensuring that at least some of those tests are executed with
core-image-sato-sdk or similar?

Ross
