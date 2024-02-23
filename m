Return-Path: <aladyshev22@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20E27C54E49
	for <webhook@archiver.kernel.org>; Fri, 23 Feb 2024 20:17:38 +0000 (UTC)
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com [209.85.222.44])
 by mx.groups.io with SMTP id smtpd.web10.5050.1708719452145036182
 for <poky@lists.yoctoproject.org>;
 Fri, 23 Feb 2024 12:17:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TYNvgVzl;
 spf=pass (domain: gmail.com, ip: 209.85.222.44, mailfrom: aladyshev22@gmail.com)
Received: by mail-ua1-f44.google.com with SMTP id a1e0cc1a2514c-7d5a6b1dd60so323135241.3;
        Fri, 23 Feb 2024 12:17:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708719451; x=1709324251; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pNGzxqGsmQuQxeIO+Xcix3235fJ184fAnsTCZFbtXqE=;
        b=TYNvgVzlYVVIBCMaKtMQyDHZnAJS14oQxpC++5c7JG+FNR680JIMrt7OzvE43//WAW
         mQpsGDBnErjrZTja2XRGacGzonzfXHV9Dv7gbR2xn6n7GEzcuQVdTzp0LKBVc+YvZmrB
         vu/SBEqQY7hetVY8e273utjWd7jdufY5unHskQW31Z2n9mbQ9zBpq/6HJgWB793Nh7OI
         hV9D5DRQdzLRmPYSio33QLS6phj0zSIidPLYXPE7ah1grDeeo5R/zn5xZt8EUdz5Uhbw
         /4ep8pWRdfPKuCh6KxyD7KJulAx3beWj01vGpLFYb0qBaKY3xGF8NUgjMh2p+IEwKXNK
         1Ulw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708719451; x=1709324251;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pNGzxqGsmQuQxeIO+Xcix3235fJ184fAnsTCZFbtXqE=;
        b=L2eEb/LKEWytvAnDTFDubmV7k/iHkhFsLba4VeUlpkywHVRcKfnPXY/pwu6ukKB1B+
         Q6UA4RszTW0wdssJVYzPWfpFLpFfLrkHm7VCtlX/TqvfS8gXyaySdbxip/mwmknUKlvh
         YJSZHPkgLir7+pFA35SHuZLPkkmHr6I90nwTZGRbDquWsroTsoIkpApO+clPbAZKQP34
         A+2Yjrs03HdzuG3kOUdCcM0kx9T3cpdN1XjMc/5FKZuouwu5lpqQiNGxnumULa+FESyA
         il5CAUmcEsBpOjvbwAH/ulgGn8y6NsRyD/Giinpy1/UD7SEtSHgzbpL4rFOfzVZxGbGg
         XG4g==
X-Forwarded-Encrypted: i=1; AJvYcCVil0iKB2LuI9QJ0NELG1kHSnc6Tlz5fpjBUSKm7aSy7pf5hrFjvD0V+YUqWNplH2/vrY0BA2iq0BwVZ+YKEXrLKp+4DhU9xt0s+k0=
X-Gm-Message-State: AOJu0YxNRQHbMvfb/PkmpDpwsXfBAfxFKBXu+XkH7NhvMsPnT9SokzD+
	ZDb1K6w8RIScamSSu1MmHcSqwz/GI6OUAWQuMPibcdeAujBe1YN6TiLhDOHi2j2AczfcfWCpRoL
	KK8Zl9GPmSoz7y2VXAhFgmt2EV6A=
X-Google-Smtp-Source: AGHT+IE7crGrPuEsKfHe7+Vo+jYyRwBt+j6WQCKWn9rXRrP9sXVXS31IPOxPN7ALJ8KexWEDqFBaP0bo+sfwFFnjlrw=
X-Received: by 2002:a05:6102:55aa:b0:470:4a5f:684d with SMTP id
 dc42-20020a05610255aa00b004704a5f684dmr1277788vsb.29.1708719451153; Fri, 23
 Feb 2024 12:17:31 -0800 (PST)
MIME-Version: 1.0
References: <CACSj6VXiG4NdETnnWcppCAxTym+kx7c3WKpj0LFGkoPKOA+Dyw@mail.gmail.com>
 <CADkTA4PLga9nkB-kEHHqeWN=eEkLYEhhgqXXukv3GdwBS5Pjcw@mail.gmail.com>
In-Reply-To: <CADkTA4PLga9nkB-kEHHqeWN=eEkLYEhhgqXXukv3GdwBS5Pjcw@mail.gmail.com>
From: Konstantin Aladyshev <aladyshev22@gmail.com>
Date: Fri, 23 Feb 2024 23:17:20 +0300
Message-ID: <CACSj6VXaujPEP6Z3uDhOX_156tLN1Zdv-S2wJAzUPXdVsxhUtw@mail.gmail.com>
Subject: Re: [yocto] 'kgit-s2q' doesn't remove 'rebase-apply' directory
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: yocto@lists.yoctoproject.org, poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 23 Feb 2024 20:17:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13276

Thanks Bruce!
So what do you suggest, that devtool needs to remove the
".git/rebase-apply" directory in its "devtool_post_patch" task?
Anyway, I'm moving the discussion to "linux-yocto" with some
additional info on how to recreate the error on poky master.

Best regards,
Konstantin

On Fri, Feb 23, 2024 at 4:16=E2=80=AFPM Bruce Ashfield <bruce.ashfield@gmai=
l.com> wrote:
>
> On Fri, Feb 23, 2024 at 5:35=E2=80=AFAM Konstantin Aladyshev
> <aladyshev22@gmail.com> wrote:
> >
> > Hello!
> >
> > 'kgit-s2q' in the linux recipe tries to use 'git apply' if 'git am' fai=
ls.
> > In this case 'kgit-s2q' manually creates a ".git/rebase-apply"
> > directory (https://git.yoctoproject.org/yocto-kernel-tools/tree/tools/k=
git-s2q#n622)
> > But it looks like this directory is not removed after the patches are
> > applied. This creates a problem, since with this directory present git
> > thinks that rebase operation is still in progress.
> > Because of this bug 'devtool modify linux' can't perform its own
> > rebase operations in the "devtool_post_patch" tasks
> > https://git.yoctoproject.org/poky/tree/meta/classes/devtool-source.bbcl=
ass#n214
> > In the end this creates a situation when the local patches are not appl=
ied.
>
> Leaving that directory is intentional, as it is used during some resuming
> and skipping of patching  errors. These tools predate devtool and other
> similar things by quite a few years, so there's not much coordination bet=
ween
> the two. It might be something that could be cleaned up, but devtool coul=
d
> just as easily ensure that it has a clean environment before starting and
> removing any failed/lingering operations .. I run into this all the time =
when
> manually working with my kernel trees, I just clean it up and move on.
>
> Also, see the README in the kern-tools repository, you are using the
> wrong mailing
> list for these questions. They should go to linux-yocto.
>
> Cheers,
>
> Bruce
>
> >
> > Best regards,
> > Konstantin Aladyshev
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#62574): https://lists.yoctoproject.org/g/yocto/mess=
age/62574
> > Mute This Topic: https://lists.yoctoproject.org/mt/104525948/1050810
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bruce.ashfie=
ld@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end
> - "Use the force Harry" - Gandalf, Star Trek II

