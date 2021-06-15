Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com [209.85.221.174])
 by mx.groups.io with SMTP id smtpd.web08.6655.1623747364508670858
 for <poky@lists.yoctoproject.org>;
 Tue, 15 Jun 2021 01:56:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=OqD6hL64;
 spf=pass (domain: gmail.com, ip: 209.85.221.174, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f174.google.com with SMTP id az3so4790252vkb.12
        for <poky@lists.yoctoproject.org>; Tue, 15 Jun 2021 01:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PuW4qsQhbaQrePUZiuoXvARspfUYHWkxxBAylBn7wtQ=;
        b=OqD6hL64lJGORryXXqjUeNX1Hw0objyQV7VbeFvR19229OqG2BSM/5x6bY/zW9qqcC
         O/cWxqpPDyOX0fQvBaP0MwZsCQI0qbO/cMbrAMPtHsB9bDf8LofCXw1mZl216L2TxPwb
         tt3ZvyquBAsZYzchl+vg0CIR36Zq2dn1smGEXy+/axXY1lgi1RELAZbW8W3cjDAYDMqs
         K7DL2ymqdJph5A1vJR9W+zWy35MSIpakyQgqqjENtM2zUjoEoJc8NNW7mpgllcCsPSb+
         KmWYFeh6kw2Un8bp8MdnnJY6QToIO92Dy0nPKdLw/RHi1qMUozIKY9r0APgE84EZ3n8Z
         fQxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PuW4qsQhbaQrePUZiuoXvARspfUYHWkxxBAylBn7wtQ=;
        b=TDUx6DDqEWpj7JWOGxuLkGrkS33xy0RmVTsvw2PVOWqtO87fbU/eZGMeGrxHh/8jKG
         epdvHITU5N3aUJ5E4ZfEHo1LWU1A4B89piOtA8bPqhoJX0q+SLiemJde+str8k8oH87W
         ygnn5hmxlQ9iQTx1KWXJ/eP8aD0TebM9OClzO6Sg3ZkNCFV/LJb0tZPLYX/5lXGDNZoB
         W88sNEb9CTNxkw3nKfIybs6vH0N5bKpDBYFh7J889eIqikVjrq8Y+Lc5gCy2ZJDCHOxv
         UlLVmMj/bf5fOslmhZ0Dh6wMA7ghOX4fDOhCQkFiWMfat7PJUJgkE+G1aY0YzexKitb/
         /fxw==
X-Gm-Message-State: AOAM532zhtUugF1nTTtJN0/otUmileNLuqP8i/IAqi2UCcpjig/GAMDC
	TuEFPwNyMgkteC0ssuDFlLTLbak0V1rzPSRIJi4=
X-Google-Smtp-Source: ABdhPJwIMOURe5WYZgnC39ul0g5K0dUfRiOFKUN7CH9DCKL3+45KHEVQ+FDE9tiLM2dWcVzisyhmi12mn3z7oZJQJVc=
X-Received: by 2002:a05:6122:43:: with SMTP id q3mr3292624vkn.10.1623747363642;
 Tue, 15 Jun 2021 01:56:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210615081225.1734033-1-alex.kanavin@gmail.com> <5ed9e1d2676d4d31289ebaf2ec3b492c1daa88a7.camel@linuxfoundation.org>
In-Reply-To: <5ed9e1d2676d4d31289ebaf2ec3b492c1daa88a7.camel@linuxfoundation.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Tue, 15 Jun 2021 10:55:51 +0200
Message-ID: <CANNYZj84MXS57sG5CWLmS-Y_0-w8h1_9NLmtjFEo4pJ5snXvcA@mail.gmail.com>
Subject: Re: [poky] [PATCH] local.conf.sample: disable prelink
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d0a16f05c4ca2448"

--000000000000d0a16f05c4ca2448
Content-Type: text/plain; charset="UTF-8"

On Tue, 15 Jun 2021 at 10:48, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> I appreciate the desire simply to delete/disable anything that causes
> issues
> but in this case I draw the line and my answer is no. It works fine in the
> vast majority of usage.
>

But where are the benchmarks that show it's actually beneficial? And
commitment from someone to maintain it and address open issues (there are
more than just this one)?

Alex

--000000000000d0a16f05c4ca2448
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Tue, 15 Jun 2021 at 10:48, Richard Purdie &lt;<a href=3D"mailto:r=
ichard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">I appr=
eciate the desire simply to delete/disable anything that causes issues<br>
but in this case I draw the line and my answer is no. It works fine in the<=
br>
vast majority of usage.<br></blockquote><div><br></div>But where are the be=
nchmarks that show it&#39;s actually beneficial? And commitment from someon=
e to maintain it and address open issues (there are more than just this one=
)?</div><div class=3D"gmail_quote"><br></div><div class=3D"gmail_quote">Ale=
x<br></div></div>

--000000000000d0a16f05c4ca2448--
