Return-Path: <rybczynska@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 832E5CDB465
	for <webhook@archiver.kernel.org>; Sat, 14 Oct 2023 08:34:17 +0000 (UTC)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
 by mx.groups.io with SMTP id smtpd.web10.59182.1697272452495434959
 for <poky@lists.yoctoproject.org>;
 Sat, 14 Oct 2023 01:34:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MML109kD;
 spf=pass (domain: gmail.com, ip: 209.85.208.172, mailfrom: rybczynska@gmail.com)
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2c50305c5c4so24655831fa.1
        for <poky@lists.yoctoproject.org>; Sat, 14 Oct 2023 01:34:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697272450; x=1697877250; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T87eQp0ERiTshJFO7e80oOQbSJ2XR/OEwwvc9/r2Uvc=;
        b=MML109kDcV03yNYe0yB6WJfqZPchzBBhfPdLlWfRfG0R2tjA80oz/DHSq8ky3QZF8M
         FClBs9tIiCBBP4q088hf6KNuY0IH/So2h+F2zBdKFXbJ6nudpfUqQKtUAtIwW9M4QHLZ
         YOhtPxn7TcJbbJvzkRo/54RGCeB4fN1x6DklDarCzNW4vWyMMOn/ydvjLWjIg2AOYvRv
         8RNKxJcvdTNdnCBaHjn5pz9i77njWS74PtfWBoyzFmNU2mRSFsC5dQHXinohudTtfgCn
         qG31tatym8rE8nd+DIoSbTKAGVklD9hGlh8RR17PnnS4EBWQEJzibB6dbXZ6lA/e5JNK
         ZSwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697272450; x=1697877250;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T87eQp0ERiTshJFO7e80oOQbSJ2XR/OEwwvc9/r2Uvc=;
        b=wozK5zpGw9jFg9y63LoVVbk2IpR633q4pMATJJTHQc0kl3MDPgChP4AoTJVxomvvqs
         hnZup/JSKUr0VPfaUxPa8KavTyt5Z0RQqejTCHepCZIPINgjJD573VDGlQQ35xan5Uc+
         +Qa35Ths4vitFQP3pb4GfuZ60D2heZL1j4pKa02+4Y03VLaiWomAZzOvs6IG1x7d0HD8
         I81o3k5uvaO6bUPtBCait7uWRf5T+UlKVkXXWt9kOpoXkq0B0EmvcYBlEu+0fm6lhdfG
         JMWs07+6mgDV42XUhwzfr3eOfUUIva5xuZv2BHMvAwjL8pVMbX0yty5Ux4DJ8O7GAQYB
         1kJw==
X-Gm-Message-State: AOJu0YyZqpBhTfoQFI2aDwC0r5HjjXCtvIkt3arb8jHj15TPjO+k8KmI
	ji+a/TyUllw70RiUgfwETq9Qu9uMyIoVLH29ZyY=
X-Google-Smtp-Source: AGHT+IHZsI2sC/QnfQZP4Izg27Lw0mb0nnRRVz3wLAGDvI6yKH6eD+R3AQf2Z41srLIKheZQj2fp8RM0lrrotUpHb1Y=
X-Received: by 2002:a2e:beab:0:b0:2c5:82c:73d3 with SMTP id
 a43-20020a2ebeab000000b002c5082c73d3mr3415319ljr.40.1697272449560; Sat, 14
 Oct 2023 01:34:09 -0700 (PDT)
MIME-Version: 1.0
References: <DxsL.1697069952825184652.wun3@lists.yoctoproject.org> <CAOSpxda3XdD2-=r-Zaqs=TQO3VBkBton8BELYq7rQYaQ-W9E6w@mail.gmail.com>
In-Reply-To: <CAOSpxda3XdD2-=r-Zaqs=TQO3VBkBton8BELYq7rQYaQ-W9E6w@mail.gmail.com>
From: Marta Rybczynska <rybczynska@gmail.com>
Date: Sat, 14 Oct 2023 10:33:57 +0200
Message-ID: <CAApg2=Sdg06uKOSYJbzFSMSDMe3tas6y9eyLUxn2etVUWBFi+Q@mail.gmail.com>
Subject: Re: [poky] CVE CHECK scorev3
To: Steve Sakoman <steve@sakoman.com>
Cc: Grant.Smith3@ngc.com, poky@lists.yoctoproject.org, 
	Ross Burton <ross.burton@arm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sat, 14 Oct 2023 08:34:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13177

On Fri, Oct 13, 2023 at 4:23=E2=80=AFPM Steve Sakoman <steve@sakoman.com> w=
rote:
>
> On Wed, Oct 11, 2023 at 2:19=E2=80=AFPM <Grant.Smith3@ngc.com> wrote:
> >
> > All,
> >
> >
> >
> > In the poky layer (yocto-4.2.3 branch) I am using the built in cve-chec=
ker and running into an issue where it is unable to produce the scorev3 met=
ric. All CVEs have a scorev3 equivalent to 0.0. When looking at poky (yocto=
-4.0.9 branch) I noticed that the cve-checker uses the 1.1 version of the N=
VD database and can successfully produce scorev3 when running a test build.
>
> You are using an old version of kirkstone (4.0.9), the current version
> is 4.0.13.  The current version now uses the new version of the
> cve-checker.  I just checked and the code is identical in kirkstone
> and mickledore, with the exception of this commit which is required
> for some older distros which are supported by kirkstone but not
> mickledore:
>
> https://git.yoctoproject.org/poky/commit/?h=3Dkirkstone&id=3Dcd1d34d5106c=
4484372552bb3cf93198f7b25d76
>
> So kirkstone and mickledore should be producing identical results
> (assuming the same recipe versions of course)
>
> Looking at a random sampling of json files though, I also see
> "scorev3": "0.0" in all of them.
>
> So I suspect that there is a bug, and it is present in all branches
> (master, mickledore, kirkstone, dunfell)
>
> Steve


Hello,
I've looked into the current results of master and kirkstone and
nothing unusual.
There are quite many entries with cvss3 at 0.0, but that's normal.

Steve, Grant, if you have situations with all cvss3 at 0.0, I will need you=
r
results file and the exact hash of the poky versions you use.

Kind regards,
Marta

