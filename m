Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
 by mx.groups.io with SMTP id smtpd.web11.21766.1598741657078520629
 for <poky@lists.yoctoproject.org>;
 Sat, 29 Aug 2020 15:54:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZS+NrZyo;
 spf=pass (domain: gmail.com, ip: 209.85.222.175, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f175.google.com with SMTP id m7so3022174qki.12
        for <poky@lists.yoctoproject.org>; Sat, 29 Aug 2020 15:54:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/3cf0285noXSIqnZbdEjVDych9j/io7HKnGngKJkCxU=;
        b=ZS+NrZyo9qJNmrWh2denfcbLTHU3FV2x8b/Et+3iRrpOen4xsdf9NcajjkTlU4oGaH
         q19sArh+d97KNVMkHomOBVvLQp2h015dGjS0qyP9ZCn0E301FNVsa+D/oIEJG/Im/iwB
         kCsSElOSwj4XpAV4GFY1KIdxydJ4aumpcwm8FVYSxP7DY1Oj337rNitF808tKOscGEjU
         gMJ2uz3jh+GKCWSgWTrZ0EEcwX1WRBqEWcThNDZJkyvGiCA3Q7jrrmvz7AksI+d8++El
         bbDjhL9uN6tUnyN/ZYbgvlJCp/YiBJzwQq9u0YqhsbX9meKmthvc9hEwGLOhd4ScDI8B
         YYhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/3cf0285noXSIqnZbdEjVDych9j/io7HKnGngKJkCxU=;
        b=j003ojgNSpPCaLue6SwvnW4vYRaxNGBZ7sBThW/da1jFCd1Db6XA4DlsfcIFLzY0Vl
         0xYAuAGm0KR4lrFbgNAytK7fmwSkpYqOaCms+Y7NKc6JHOCQu9Ffxm6yxbqWlrXKN6wD
         Dpo1Mfozmxz/Z3aOufcEhpdE3Cn5H//5/Ey0QPhcka97RUeki6w7QxnSP1WajZGBdPGU
         yWE8eAAemzKIYTYoX3SGKoXokWfm/3/Rc2lRbv7hUxHhEs9LkyJbUxoOsB2+UyjIGGxm
         VPFLSeGUS19PCh3b3s7FqEpi1o8NDnBBhc/pAkAjyGXf8jSXpCg4zWNve/5CqbyyKR4j
         IeDQ==
X-Gm-Message-State: AOAM531GP9YN8KShmJENRycU2//gjTO7IQuOKd7hG1/L0w4uKHB0n6Bp
	Rk15L1BbdREKb6i3vOGQ0zfdiceVAhu1ONj7qQ0wyUVpb4rADA==
X-Google-Smtp-Source: ABdhPJzTR6M4HN+EiEwQswVu7/riK+ILqFUc7sv5LVlwtXqcLqppT7vg40ZwksNca8ZD8HyfqUvfPVi55g4JHYYOZZw=
X-Received: by 2002:a37:6f43:: with SMTP id k64mr5224378qkc.212.1598741656038;
 Sat, 29 Aug 2020 15:54:16 -0700 (PDT)
MIME-Version: 1.0
References: <CALXw4G7uT+tbVtuMHWLscWqDy1HDzWN6Q+kt6Fp6qTgU1d=2Kw@mail.gmail.com>
In-Reply-To: <CALXw4G7uT+tbVtuMHWLscWqDy1HDzWN6Q+kt6Fp6qTgU1d=2Kw@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Sat, 29 Aug 2020 15:53:50 -0700
Message-ID: <CAMKF1srBf0e73VLVqsz_a6_tjE3aqSO00V3C-hD62MQi7K=hCg@mail.gmail.com>
Subject: Re: [poky] poky-bleeding.conf
To: Michael Gloff <mgloff@emacinc.com>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Fri, Aug 28, 2020 at 7:29 PM Michael Gloff <mgloff@emacinc.com> wrote:
>
> Just came across:
> meta-poky/conf/distro/poky-bleeding.conf
>
> Is this useful any longer or should it be removed? If it is still useful, the versions specified are anything but bleeding edge. The same goes for the included  conf/distro/include/poky-floating-revisions.inc
> I know there used to be a lot more _git recipes alongside release versions, so this is probably leftover. I can send a patch to remove these two if that is the consensus.
>

I think poky-bleeding is a decent idea that we should follow and
therefore we should keep it so it keeps us reminding,  We have made
some slow steps in this direction e.g. devupstream.bbclass I would
like to see
the devupstream.bbclass being used poky-floating-revisions.inc perhaps can go.

>
> Michael Gloff
>
> 
