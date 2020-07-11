Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.6005.1594458147111146985
 for <poky@lists.yoctoproject.org>;
 Sat, 11 Jul 2020 02:02:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@srin-me.20150623.gappssmtp.com header.s=20150623 header.b=qUUP0X96;
 spf=none, err=SPF record not found (domain: srin.me, ip: 140.211.169.56, mailfrom: s@srin.me)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92760E01E4C; Sat, 11 Jul 2020 02:02:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.218.41 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC0E3E01E07
	for <poky@yoctoproject.org>; Sat, 11 Jul 2020 02:02:24 -0700 (PDT)
Received: by mail-ej1-f41.google.com with SMTP id w16so8556493ejj.5
        for <poky@yoctoproject.org>; Sat, 11 Jul 2020 02:02:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=srin-me.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=zCLB0FgHpPoTvdVijrFbnm27R4TId5bO0YJjgFk07Lw=;
        b=qUUP0X96B0nnB+o1PknzN45mz1EZtKwF/6n5CKojRazlk22YO1HdZCgHiZCzqjElU5
         5HQaQ0Cvvg9+UbzbSO0Xqdg6T2uj9pwYlEuyMLGwLgUtQb7GgR4ErSWQmn4CvjU4evCH
         AmI8wQLHtOmqb3rlV1lAvFT55TGV3dI9T77ovOnk+82wr2tWpVbyJt6Hciyodlfhy03R
         1xHMiR/Sn1ZsQGsKOsDQQOHtw2+0guhRSR/GzscazQJp9xZ8R24A8m32Raj1WPnPtt6B
         1LlWd/+YonAAy7VfiGtGCdhrOEWKLxMa+LI1pRsspLV6RIcwP8kWkTLhYmyuzB2VfF9X
         l6MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=zCLB0FgHpPoTvdVijrFbnm27R4TId5bO0YJjgFk07Lw=;
        b=Rnt05RJDq/y7jMzcTNbTxTP4+NA4ICseQ99HdrID2PB5aA1clgMo9aRH1WRp6V1wty
         rKuJ+06HnII7wPEyxaApvfMIqmw9bHxA1RCr59kv55h4+HzJiBgx3weNmjwE/vJ8i1gR
         AoXPU6vWry2LADmIjb+tFGeKPhLRF/8E8c4SvG/oIs8bg1QI2pUeWQfFZQESiwbEykrH
         Su7pBd8+f9Muaujzxqj3uXzJ9/P6AZUb7NOuWG+9RR7gsqC2/2cg+ZudPkGxVlwHwrmj
         rxk7odSct8C7GMR5RUP59Ep8lPshwitEefnxrHaL3r2LIRRTDQbI79wppQCwD7PK8Wes
         X32A==
X-Gm-Message-State: AOAM533Mbx5WaCJBR2KFBhUVBjju5puUyUzHdN9nqlerBSWUs5Xev4NP
	BnTiOFvqzoAlRVtONiZ2LYEwi9U4fZ5iJ6XxHr3MFepHd4o=
X-Google-Smtp-Source: ABdhPJxgm9/Fyc8V31GBrAYE3ETqCeDPd+RTaUtStJxtYPtgeH8GB/NAnqDVS/+HR8PwA4wpg8l6LQmJfGZESFHmGGE=
X-Received: by 2002:a17:906:da19:: with SMTP id fi25mr64135768ejb.369.1594458143631;
 Sat, 11 Jul 2020 02:02:23 -0700 (PDT)
MIME-Version: 1.0
From: "R Srinivasan" <s@srin.me>
Date: Sat, 11 Jul 2020 05:02:12 -0400
Message-ID: <CAGNn0hYDMk+pSXarT1XbUOPmhyajUvcwTt7FmD78BEmeqZySzg@mail.gmail.com>
Subject: yocto under WSL
To: poky@yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000042c1c505aa26b7ce"

--00000000000042c1c505aa26b7ce
Content-Type: text/plain; charset="UTF-8"

I got myself a new laptop. Trying to decide whether to setup a VM for yocto
development.

Will the above work?

thanks, srini

--00000000000042c1c505aa26b7ce
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I got myself a=C2=A0new laptop. Trying to decide whet=
her to setup=C2=A0a VM for yocto development.</div><div><br></div>Will the =
above work?<div><br></div><div>thanks, srini</div></div>

--00000000000042c1c505aa26b7ce--
