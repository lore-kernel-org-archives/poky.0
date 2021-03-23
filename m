Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web09.258.1616517419739256446
 for <poky@lists.yoctoproject.org>;
 Tue, 23 Mar 2021 09:37:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=sc574W6N;
 spf=pass (domain: burtonini.com, ip: 209.85.221.43, mailfrom: ross@burtonini.com)
Received: by mail-wr1-f43.google.com with SMTP id x13so21426900wrs.9
        for <poky@lists.yoctoproject.org>; Tue, 23 Mar 2021 09:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=iLJkCQWCAkeU6ODwzoh1ldCnpnq2/hyhEajqdnKs5Ew=;
        b=sc574W6NSbNzqLft/d8ZAQxW02KppNacGmHLABYv8nZ3qOABRTO+Mt7CkOuuF02a13
         ZSjz2rhze4IYapNUXg3xi+jNHpCeG1iFWPjyyVT/cnxeQXnzsFIP5QrkBusW/WX+i8be
         dBh5VSnQSB3aoB+GczPdElFr4QFtDdgQhEY+1mQd3xxWZFEBUos9+unY0eOe779Rza3Z
         6ElTM2qybijYdR1HY6L2nxuf+owawFGR7GWqqeQNnMckw1Y7e3ZLIqMn5Pbai8I9EqLr
         pvozdIJsKJjaysjzZRxrfbIH5K4EVqrgtB0A01Q0UwxCR13EWh3G3W8+0etIBS04evfv
         HLBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=iLJkCQWCAkeU6ODwzoh1ldCnpnq2/hyhEajqdnKs5Ew=;
        b=tDXzqoEF0tXynL3sjjCtEryjyaSKdh1edqJHL9U4wvEF4Hk4wj9JtFegETvJv1itL0
         eNTnZ2BLPLCEtk85+Ybu4TeAdV7OufVR+zqrVv26vKl68y++X5VKwmf/yH4swV9uxNvV
         fG1kp4UBoPaoob7mWDWbzQL0gUAE7vu4ZSOEp1gIG7eUEAX2G8AbO4nV1Fju91qOr/zA
         /96kG3ZS90dTYV+xTiFsMjCQfE1vbgDRZShhnD9VS7/52JGzf7SGmMmtvlhapFiE0LEO
         5nLtr0PzNmhBAr8ODDV7ld+u2dcbO1VyFOcNbKlV6DG01O5WVKeuREAalmKaFtxB5u9j
         y/vw==
X-Gm-Message-State: AOAM532h/fR+L5xNXa1QkdmdL9qTOZw/pC43lpGYeVfXFI9W/q0gMad1
	v+JQsmcGwz6gD0gbn7qJjUTG9/Aba5UIsUTsdg4EAg==
X-Google-Smtp-Source: ABdhPJxAMbaIRciTWpdMnr2t+xAFz4U0N6rKSyGoQ9meCb92DnZEca14ITyJK4STf/5V7dU3vsPXtBrXjMzjIH9SEuc=
X-Received: by 2002:adf:ee4f:: with SMTP id w15mr4929827wro.199.1616517418230;
 Tue, 23 Mar 2021 09:36:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAAsqSTfbHeVt9jyrw12Xkrpj_+-kUXHHwVRQGCe0jD2k_R1o=A@mail.gmail.com>
 <02fc39f148aa309f0e99f08f2e107ea2a9a666af.camel@linuxfoundation.org> <CAAsqSTcd22B-wgTCmBPXNFHyeuiyizThQP3a5Lo8t0RN01aW_g@mail.gmail.com>
In-Reply-To: <CAAsqSTcd22B-wgTCmBPXNFHyeuiyizThQP3a5Lo8t0RN01aW_g@mail.gmail.com>
From: "Ross Burton" <ross@burtonini.com>
Date: Tue, 23 Mar 2021 16:36:47 +0000
Message-ID: <CAAnfSTs81uNoq2ipW81gAjeWXYYnS68i2KOOgWLe1izXjo4+oA@mail.gmail.com>
Subject: Re: [poky] image.bbclass - get_rootfs_size
To: Attie Grande <attie.grande@argentum-systems.co.uk>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 23 Mar 2021 at 12:23, Attie Grande
<attie.grande@argentum-systems.co.uk> wrote:
> Ross' patches look like a good step in the right direction.
> Despite the commit message, I'm not immediately sure about the
> handling of hard links... but I don't know the details of how files
> are put into the filesystem image... (i.e: are hard links maintained,
> what about filesystems that don't support them?)

The code assumes that file systems support hardlinks in some way.
Complicating things is that you can build an image multiple times with
different file systems...

I'll post the patches and we can see if the AB explodes...

Ross
