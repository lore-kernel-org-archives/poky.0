Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6AC5D12699
	for <webhook@archiver.kernel.org>; Tue,  5 Nov 2024 12:06:48 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web10.16493.1730808398922980571
 for <poky@lists.yoctoproject.org>;
 Tue, 05 Nov 2024 04:06:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ckZ163pG;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2fb443746b8so46984671fa.0
        for <poky@lists.yoctoproject.org>; Tue, 05 Nov 2024 04:06:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730808397; x=1731413197; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6g2GmfzDb4SCbTydydmh1bPKzjzGf65lvjJjP90OPZ0=;
        b=ckZ163pGeuL3o34JhmUri9/USoU5tPCNyIWEAwFR0mVd+eM4JARrPN8wgsF/ibL6Aw
         k7O8CdA5zTXB64tC21kv5tqglRbGhX8NLEnXKtE5BNaxzEXe8MXsVP9LVMvOyWmMpY9a
         es+HXoLrBxLiO0+uYfK7xwk033sm+aGdanhS8+vymp/Z3o4VIV+NlCDZnxL5ZV2Co6rB
         xbTh1HhmQB01gCQiDpJTW7w9hfuYuE6j81fOZ3x9NHFAmRPKsYnPdEDMpkN+41GtAE3/
         8QS09lMJ1hRgldPKhD+TSV1HA1LBCeJ+FeZrdSaBZS+XjndxhJQUIFSW4TKAHBSdZaoO
         vBqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730808397; x=1731413197;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6g2GmfzDb4SCbTydydmh1bPKzjzGf65lvjJjP90OPZ0=;
        b=vcEvfwLeIYLyvahCDq3JhPM5t+12eMrQVaJakQAT3tfYYd9zwVI67qjpEyAb0aUdGd
         k3hnjiNxX064tob6XC3LCLqaEw51itB/Q2ufuI6jovJ3CMbHTQ1CV41GbkIzIOG3EyFU
         w6JpWWrEpCygmQEcIqIUDuogKcLDnsUmZ4RXZC+yhy8kqOESRWVw3hPkk7/ZZIKZEttN
         R2hgKgbMp9ItnUfxtoWA4WUjh+JwDJiMcBhUg6r/DUUAXRc67Yl/8eSiwzmbfFNB/yu1
         ccuXtow9OtEL2ogvoTXKT3CmLlVKFLY5YlyCftHYyIXWCF7IownbBSTS77hqIDuYdPKG
         cP2g==
X-Gm-Message-State: AOJu0YyvEFW7sfSSzLvFZJXUISjPhTJWwibeogkl/ugw+zRJTFTGtXA/
	IJr0e9kqbf+pblFi+kQ6tvkCwgblr4Dj+1mGgU/NveyrgPO6/K/2izb3cihcjvaDM+CzXhw+CWQ
	G0fGbW/pzUKdmOIB+fZ5Af/5QNzw=
X-Google-Smtp-Source: AGHT+IE8UTGDTIaCJCNKM1W3HqNkWXYl05RkEjBXk4TgSHrHn/4DfCSkf13oFOAHYNBuiHQYWGcCSMFcl1Fc0BqbZrM=
X-Received: by 2002:a2e:80a:0:b0:2fb:5ac6:90f0 with SMTP id
 38308e7fff4ca-2fcbe09ad70mr135671791fa.34.1730808396752; Tue, 05 Nov 2024
 04:06:36 -0800 (PST)
MIME-Version: 1.0
References: <9d150f03-34b6-4a6e-93d9-2530f12ba3e4@gmx.li> <CANNYZj_i=Wg_S2dXNRMUVZ0v0AzkWRwrNASBSxHMoe9SqDv4zQ@mail.gmail.com>
 <47da8641-7a74-4d64-afc4-84c81ba713b0@gmx.li>
In-Reply-To: <47da8641-7a74-4d64-afc4-84c81ba713b0@gmx.li>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 5 Nov 2024 13:06:25 +0100
Message-ID: <CANNYZj8RpypOLJKRMbpL1ZESu2urWHFmr2yhL2pXXCwKiDWwgQ@mail.gmail.com>
Subject: Re: [poky] One recipe for fetch a bigger repo, multiple recipes to
 build parts of it
To: star@gmx.li
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 05 Nov 2024 12:06:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13476

On Tue, 5 Nov 2024 at 13:01, Steve via lists.yoctoproject.org
<star=gmx.li@lists.yoctoproject.org> wrote:
> well download may indeed happened just once, but isn't in each recipe
> the git folder with it's complete content?
> Maybe I described it misleading:
> So it is not about download, but about the amount of storage needed for
> each recipe. Assuming 10 recipes using same main repo, in each of the
> ../build/tmp/<recipe-name>/<tag>+gitAUTOINC+<git-hash>/git
> I see the full checked out repo.

If you want to use individual submodules, then the best would be
probably to have an external script that determines SRCREV for each of
them from what is recorded in the parent repo, and writes that into
recipes.

Alex

