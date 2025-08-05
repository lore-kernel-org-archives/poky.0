Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75A22C87FCB
	for <webhook@archiver.kernel.org>; Tue,  5 Aug 2025 08:29:24 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
 by mx.groups.io with SMTP id smtpd.web11.16913.1754382558313999858
 for <poky@lists.yoctoproject.org>;
 Tue, 05 Aug 2025 01:29:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=e/UgkLBy;
 spf=pass (domain: gmail.com, ip: 209.85.219.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-70744e8ed6eso42414966d6.2
        for <poky@lists.yoctoproject.org>; Tue, 05 Aug 2025 01:29:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754382557; x=1754987357; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MonFt1aM0X81yqOufX9gk2L6Up5z1RjKUadDr8fK2tk=;
        b=e/UgkLByKYjNN6AluQru4x5UzTTOOQkBkxuPkwHWUww45ghZQKE+zEceNxQkwOPxlT
         pgWXvku072jrwGMO5fxhal7Eu6lsWPqqHZjM4ayTNL9oOmox8R2kn/5pbDM0oTpbmRdw
         /cAdkUmr8ujiLSPOl1uRXt4D/rXThp5kOywFWN5Wl23WUzopMjCwBWAuVByMJbckDQyV
         OLi/YA45wVkDf88+n7qKmplEa+ealJkgzClK4MruXmZkUaZ2s0mKCJWgjZKaIn92DPKS
         ioz4GBElM3Qjg9U4CbyG3ncQpevcoBJ62QxjSY8BYCqzKJxyBdwa3s5d2X37tTOEVKOE
         EQ1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754382557; x=1754987357;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MonFt1aM0X81yqOufX9gk2L6Up5z1RjKUadDr8fK2tk=;
        b=nCg+eSsCVWCWleSn+Xg4I0Qr57Ak23yg+ekOROlpolc3YUhR3xfVJKAbilf6YIsYdM
         8fCmf99jK3fAddKVaPT/pG1yZVdSpjcSH8YRO4KdBBiawTOVVTG5XjQzYS1qG9bW16Nf
         VTaTc3+/Hd+h165acjrzZGo7PeHcVPwwCbsvYr4XNoKKP4xKplXnqpmdpVFETmATx6zT
         sJNLvPqMUsWJ+VdRBP0xNuKLpw/NysjQ++vQ2Bs8lzhKrC9RZfRXcIUH5o9WOYFPWyPF
         YObfeeC+mo9pz8DFnM1gX8d01ffNw12tmtQibzFwVOWBn2+mgm2CCerTtXZCWeB+OTaB
         8pBw==
X-Gm-Message-State: AOJu0YzJEHtDEk+hjLqNPLu5w6H6vsMEGAUhpWk7p5jL94sVqmUns5jW
	BvQxWapNmnNzubsfI4g0E7s2BmWXdckHl5Teaj3Gm8I6zjpxfYIJKDtSuA4Xj5Xpi0PXrA6zgUG
	2P/mn9f/pM0BmAmtYwIudmCe8U+9R7CA=
X-Gm-Gg: ASbGncsYF9WBs5oYVIPvr0+6VT/B5TbS5GP9ACDbIbBGgAOMx8urx1/xqDAloBy/QjO
	9XuEdXYKOv7vlRJVo93QWnIc5zUwVihPxChtMUsjkBzFfaj7C5XYySN3zVkPtZQtmI7utGowztP
	ESZRtgGO+Pge1cShyVqrUXlpJsQN5oP+yGtA1P89bsN/kVkDkBjqRMg9RECCIpUnwf05ZlrAwu6
	nS0ebt2lo+HC8BNETyET+/9VIPf+HFttjx14EKkew==
X-Google-Smtp-Source: AGHT+IFoTDnIajaeKsvqUeXrw84qlfjy5FGJZA1mql7xRQWa5rWMu/mNoHyD7gAjf6VDr1LoHmPeZbwNx5Njjhwd0bU=
X-Received: by 2002:a05:6214:21a8:b0:707:5908:f7d2 with SMTP id
 6a1803df08f44-7093630c7camr172231656d6.39.1754382556397; Tue, 05 Aug 2025
 01:29:16 -0700 (PDT)
MIME-Version: 1.0
References: <2n8W.1754202497905279149.soMo@lists.yoctoproject.org>
 <CANNYZj9gh1ucaFOtcCPScawXGT25O4MHfcAiJ=EYf-cUhXcX-Q@mail.gmail.com> <CAMHeXxN_eGUQpPTjKw1pZbzPX6s-BV-hWvGy97z-MRn42bFMFw@mail.gmail.com>
In-Reply-To: <CAMHeXxN_eGUQpPTjKw1pZbzPX6s-BV-hWvGy97z-MRn42bFMFw@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 5 Aug 2025 10:29:05 +0200
X-Gm-Features: Ac12FXySTM0ogS5PZ9PZIMBGGK1VbCMwDbg6MxMH77ZtbG9sSuC1lWLJ8EucuSk
Message-ID: <CANNYZj-EcsW5Ks9gDKjGCZBh1Kj8zMDAQdn_Aq-WZB0h-2R8Xg@mail.gmail.com>
Subject: Re: [poky] How to override mesa VULKAN_DRIVERS and GALLIUMDRIVERS variables?
To: trent.piepho@igorinstitute.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 05 Aug 2025 08:29:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13708

On Mon, 4 Aug 2025 at 19:19, Trent Piepho via lists.yoctoproject.org
<trent.piepho=igorinstitute.com@lists.yoctoproject.org> wrote:
> Or are you saying that the mesa recipe should be modified to work
> entirely this way: allowing *all* drivers to be configured via
> PACKAGECONFIG?  Ditto for the GALLIUMDRIVERS configuration, which has
> the same issue.
...
> But this unnecessarily duplicates internal code from the recipe that
> will need to be kept in sync.  IMHO, being able to select drivers via
> package config would be a better design.

It would help to step back for a bit and see what are the values for
GALLIUMDRIVERS and VULKAN_DRIVERS that you're trying to arrive at,
what version of yocto you are using, and what is your target machine.
Then we can take oe-core master and see if that still has the same
issue, and how it can be addressed.

A better mailing list for this discussion is openembedded-core, as
poky is for meta-poky/ and meta-yocto-bsp.

Alex

