Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
 by mx.groups.io with SMTP id smtpd.web10.1231.1647548564073306602
 for <poky@lists.yoctoproject.org>;
 Thu, 17 Mar 2022 13:22:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=JTseMXBI;
 spf=pass (domain: gmail.com, ip: 209.85.217.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f48.google.com with SMTP id i63so2212906vsi.5
        for <poky@lists.yoctoproject.org>; Thu, 17 Mar 2022 13:22:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=J1uDzTyB7zkap9busWunBMLudur5u9/vYOyOyl+ig6Q=;
        b=JTseMXBIAAGOZ3NFdvFxJul0f25+sZwKL2fVikUv91rQwtXugxZSzYJh/azbCmxMa3
         uecCWp4IZJ5sbRDkQewpD4cDJj1xMZ+iChzLR5MxTYWRJ9pHxm7IFZalLAlxEsC6qJ2H
         DjtYs4KdwUAXCjfSvJRh1MhVeNiAMGwLCDT0Sy9zh9ez8+NNAXHa3lxEsX5kkU9mLc7G
         ykhS7MJoSz2WLt6kyi0CODzvDljxs8r32kXcRFrl2O6k/89xmN8tzVq5aZVjVqs6gdZK
         T9ADKRZEVFUjOiKbZrfGEdVC+bfpBAaiO3zRKxymAjDZD44n781sicxtpq+j6hbM92Zl
         jp0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=J1uDzTyB7zkap9busWunBMLudur5u9/vYOyOyl+ig6Q=;
        b=F6ZHBtWpqDYdOofr+qgJ7Cy2PlmjyfF/Wcwsemqd3bwhGMzVUFrZz0l8bTStJPqpHz
         ex2oWuJldi+shvMTUXeD3hGItKitYBkxK7fRJLj9en7OxI02OYsLhJC/UWNRvupjtKx/
         yt4qAn/Q/aEPczwSOmKTyyOTlMK75Rz+i492Cj4MBv7PsTxkpIGsJ2D8vGBQXui3DftX
         OcFpw2YD92GlNbCMXuPp7ZM+ESlWqP6vHAxRvqqzidtfGnJOy+J/6yF6fuEkcQ3uJvLf
         Ijnf2Oox1yVQ21B/y3ES8D+MF8BYITSX5y9HR9RnRdGzZLVYDpr36GNUu5eqUpv08bYf
         7n+g==
X-Gm-Message-State: AOAM5323VDKeagRVkNe3rwdj5YVeII/FfS9Z1eJGs3IczZ6oqmH1IZLK
	GTJZ/Kjjriu9RE4V/7vtd+Gkh6MgEp+HFWfcclo=
X-Google-Smtp-Source: ABdhPJwUnJM2EjospIZJQ9FaoD6XiNH/d5xLQ/bdxXsKsR/VLDK3s1aH3olCywrcBL1WdPtFGMokmFd32rov9v3wO40=
X-Received: by 2002:a05:6102:5cc:b0:320:9bd2:3823 with SMTP id
 v12-20020a05610205cc00b003209bd23823mr2591533vsf.81.1647548563182; Thu, 17
 Mar 2022 13:22:43 -0700 (PDT)
MIME-Version: 1.0
References: <29294.1624221743778282039@lists.yoctoproject.org> <16036.1647539972048006331@lists.yoctoproject.org>
In-Reply-To: <16036.1647539972048006331@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Thu, 17 Mar 2022 21:22:31 +0100
Message-ID: <CANNYZj9u=ELdqRekS-N-PY2z5nngV14iBSC77SKCUE7jZqUDJg@mail.gmail.com>
Subject: Re: [poky] [PULL][PATCH 0/2] Implement debian packages GPG signing
To: Ferry Toth <fntoth@gmail.com>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

You need to rebase any patches you have to master and send them to the
oe-core list, otherwise nothing is going to happen.

Alex

On Thu, 17 Mar 2022 at 18:59, Ferry Toth <fntoth@gmail.com> wrote:
>
> It seems nobody is interested in using apt for package management? Strange.
>
> Let me explain: since gatesgart apt requires a repository to be signed. The above linked patches do exactly that. The can still be applied to hardknott and honister. To me seems to be a good addition that brings deb to the same level as rpm and ipk.
>
> On the signing-keys issue, it may be unrelated. Let me self answer this:
>
> signing-keys-dev depends on signing-keys which doesn't exist. It is not built because it is empty.
>
> This is resolved by adding to the recipe:
>
> ALLOW_EMPTY_${PN} = "1"
>
>
> 
>
