Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.47203.1591043693441551315
 for <poky@lists.yoctoproject.org>;
 Mon, 01 Jun 2020 13:34:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@srin-me.20150623.gappssmtp.com header.s=20150623 header.b=yK91Qg5U;
 spf=none, err=SPF record not found (domain: srin.me, ip: 140.211.169.56, mailfrom: s@srin.me)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2B69E01C2C; Mon,  1 Jun 2020 13:34:52 -0700 (PDT)
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
	*      [209.85.208.47 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D418E01B60
	for <poky@yoctoproject.org>; Mon,  1 Jun 2020 13:34:51 -0700 (PDT)
Received: by mail-ed1-f47.google.com with SMTP id w7so4639723edt.1
        for <poky@yoctoproject.org>; Mon, 01 Jun 2020 13:34:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=srin-me.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=DPzC7cu+GiPFpicjX9hPDGFiiKOvPh72yU3Iox/ZKb0=;
        b=yK91Qg5UABj1j+KhXhDKQVzg1pmaquTCNyCYIYesjbWWUn20FsTKFRN+GuJj94Kjtg
         Nd/1CCOKqzxL8Cc1y4F9oL8lxPdnN5ZAdsrOeUDwAy6dyFPOfuUyS0Gb1yXXTh3N2DGW
         5w23a63oFY505sa6+1DprzTPCCPlBp+M8dp0L7UCdSkioHnbhLuOCkgIF0RPgapbM4s/
         h85uKolW2X7UYPXEHGKE67f/EPKwRetyuTIzln/a6Tnfr7Jc9395AG0rKn8rmULIF+vm
         PGxrN7QeTi2eUbXeHSUSg569kz1+Y9qewIa+20qWAQZw6HbqkdySqo2tN9Jwm+j4Qtcp
         8oig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=DPzC7cu+GiPFpicjX9hPDGFiiKOvPh72yU3Iox/ZKb0=;
        b=LH0CTAbdRqSD8AIEtFikvfjtvRffQY23DrbAiNnn41mtkr20S5/vRtIqFogFLIjGJV
         PqBelOAlU16zHvIpMiKrDd4XMNzbmwyAfGPdktxFyyQYlU7vpWGa5tG+JDVkarVBqpmN
         qg/3YvCvGJoaUO4eFXqRT/2DIridwYe52iQSyEn3xVUVWerKudSc3s0Pw/PecSGztMtC
         2rIh5wKLjoSR4uo5/GfIBSrlWqZbNUuwJ63IENCm5DfSfN1pUNpU1n+rXCyskyf8Rirj
         nbbPthQZh7hIZesVXhdYNCipOk+ag3xw9l7jqgDiRZVehZr+nm99A1ALp38GMYNjDEfM
         aTqw==
X-Gm-Message-State: AOAM532ZVa6ILmCEQ2P2gRBJT+kmONqkOhD7YrXyYCM22OYrODQS8pYU
	N0Ewr1xTwWDdoYLfVd3RVo42UOADdWvQIwK+5WEvflr5BNcdTw==
X-Google-Smtp-Source: ABdhPJwSqc1JT2X1Qcm6jRKl6kwHGT0WHcy/Cy2GhhFFmjFQ/1xLIVfurs+5HItx6dNIQ8f9Y4Dk2O/5wXkh8fF/Tug=
X-Received: by 2002:a50:de03:: with SMTP id z3mr22664545edk.50.1591043690474;
 Mon, 01 Jun 2020 13:34:50 -0700 (PDT)
MIME-Version: 1.0
From: "R Srinivasan" <s@srin.me>
Date: Mon, 1 Jun 2020 16:34:36 -0400
Message-ID: <CAGNn0hbkG8tp004TcA2V2Tu17dumC4-yQ9SbXiVVgyKWOmKNFw@mail.gmail.com>
Subject: Announcing repo
To: poky@yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000fe42de05a70bb9b7"

--000000000000fe42de05a70bb9b7
Content-Type: text/plain; charset="UTF-8"

all

Announcing the tool grepo - a repository group tool. This grew out of my
use of the "repo" tool in my yocto based effort. My needs were slightly
different and hence wrote a tool borrowing ideas from the other.

I hope you find it useful. Look forward to continued development -
particularly adding support for non git repositories.

https://github.com/RajaSrinivasan/assignments/blob/master/repo.pdf

Best, srini

--000000000000fe42de05a70bb9b7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">all<div><br></div><div>Announcing the too=
l grepo - a repository group tool. This grew out of my use of the &quot;rep=
o&quot; tool in my yocto based effort. My needs were slightly different and=
 hence wrote a tool borrowing ideas from the other.=C2=A0</div><div><br></d=
iv><div>I hope you find it useful. Look forward to continued development - =
particularly adding support for non git repositories.</div><div><br></div><=
div><a href=3D"https://github.com/RajaSrinivasan/assignments/blob/master/re=
po.pdf">https://github.com/RajaSrinivasan/assignments/blob/master/repo.pdf<=
/a><br></div><div><br></div><div>Best, srini</div><div><br></div></div></di=
v>

--000000000000fe42de05a70bb9b7--
