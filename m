Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.693.1616881634892380866
 for <poky@lists.yoctoproject.org>;
 Sat, 27 Mar 2021 14:47:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@srin-me.20150623.gappssmtp.com header.s=20150623 header.b=Zck+42fJ;
 spf=none, err=SPF record not found (domain: srin.me, ip: 198.145.29.25, mailfrom: s@srin.me)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 58A8938C07C9
	for <poky@yoctoproject.org>; Sat, 27 Mar 2021 21:47:11 +0000 (UTC)
Received: by mail-ej1-f50.google.com with SMTP id w3so13673552ejc.4
        for <poky@yoctoproject.org>; Sat, 27 Mar 2021 14:47:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=srin-me.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=WckGKgT+b9AQS+ZWsVgfUNIv7h+Lwix4h39qiR9ICrU=;
        b=Zck+42fJ0Q+A2DgbRnXAtDaDdaZn7tlRqV5k41ETsWqu6do0jbL/09GROOLEy8e/HC
         bJQppsOlyw3p2u4k599Y6hTdiMEwl9d7pTC5Cm0kvBicjBNBGO0zuMZ5h0/eJLioTJKd
         KcvifPg8uvB6VZzFYgqd++EgGXmZYfPFX23NncVaCoZ7DVABNEISAEw+u5l8zclfsGq4
         w2xlXEWBaiki6TXnqgbNaz1fH9pdHB9HpyDohOY3Y1vMh4MPEDVt7DBDo7J+G8fAu+Aq
         SDabJjrJgsNVhUn7tBmtDzyZcnnIHeuB9a9Y254MUiZv7n4DVH+Aavkm1SqgUIUsPBIm
         quTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=WckGKgT+b9AQS+ZWsVgfUNIv7h+Lwix4h39qiR9ICrU=;
        b=asTu5j4JkXDu65tmGf2jvh2KvgMtFCjMWFwZ/sr/FcRzBT644dJ+VcioMPUrl75sDu
         WRAQmagzXaKRs/E6k/l7WX2gxMCBDVvFtjtkquWp45w7fHzH0e85pQH4iXv3kP0uvaEK
         Ebxvpjm8JYJ3kO8zeS0snuIjRi3y96daoJUws0cetQOm1Jo7YFBM0D2hDgviK+gg9Z5Z
         L9/k3wDpmFnO7gSqZ7eI91Df9YPM1oy1Sd6SRsVlVbD9LU7Ql5WyMvX5nRby6A0eSILA
         oodpIqXKwDALULWivoza8WKGukVA4Fls9PbpbaT71Bd7P0CO39LAEez/W744il2VT/oE
         DDZA==
X-Gm-Message-State: AOAM530oIo2DDqIJnoZ4x1pS1y0CAACUB/4D78fyX5D8YtdMujXjrOTh
	/ppd1P22VULni6kPp3pIUJR6IuQoBk7ul93Xwjc0X1Ql/e0=
X-Google-Smtp-Source: ABdhPJxTotbJX0mnIbtLyAq2WdZp2GVgH4gX/DTOuOEtcjCQ7KxBknLJ4tJUtmUzmLkvqBlruEoDvZQJtd0ZYrwXpBI=
X-Received: by 2002:a17:906:1a44:: with SMTP id j4mr22164608ejf.401.1616881629674;
 Sat, 27 Mar 2021 14:47:09 -0700 (PDT)
MIME-Version: 1.0
From: "R Srinivasan" <s@srin.me>
Date: Sat, 27 Mar 2021 17:46:59 -0400
Message-ID: <CAGNn0ha9Kvpt-Nw8USXtossi_mhLxHOC7k1OC=5jp09TiJeg-w@mail.gmail.com>
Subject: Qt version upgrade
To: poky@yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000002e500405be8b97a6"

--0000000000002e500405be8b97a6
Content-Type: text/plain; charset="UTF-8"

We are using "warrior" qt 5.12.6 am looking to upgrade to 5.15.2 or later.

Not sure where to start? Pointers requested.

Thanks, srini

--0000000000002e500405be8b97a6
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><div>We are using &quot;warrior&quot; qt 5.12.6 am looking to upgrade to 5.15.2 or later.</div><div><br></div><div>Not sure where to start? Pointers requested.</div><div><br></div><div>Thanks, srini<br></div></div>

--0000000000002e500405be8b97a6--
