Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C373C5478C
	for <webhook@archiver.kernel.org>; Fri, 23 Feb 2024 13:16:47 +0000 (UTC)
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
 by mx.groups.io with SMTP id smtpd.web11.10172.1708694203733771650
 for <poky@lists.yoctoproject.org>;
 Fri, 23 Feb 2024 05:16:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=L3Mfxvh3;
 spf=pass (domain: gmail.com, ip: 209.85.210.170, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-6e4e7e2594cso249325b3a.2;
        Fri, 23 Feb 2024 05:16:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708694203; x=1709299003; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bA+tkFNn+N0ApQmbX7Ku4UVSihf3+/kGlA8CFEWjfRE=;
        b=L3Mfxvh3xxL4l7NlT9B3QjAZTwYjub/79YpmSCLD6UunYi/lb8E5W4fLGsDgp1MuXX
         8zM1aNmkUKAHAEDMhLaK0QXAyN4387gvrorRQ0cP+ckopcmLjt6/RL6NMoYw8CqoC32t
         XBK4sgoIuyeRZ0sumsAe6iJ/SDRLWDD2ZM0mwT57CZyHCv5Zh+23GSoo2QyvKGAGv0ws
         enyWfzcYsTnAcAnMRTEccM0DgwfeB+i2MQpeScIH8lhmH+XgmDXOGs0sArmOIdsox8DL
         GVM/EFY+a94TIAZVMxngZFI2bYtRYm6BBosPMdWymTCt6ltpTDVxhiGsvyuw8d19eOft
         X2Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708694203; x=1709299003;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bA+tkFNn+N0ApQmbX7Ku4UVSihf3+/kGlA8CFEWjfRE=;
        b=U+au6Edm6UKYAjK0FnTQ8pG/63RDm+nkUxrM19GE8DN/Duqu/GnIco+N7yH4hDobt7
         r//KIlb0bYU56YXHaf2hw0EOwFbFzw5Fhf0K9u0C/Pv8ObDLM+0YfdC5BM3glLC0CXpO
         ATXZZT20NDx7hNxVQy75YGIzkWmop64Q6suP+3yQgAcUI0LwI9VveWPAnmxjRmR1OkHL
         zSm/kfL10FEi6xHSrvH7bh2+YI81/RYgbDqH6wUVYDvO+A3REcE6CHwTba6gbigOiTMt
         dMS36GkhzodxwSWALctTExzJpsyUa0EYzhEuikIMGGJflWlTWl1O4bIT2jcPbtOArX9J
         69rA==
X-Gm-Message-State: AOJu0Yzz8ImQroRanL1HtG5ITNbVCK78cjnwHfRccx/yrOh4rIMoDQak
	IBCbPZ70ETlyZGNznZviWBZGKzgDsPhp6JGbu/pF4Nr0hHnZITJym3URqtVW5twaxjYvR+DOPOm
	CEuVmClMVW0JKSjiRJrWZvPeu6f8M+Xc0
X-Google-Smtp-Source: AGHT+IGehiZtcuXJyjg9VJNfFTvqsbYN+HepjCnGrVXwGBliPF9ymUceU9gLBMoJhYJrZX4i9owa9klKPUFgZMmscVc=
X-Received: by 2002:a05:6a20:9f43:b0:19e:a9c5:2ef6 with SMTP id
 ml3-20020a056a209f4300b0019ea9c52ef6mr2250320pzb.2.1708694202735; Fri, 23 Feb
 2024 05:16:42 -0800 (PST)
MIME-Version: 1.0
References: <CACSj6VXiG4NdETnnWcppCAxTym+kx7c3WKpj0LFGkoPKOA+Dyw@mail.gmail.com>
In-Reply-To: <CACSj6VXiG4NdETnnWcppCAxTym+kx7c3WKpj0LFGkoPKOA+Dyw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Fri, 23 Feb 2024 08:16:31 -0500
Message-ID: <CADkTA4PLga9nkB-kEHHqeWN=eEkLYEhhgqXXukv3GdwBS5Pjcw@mail.gmail.com>
Subject: Re: [yocto] 'kgit-s2q' doesn't remove 'rebase-apply' directory
To: yocto@lists.yoctoproject.org, aladyshev22@gmail.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 23 Feb 2024 13:16:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13271

On Fri, Feb 23, 2024 at 5:35=E2=80=AFAM Konstantin Aladyshev
<aladyshev22@gmail.com> wrote:
>
> Hello!
>
> 'kgit-s2q' in the linux recipe tries to use 'git apply' if 'git am' fails=
.
> In this case 'kgit-s2q' manually creates a ".git/rebase-apply"
> directory (https://git.yoctoproject.org/yocto-kernel-tools/tree/tools/kgi=
t-s2q#n622)
> But it looks like this directory is not removed after the patches are
> applied. This creates a problem, since with this directory present git
> thinks that rebase operation is still in progress.
> Because of this bug 'devtool modify linux' can't perform its own
> rebase operations in the "devtool_post_patch" tasks
> https://git.yoctoproject.org/poky/tree/meta/classes/devtool-source.bbclas=
s#n214
> In the end this creates a situation when the local patches are not applie=
d.

Leaving that directory is intentional, as it is used during some resuming
and skipping of patching  errors. These tools predate devtool and other
similar things by quite a few years, so there's not much coordination betwe=
en
the two. It might be something that could be cleaned up, but devtool could
just as easily ensure that it has a clean environment before starting and
removing any failed/lingering operations .. I run into this all the time wh=
en
manually working with my kernel trees, I just clean it up and move on.

Also, see the README in the kern-tools repository, you are using the
wrong mailing
list for these questions. They should go to linux-yocto.

Cheers,

Bruce

>
> Best regards,
> Konstantin Aladyshev
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62574): https://lists.yoctoproject.org/g/yocto/messag=
e/62574
> Mute This Topic: https://lists.yoctoproject.org/mt/104525948/1050810
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bruce.ashfield=
@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

