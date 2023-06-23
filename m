Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC34EB64D7
	for <webhook@archiver.kernel.org>; Fri, 23 Jun 2023 15:29:17 +0000 (UTC)
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com [209.85.166.182])
 by mx.groups.io with SMTP id smtpd.web10.1477.1687534153503540892
 for <poky@lists.yoctoproject.org>;
 Fri, 23 Jun 2023 08:29:13 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=RwrEL//g;
 spf=pass (domain: gmail.com, ip: 209.85.166.182, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-il1-f182.google.com with SMTP id e9e14a558f8ab-3422161e53bso1865365ab.1
        for <poky@lists.yoctoproject.org>; Fri, 23 Jun 2023 08:29:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687534152; x=1690126152;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wH0t9q0JzqT78ZiIa1CkKCcGodn7wCiFhGlXesjYzJg=;
        b=RwrEL//g5l8dV3T8Afr3bcXzNFatxdXumbiB/07sYjplDEcg5XXK7P6cWFdK4x9cnQ
         MrWW6Iu/HtLfQaEGdWY6Qn4OQO3vQ1yCMBfjXnPL43+mphADdg/MqMeoKkKLNIauQcM5
         +UWABV4LpaANB90vK7b5HaFL3241ZnEjgdsmVuHkaAtrgWTjR6+e36OYhU8YVeJPGYXl
         m2tenNYtHgs1Q8dOsyF1cJCHjuJhWATe1myh8YROfjDzybzsAHxNVJwKMkqybbVUZxCI
         iHOcUvA/vuo/kjT/xvtgONZKndYQ00fKBvtNc1y04td1q4RbD63aYmYArzshk3uz91Lr
         M74w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687534152; x=1690126152;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wH0t9q0JzqT78ZiIa1CkKCcGodn7wCiFhGlXesjYzJg=;
        b=F4aI1NwxgGdL/gvFVrKf/FmvZAPmG3Zur9r9VI6QBiL4dprAuUzNFA0BpsKHR9sslG
         mWMh2ltzMaCkgQ2v7TEcJWr1Du8Yp4dNeLsTz/+e7IIVn82tqPY6M5o7WfEvv0lwQbGq
         NBEcZjrsq30F/FmLOe/QiPbZB0oTkVEjfUcGCS6LAusV3gI2tulXPT2vXdN5Hey1FX5N
         f2OBiKYBcie4YkszneJTV4K1QF6GddN6RblGLI7QCG/aLGclz1+NrVYja0fqZulWOdoG
         6Qo5D4oCS6CzvuONkJZOktYWUl4NUrayZ+V3yQbW4C9qdqjUp8iDD0yzx3X28d4O/7iN
         c82g==
X-Gm-Message-State: AC+VfDyZ9IuSw7OBeTYCvWzWlDGtIS0F1LU4vtQxRoxc5GVl3t9WdlGP
	NrsXHZn9TaMf3KqgUQYUXy02TyZDCOD4/JNHDdLagoQ1370=
X-Google-Smtp-Source: ACHHUZ5OIj691b8MDKv6H7kCO6M/NkYdkQiOeYusah8tM5nhEqYp7n1rKcfIkv4RRc/rhaXP95mlDSyQp/bh8ga9IUY=
X-Received: by 2002:a92:b30a:0:b0:342:6540:21a1 with SMTP id
 p10-20020a92b30a000000b00342654021a1mr10634897ilh.6.1687534152518; Fri, 23
 Jun 2023 08:29:12 -0700 (PDT)
MIME-Version: 1.0
References: <7613284c-e7b0-61c4-d93f-41a5f904d9d0@gmx.li> <CANNYZj8sk4R-CzPZe1thmdp0K9PhbZ_Oi5U0yRHwOwGWFfZd2w@mail.gmail.com>
 <f7b3af62-9843-8d0e-3882-ca5914969eac@gmx.li> <CADkTA4MhTL1yyO3Q=R8CfnfKMW2TuqPB7t4JQSUqx2eH6Sb1rA@mail.gmail.com>
 <56f415b7-cedb-5f6f-0254-4b1358fd8801@gmx.li>
In-Reply-To: <56f415b7-cedb-5f6f-0254-4b1358fd8801@gmx.li>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Fri, 23 Jun 2023 11:29:01 -0400
Message-ID: <CADkTA4P__7zbExpFAVQTge+vYtgrmQcrYJAZ0VZDKEtP_qJZAg@mail.gmail.com>
Subject: Re: [poky] Yocto and kernel - dependencies
To: Steve <star@gmx.li>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 23 Jun 2023 15:29:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13097

On Fri, Jun 23, 2023 at 11:19=E2=80=AFAM Steve <star@gmx.li> wrote:
>
> Am 23.06.23 um 15:44 schrieb Bruce Ashfield:
> > On Fri, Jun 23, 2023 at 7:23=E2=80=AFAM Steve <star@gmx.li> wrote:
> >>
> >> Thanks Alex, that was indeed my first attempt.
> >> To start with a simple case (I thought) I just added to my <machine>.c=
onf
> >>
> >> PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"
> >> PREFERRED_VERSION_linux-yocto ?=3D "5.15%"
> >>
> >> But get: "Noting Provides virtual/kernel"
> >> I mentiones a few that provides it, but all are skipped as they are
> >> incompatible with my machine. But isn't that anyhow wrong way, as I wa=
nt
> >> to use my kernel, not yocto-kernel?
> >
> > You mentioned "linux headers" in your first email. What exactly are
> > you looking for out of the kernel ?
> >
> > If it is the kernel uapi headers, then you should absolutely use the
> > linux-libc-headers package, it is safe to be used across different
> > kernel versions (and we test it as such each release).
> >
> > If it is the actual kernel and BSP/HW support, then you do want your
> > own kernel (but should have a look at how much support is upstream
> > in kernel.org .. because if the support is there, you can just use
> > linux-yocto).
> >
>
> I didn't observe any issues in my workflow since I compiled "perf" with
> my SDK.That alerts me.
> Get some warnings that Kernel API headers differs.
> tools/include/uapi/linux/const.h and include/uapi/linux/const.h
> tools/include/uapi/linux/in.h and include/uapi/linux/in.h
> as for instance.

That depends on the release you are using. Those have all been
dealt with in recent versions of the perf recipe.  Perf is using much
more than just the kernel headers and uapi kernel headers, so it
is always a special case.

>
> I am not into it and maybe even mean something different, but that is
> what triggers me.
> I mean the linux-libc-headers are of 5.16, but my kernel is 5.15.
> Where is it set to 5.16? Didn't do active.

The libc-headers are packaged separately. They are tightly coupled to
the c-library and toolchain.

We only bump them as I produce new reference kernels. So they have
a different version than your kernel, and that is by design.

Find the linux-libc-headers recipe and you'll see an explanation in the
recipe, and also another in the docs. The headers are not something
that 99% of people should need to touch.

>
> I don't get why yocto has its own kernel beside the mainline kernel.org?

It isn't our own kernel, it is largely kernel.org, with some branches being
exactly kernel.org + -stable updates.

It is managed in a git tree, because slingling patches and tarballs
across 5 architectures, 20+ BSPs, four kernel "types" and three kernel
versions is madness :) But otherwise, it is kernel.org.

I've done 6 or 7 different presentations on the topic over the last decade,
you can find them in the various yocto summits and Linux Foundation
events (in fact, I'm doing another one in prague on Monday).

Bruce

>
> Sorry if I mix things up a but - but that is my understanding as of now.
>
>
>
> >>
> >> I also thought about doing like that:
> >>
> >> PREFERRED_PROVIDER_virtual/kernel ?=3D "my-linux"
> >> PREFERRED_VERSION_linux-yocto ?=3D "5.15%"
> >
> > You wouldn't set the preferred version of linux-yocto, if you are using
> > your own kernel recipe. If you only have one version of your kernel
> > provider, then you don't need to set a preferred version at all.
> >
> > Check if something else is setting the preferred provider for the
> > kernel (since you are using "?=3D" as the assignment, you may not
> > actually be setting the final variable.
> >
> >>
> >> but it doesn't go for my-linux_5.15.bb file that contains SRC_URI and
> >> SRCREV.
> >
> > If there were no warnings about incompatible machines, etc, then
> > it probably is just the assignment I mentioned previously.
> >
> >>
> >> Seems I am on a completly wrong track.
> >> Thinking about what is theoretically needed:
> >> Source, Revision and what config file it should compile.
> >> How to provide that?
> >
> > The yocto project documentation is the best place to get into details
> > like that.
> >
> > But again, if you are mainly looking for kernel userspace headers,
> > you won't get them from providing your own kernel recipe.
> >
> > Bruce
> >
> >>
> >> Am 23.06.23 um 10:38 schrieb Alexander Kanavin:
> >>> The recommended thing is to build the kernel directly in yocto with a
> >>> recipe. Or, even better, take one of the standard kernel recipes and
> >>> use that.
> >>>
> >>> Alex
> >>>
> >>> On Fri, 23 Jun 2023 at 10:28, Steve <star@gmx.li> wrote:
> >>>>
> >>>> I am a bit clueless about the relation between yocto build of rootfs=
 and
> >>>> kernel.
> >>>> Usually I build my kernel completely outside of Yocto, just using th=
e
> >>>> SDK created by Yocto.
> >>>> But now I am afraid I doing something wrong regarding kernel headers
> >>>> need in rootfs - or at least in SDK.
> >>>>
> >>>> My machine-config seems not to have any link to kernel or
> >>>> kernel-version. I found that linux-libc-headers (is this what I need=
 ?)
> >>>> is of 5.16, while I am actually compile a 5.15 (again completely out=
 of
> >>>> Yocto).
> >>>>
> >>>> So what is recommended? What change is needed to use headers out of =
my
> >>>> linux git repo?
> >>>>
> >>>> Best regards, Arno
> >>>>
> >>>>
> >>>>
> >>>>
> >>>>
> >>>>
> >>>>
> >>>>
> >>
> >>
> >>
> >>
> >
> >
> >
> >
> >
> >
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13096): https://lists.yoctoproject.org/g/poky/message=
/13096
> Mute This Topic: https://lists.yoctoproject.org/mt/99714609/1050810
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [bruce.ashfield@=
gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

