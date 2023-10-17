Return-Path: <rybczynska@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E2D1CDB474
	for <webhook@archiver.kernel.org>; Tue, 17 Oct 2023 09:14:47 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web11.202753.1697534079481586015
 for <poky@lists.yoctoproject.org>;
 Tue, 17 Oct 2023 02:14:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TloDWL3h;
 spf=pass (domain: gmail.com, ip: 209.85.208.171, mailfrom: rybczynska@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2c16757987fso67913111fa.3
        for <poky@lists.yoctoproject.org>; Tue, 17 Oct 2023 02:14:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697534077; x=1698138877; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uz2z8FA8IKrjvFxExJpud0TAlffbP/ZQkFvJixpIvis=;
        b=TloDWL3hkuf+hCA+R/J/BQEf4mRp/E/5wQcUnMxRF4sbOc/zB6eiONZv+AxPKQ+mOH
         Z5gKi2YKDQuTdHKC6v8nHze/gM5lxvW6QXP9ZmgmRdBPn1ATM06fu9Nyc4WIfxazm0Zl
         oSQeSCRyJmyCKD7QtcgXY6Xcms+1qvcykHZQVcFzrmiQOkMb1uUEhlj1SG0QNxfbqiQZ
         8Kkqcbk5OaTUaAmmKvG2hSbZJLcjRnmRbbwi36fZw/Grd4yFTt5X8ka0fyS6Y7irc8Qk
         F02PPhnXPUV8mPxOGlUwXeoFbAlqpj9W5TZxaLikRRcv0D5v9oTQ+Ks2+PSrDhe9/JmV
         i9sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697534077; x=1698138877;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uz2z8FA8IKrjvFxExJpud0TAlffbP/ZQkFvJixpIvis=;
        b=ZWau2CTA/hVK4q9he1bSdLx76MgPYzwlyctEZKZ2ommKLirIp49oI0PzneNHWRL8tN
         GbBApmxjvnoGEhEpuWSots4uGcp0xdbWHpXStObeAg+AN3UVqHqH2wfnMOKI/FHQNx/B
         NT87dA15KhVF6jfjMLNQMjAq9oyZse91/PA3pXynmKXKg4cTCTmovNlwx72fy9vKpzuC
         QNBQXu7fnyu34ja9Hnf9F8/XBqYl+/BwMQ/Q1CSNMgwWz4tWJ5szs2I8BOPs+4NsfXtx
         sdz81B93VYQXrZ5lGCi76hHtUnxIIRxQDh4g8wD7uJo7Ddj/SLth3/Oz620mqHyFFKkR
         4OnA==
X-Gm-Message-State: AOJu0YxaCP/7czBWHS78u6Brq/lDzYTzAS5qvX5R/Gpa78tDmB7ij2M/
	U3tAWghiY/3k6km12FUmg7UZfJkNJIQYsNRweLM=
X-Google-Smtp-Source: AGHT+IG1+QMFDvFrQqJNBAIrGWb0aT8JXjxk55X29seD6gjKarILamxmesa+o5TIuWIjf+hUVUayfP++RfEim52w8O0=
X-Received: by 2002:a05:651c:19a6:b0:2c5:d52:a08e with SMTP id
 bx38-20020a05651c19a600b002c50d52a08emr1543406ljb.20.1697534077340; Tue, 17
 Oct 2023 02:14:37 -0700 (PDT)
MIME-Version: 1.0
References: <DxsL.1697069952825184652.wun3@lists.yoctoproject.org>
 <CAOSpxda3XdD2-=r-Zaqs=TQO3VBkBton8BELYq7rQYaQ-W9E6w@mail.gmail.com> <178DEC4DABB5202F.14388@lists.yoctoproject.org>
In-Reply-To: <178DEC4DABB5202F.14388@lists.yoctoproject.org>
From: Marta Rybczynska <rybczynska@gmail.com>
Date: Tue, 17 Oct 2023 11:14:24 +0200
Message-ID: <CAApg2=Qf6FtjBaKynpuZ_COc_vuVOgD8+UhckDS=MoSj5NWVVQ@mail.gmail.com>
Subject: Re: [poky] CVE CHECK scorev3
To: rybczynska@gmail.com
Cc: Steve Sakoman <steve@sakoman.com>, Grant.Smith3@ngc.com, poky@lists.yoctoproject.org, 
	Ross Burton <ross.burton@arm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 17 Oct 2023 09:14:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13180

On Sat, Oct 14, 2023 at 10:34=E2=80=AFAM Marta Rybczynska via
lists.yoctoproject.org <rybczynska=3Dgmail.com@lists.yoctoproject.org>
wrote:
>
> On Fri, Oct 13, 2023 at 4:23=E2=80=AFPM Steve Sakoman <steve@sakoman.com>=
 wrote:
> >
> > On Wed, Oct 11, 2023 at 2:19=E2=80=AFPM <Grant.Smith3@ngc.com> wrote:
> > >
> > > All,
> > >
> > >
> > >
> > > In the poky layer (yocto-4.2.3 branch) I am using the built in cve-ch=
ecker and running into an issue where it is unable to produce the scorev3 m=
etric. All CVEs have a scorev3 equivalent to 0.0. When looking at poky (yoc=
to-4.0.9 branch) I noticed that the cve-checker uses the 1.1 version of the=
 NVD database and can successfully produce scorev3 when running a test buil=
d.
> >
> > You are using an old version of kirkstone (4.0.9), the current version
> > is 4.0.13.  The current version now uses the new version of the
> > cve-checker.  I just checked and the code is identical in kirkstone
> > and mickledore, with the exception of this commit which is required
> > for some older distros which are supported by kirkstone but not
> > mickledore:
> >
> > https://git.yoctoproject.org/poky/commit/?h=3Dkirkstone&id=3Dcd1d34d510=
6c4484372552bb3cf93198f7b25d76
> >
> > So kirkstone and mickledore should be producing identical results
> > (assuming the same recipe versions of course)
> >
> > Looking at a random sampling of json files though, I also see
> > "scorev3": "0.0" in all of them.
> >
> > So I suspect that there is a bug, and it is present in all branches
> > (master, mickledore, kirkstone, dunfell)
> >
> > Steve
>
>
> Hello,
> I've looked into the current results of master and kirkstone and
> nothing unusual.
> There are quite many entries with cvss3 at 0.0, but that's normal.
>
> Steve, Grant, if you have situations with all cvss3 at 0.0, I will need y=
our
> results file and the exact hash of the poky versions you use.
>


A complete re-download of the database worked for Grant, but I'm creating
an issue https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15239 because
it seems that more people are affected. I'll be working on this.

Regards,
Marta

