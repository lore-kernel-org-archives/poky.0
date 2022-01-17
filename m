Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
 by mx.groups.io with SMTP id smtpd.web10.4952.1642459844087790184
 for <poky@lists.yoctoproject.org>;
 Mon, 17 Jan 2022 14:50:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=BAJ+RNUQ;
 spf=pass (domain: gmail.com, ip: 209.85.208.52, mailfrom: festevam@gmail.com)
Received: by mail-ed1-f52.google.com with SMTP id f21so14553959eds.11
        for <poky@lists.yoctoproject.org>; Mon, 17 Jan 2022 14:50:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RAFI8NzjThaNCQi//7EXhwSYH9dp8gyTyt+dq7D3zRU=;
        b=BAJ+RNUQJFHW4NJOd5cruvohadvovjdjl6tVC2zN5U31l0AT+ZzikPiQENH+/wEhJV
         09tLccUAbz1BXEjmTX7GZ7/63Ois4flPfzHfnxLdbqDGdfL5A1LFrUIwEITlkzE61Fh+
         tCjmiBIHSyYw+iYfP87jpBR9lx5hZij+mJnEoETQ3zyw5/PtnLzrlF3Q3Qh8/D0+uTgS
         5JlxEH4byalZsduSz/kRZS8iIEVpddDCJs0daTDnohH76mYZ34NPS4QxMkzBX6WGYjUN
         9DYFL9eDzaqkohw44M7CrSMxGittEX3p78AIJK7KGJ3bY+1PdAQUj/Y2lIJOA6ZPTwkU
         5RFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RAFI8NzjThaNCQi//7EXhwSYH9dp8gyTyt+dq7D3zRU=;
        b=TSSJ8rH5r/eay2Ndftt6J+6kB0WDao3eaiE5PioL2/bFfr2o8Z7mq+UyOZJDrd+mSR
         Hzxm57bajInqIhWn0TIWIVfMtgi/C+/OK6q4bpLOMkXKzLnKDH9hE+j1InWECs9kzvdb
         w+B6BgFFjTcF4eO+I5WvLztb58JIc8P7YFLhpo2dgiEXpZtQi+DRsmGhpjhfDDgT6kHg
         gCQd+ymQ0XJuDbmb0eBnNF/dLUhUdC0DesAirxEMPR1zBzkxZXjvbkgDnQyAX8BcXOCc
         lSli8wS5WJjYMaSiEM242hZgAh7R0Wrh5e0xgt3XZcg6//pZyHtcmrYp4j4fy9M44U9W
         19Gg==
X-Gm-Message-State: AOAM5320z/iEh3wPSb2BUis6Soj0r1TvxltU8hjbZC/Dhj+jp9Y/JFMH
	oujZw7XA0CoTF0kbmtc6jKJPJUkFn2+9iuk72+4=
X-Google-Smtp-Source: ABdhPJziF4UHVY1Lpaman+eR5Kv4dpwkKEioiTgKKYzpxNhbiL/22QZhEXvsY1OW+5u00uEXaUbVj27L++0kVTm4GuE=
X-Received: by 2002:a17:907:60d2:: with SMTP id hv18mr18075333ejc.214.1642459842450;
 Mon, 17 Jan 2022 14:50:42 -0800 (PST)
MIME-Version: 1.0
References: <CAOMZO5AyegXN6him+WVB=9g7RBHsB__5w26pYUg3_Xxy9dK4bw@mail.gmail.com>
 <CAOSpxdbUot8-mASW+_bQwZbHgWQnnP0iFH11UXRjcszqxzEVww@mail.gmail.com>
In-Reply-To: <CAOSpxdbUot8-mASW+_bQwZbHgWQnnP0iFH11UXRjcszqxzEVww@mail.gmail.com>
From: "Fabio Estevam" <festevam@gmail.com>
Date: Mon, 17 Jan 2022 19:50:31 -0300
Message-ID: <CAOMZO5AYSZ1XcJRp1E-D_TPai4tGj1biKBM=TS4CJqxvFsC5RA@mail.gmail.com>
Subject: Re: [poky] poky: request to backport ae219e1f74600 to dunfell
To: Steve Sakoman <steve@sakoman.com>
Cc: poky@lists.yoctoproject.org, Marek Vasut <marex@denx.de>, alex.kanavin@gmail.com, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

Hi Steve,

On Mon, Jan 17, 2022 at 7:25 PM Steve Sakoman <steve@sakoman.com> wrote:

> I'm a bit confused, since this patch has already been backported!
>
> https://git.openembedded.org/bitbake/commit/?h=1.46&id=4b66d498eab22eca29c9e3a7fdfa5c6e54055e78
>
> It should be in 3.1.12 and 3.1.13

You are right. Just checked out 3.1.13 and the problem is gone.

Sorry for the noise!

Thanks a lot
