Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07D38C83F34
	for <webhook@archiver.kernel.org>; Thu, 31 Aug 2023 17:12:11 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
 by mx.groups.io with SMTP id smtpd.web11.169.1693501926582371979
 for <poky@lists.yoctoproject.org>;
 Thu, 31 Aug 2023 10:12:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=po++6YM3;
 spf=pass (domain: gmail.com, ip: 209.85.167.52, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-4ff9b389677so1938307e87.3
        for <poky@lists.yoctoproject.org>; Thu, 31 Aug 2023 10:12:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693501925; x=1694106725; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tiumfFBEA2JftsiI+uegimODfg3KjCHJ7gX0W8zU5iE=;
        b=po++6YM3Uzf8e90oMKvJYhva/ijp2C/FUXvWrS/r7uk5/b6B3A4ke9KmJOx2QxOeub
         mpne0Jc5KHOxuJ8HOmqHnRqTO7CphvQehIjit/3nvDYk2pLMjdL9FpOdmFzgYn8RC2k6
         iBp3kyJa1dVmYwWCOSRWSh9eSpe/BeY+oxz6nD3Us/3cAuaOe/5D0zOyXaTwvf+VvUJd
         kv2tBGtYeLQRDbK72CaL9clX5KzDOzNmdnpyGq0ZV/Fj1pIChmOMFUbO4hvBmzJXVJTb
         xZjHMz/YW0EIHo7kSvCs2cEYYeYvxZSSiUY3wbfpyh0rJoqawosKG81/M7gr3HvLqwKh
         f78w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693501925; x=1694106725;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tiumfFBEA2JftsiI+uegimODfg3KjCHJ7gX0W8zU5iE=;
        b=lcYG4HDWH7P31hUF1Lc4SGdSb6Fy1tzP6J/r8jlx1wlU+lenUD5j2tUdoR1+KocOdp
         pil+axXjqnYFYnxUnB1Gm0DXTMKsYPb57+zwILPVAZnJU5LaB2w7upyzUIA+M2QhcBFi
         sX8kVo31hFUN60RitSer/2kXgvhbMjeJRFuiupM3uBxkwZxT/fRuVabtJ863KjviAyVC
         HxM6pZrxHpcQ+WSrTmd3VUDSjy0rL3MYCpeCwYlXwFjqIRxLWMng47NXN8g3IB8hjSt8
         8cQfrXPqchHj+4hWXxIU0HQzfY70+thl278UXYAdtlYW6WDeUM1n7r6gBTMSLsfXPI4Y
         Pvtg==
X-Gm-Message-State: AOJu0Yz6E5hmv1SUwwDnu7riK7KKb57xLxDhwC5q5q7TbLsLyUVUd2/n
	na3dvKMDjaY+Q0zFVWLRmn/p67O71X49FatTy5U=
X-Google-Smtp-Source: AGHT+IH3ZWR8cPakIPlriCUbHD79nnW/wKJ+4dcEG3aN33PluNqIWZQ5YtVR+vDo9NWltuSB+7Dl4Un8wqyGdFdaxrk=
X-Received: by 2002:a19:4303:0:b0:4fe:62f:35eb with SMTP id
 q3-20020a194303000000b004fe062f35ebmr3399138lfa.20.1693501924466; Thu, 31 Aug
 2023 10:12:04 -0700 (PDT)
MIME-Version: 1.0
References: <20230830141555.656242-1-alex@linutronix.de> <20230830141555.656242-2-alex@linutronix.de>
 <DB5PR02MB102135CCC4F1841B25E51AF8CEFE5A@DB5PR02MB10213.eurprd02.prod.outlook.com>
In-Reply-To: <DB5PR02MB102135CCC4F1841B25E51AF8CEFE5A@DB5PR02MB10213.eurprd02.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 31 Aug 2023 19:11:52 +0200
Message-ID: <CANNYZj_5aXePxpBMw9evwWV7krAa9cCgwDuyewmd+0U4gaMwKQ@mail.gmail.com>
Subject: Re: [poky] [PATCH 2/2] meta-poky/conf/templates/default/conf-description.txt:
 add a template description
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>, Alexander Kanavin <alex@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 31 Aug 2023 17:12:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13143

On Thu, 31 Aug 2023 at 19:04, Peter Kjellerstedt
<peter.kjellerstedt@axis.com> wrote:
> > +++ b/meta-poky/conf/templates/default/conf-description.txt
> > @@ -0,0 +1 @@
> > +This is the default build configuration for the Poky reference distribution.
> > --
> > 2.30.2
>
> To use the same nomenclature as for the variables, how about calling
> this conf-summary.txt instead? Compare to SUMMARY vs DESCRIPTION.

To match them up we'd also have to rename conf-notes.txt, breaking
compatiblity. And the meanings are not the same as in
summary/description recipes or package metadata.

conf-notes.txt would contain lengthy instructions/notes for how to use
the template and would be shown when you actually set up a build
directory (this is already happening now), conf-description.txt has a
single sentence saying what it is for, and shown before/during
selection of the template.

Alex

