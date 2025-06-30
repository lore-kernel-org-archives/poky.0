Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5836AC8302E
	for <webhook@archiver.kernel.org>; Mon, 30 Jun 2025 10:21:19 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
 by mx.groups.io with SMTP id smtpd.web10.36209.1751278873918161612
 for <poky@lists.yoctoproject.org>;
 Mon, 30 Jun 2025 03:21:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GdzaA2NM;
 spf=pass (domain: gmail.com, ip: 209.85.219.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-6facf4d8ea8so24046266d6.0;
        Mon, 30 Jun 2025 03:21:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751278873; x=1751883673; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uvV2wTjllD7H8DRJELrqoxQvBLHDn2yq0tWZINXh2gc=;
        b=GdzaA2NM2fxVqND4JnjExHV8d1w7edkrc0iCxTbhZ61/FzeXn9UGglGI/fjkVQExnU
         848s0zGofz7NU+LtJ50S75I0KWqYU43LWnnqWB3U//duO8/1JrgQmvT+t/sAsCZqlayo
         k/dpz/V0hvOxCpvWZiQyNZVO2GJo4zFKzeCodklV/HNGLOwKsRNL7xheEyJA9O8yM96W
         iJ1itHTRtQRAYkwAQyLe8J9U6558V0OkxbRLdAw8Nxqph5SkBMPuzGZqJJe6pfbJ20R2
         85NUdZ1o03veaDSgT5VSjCxRio+pwy0RxUqjTgAaCb/+0qgYO0aWZzN4DiiDCaIJkzok
         Yu9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751278873; x=1751883673;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uvV2wTjllD7H8DRJELrqoxQvBLHDn2yq0tWZINXh2gc=;
        b=NDtzSbPUSJIzoegoeaCdRvSC7ozP+oiDV3X0PmUuua2Wsh1e7X+Mrc/GAtfpARooEz
         4zGe7K81fibfhRlYZ1dFqFlG0l731R2cbBSYLwvav9ka9t1xSXLSdqgD8cZbsH3QrUXo
         mL3Lbi0HUA6QgsfHHJFj51xTisb8bm/2qZEKk5mzF2HY2w5S4SNgB5POCZvtUMkdSY4b
         tSkDjVcLqHtDVp39eHAKUInSfayvyDG3nRfrSzG+/hgu27F3E/Z0vcheTVJIeFngJdQm
         43VvWjQaPCNaIZaq91BBh1499GrJdfpioxBRbNsSedv3eV/LoDh492701FQNCALb/x/V
         YV+A==
X-Forwarded-Encrypted: i=1; AJvYcCXx3Iho5ehP9tafXcYImh96SOAE5wBBBvh/qeUcqTUWU3VLgT2zmn+Futn3LPqS90hZqhOd@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yz1MZ/aL6IDulOQvHJYmJ85NAvKg4+5R7tjI8dlojP+zt5o7gog
	axyYMpmqJG9Bgs7gW/3JE4DC4UeyVTc6xOk4qOUG2Jd/0pZP73NhO1dCD7T1nVAZc2JHjr/N/2C
	0knoMr1b2NUP8z/aTQklVYQiPUI+tG1/C8IpG
X-Gm-Gg: ASbGncu8CB9qH3fW/uwP4YnOub/cQXgwki4dfZU2kOVpFc0Nk1QhFlZZjkAfvwKWP2G
	ItvhV011TF6tZcc8qYEsvbFq4qx7Rb5Mi0Rj9u7NZH7j51V3A++oT8gekJQMCUkAzdxtr5kCdTJ
	GKjlcdr7qdnfhkKykGiX60AecHhFETmexgIBDDCojpVE+BgkG4MgxPKj2j1+i2SWJZhasi3HZAe
	Nj3DHO2TZXD13oW
X-Google-Smtp-Source: AGHT+IEprcyh/LbjqP1yo6jG080TLUZ8w6AxcBKpaMXIDJWzMvKFk48BfjqLjkdZkFuMzZ8C0NT8LXJeu65QX2W3syY=
X-Received: by 2002:a05:6214:f2b:b0:6fa:acc1:f077 with SMTP id
 6a1803df08f44-700134a8bb8mr178282166d6.35.1751278872827; Mon, 30 Jun 2025
 03:21:12 -0700 (PDT)
MIME-Version: 1.0
References: <20250623165507.1633860-1-alex.kanavin@gmail.com>
 <6fb30604dfb196088f07c6b59f437eeb0f1df788.camel@linuxfoundation.org>
 <CANNYZj8bcMto=-OHPNEZs_aEM4vr9K1ujVOZ77EDBT-9xC5sRw@mail.gmail.com>
 <749dde0c3ed74dc938085cd15316245eeaa15cc4.camel@linuxfoundation.org>
 <184C05EBFBF7A622.2779@lists.yoctoproject.org> <184C4DB835DB2097.24592@lists.yoctoproject.org>
In-Reply-To: <184C4DB835DB2097.24592@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 30 Jun 2025 12:21:01 +0200
X-Gm-Features: Ac12FXwdf9RYPG8XpXf9gX7qnn_Ww2-m3EDOA7v3zUlUH_RxhIyhZl0zacIxfw8
Message-ID: <CANNYZj9JJXimG23QPDJ7kBZu1Q+ps9iS3dkf-HJqvWK+2q9VoQ@mail.gmail.com>
Subject: Re: [yocto] [poky] [PATCH 1/2] meta-poky/conf/templates/default/bblayers.conf.sample:
 do not assume integrated poky repo
To: yocto@lists.yoctoproject.org, alex.kanavin@gmail.com
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, poky@lists.yoctoproject.org, 
	bitbake-devel <bitbake-devel@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 30 Jun 2025 10:21:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13687

On Wed, 25 Jun 2025 at 15:56, Alexander Kanavin via
lists.yoctoproject.org <alex.kanavin=gmail.com@lists.yoctoproject.org>
wrote:

> Bitbake-setup would write out bblayers.conf with BBLAYERS entry
> ('bitbake-layers add-layer' can't be used at that point yet), and then
> enable fragments via bitbake-config-build (this is already
> implemented). This should result in a functional build directory, with
> a blank (or absent) local.conf.
>
> Then this patch, and the ones adding 'blank' templates become unnecessary.

I've now implemented this and resent the bitbake-setup patches. The
sample 'poky-ng' config that doesn't need templates and specifies
layers directly is here:

https://github.com/kanavin/bitbake-setup-configurations/blob/main/yocto-master.conf.json

Alex

