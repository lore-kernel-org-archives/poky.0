Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.1315.1598305828352346016
 for <poky@lists.yoctoproject.org>;
 Mon, 24 Aug 2020 14:50:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@srin-me.20150623.gappssmtp.com header.s=20150623 header.b=FnbH/9VC;
 spf=none, err=SPF record not found (domain: srin.me, ip: 140.211.169.56, mailfrom: s@srin.me)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A56D4E02092; Mon, 24 Aug 2020 14:50:27 -0700 (PDT)
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
	*      [209.85.208.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F147E0204B
	for <poky@yoctoproject.org>; Mon, 24 Aug 2020 14:50:26 -0700 (PDT)
Received: by mail-ed1-f44.google.com with SMTP id ba10so9447483edb.3
        for <poky@yoctoproject.org>; Mon, 24 Aug 2020 14:50:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=srin-me.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=+mQHSDdtOGVAhF361QOzWGSEA6pH0IxjXnUZvN00mVs=;
        b=FnbH/9VCVNdzHeEvrzKDs6FXh+eavsI3Qm1qT6csj1DhzLxuZLxtTddLn1F47iRlCf
         atPQrkSUYUAFr17PfMu1FatHLvUug94Ydn2t49B18pSwYxSstBzydYkB8MfoTP02tjPN
         nFsDNh47mHgNEIhCeNk8C3lEEAW25idyvbWRzl8/PQSPMNrD1yH2UwP+5N8pAU/tnDvw
         W7/WJ7HTvQVOkBznzPUc88dZxPFcWuFCyhycQEz3tQrW0RvCzebM3Lf4v5NqmNW2sh4n
         ndJw9kXXgASWd9mbb/g9XGimGHwuH37M+99WUWcFAYi6vERltNDQ1qbe/yd57BHR4lAk
         aLVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=+mQHSDdtOGVAhF361QOzWGSEA6pH0IxjXnUZvN00mVs=;
        b=F4HV6/IYCUmwcmNq+5tOOYH9jqKFUkhTPLVi4evc8XVBJ9cNNRxI4sxONS6q4OnXhu
         RHZdnscamZuMZQmJHto6iHj6KN7WL6QiY6FwMKTFzxNmYat/naJHWtKDxTxYl0x5bTSZ
         iW4RWfDK+3z0DSW/D+zRvSvb65fUopabFSvfZNfsydLPQ9e4WWYVgECTL2iiWeBe0IW9
         YBDxc6lXT3w1HMiENP93K4DmuP1yyZAHyWVHoHxz+8AqyFN/OiHjxX+5zQLQojluUiBW
         YOa2aLd6y06H20lgfmBMGmhlDHsy7stTNSweEwNVo7LPgoWfqvI9OIxklGCMGgKudjsy
         5qUA==
X-Gm-Message-State: AOAM533OgBVxz7WKKht7rWkxsRJiskpIJ673na/zivNvHGITe9ipZU/o
	JKljxdihJ2WEO6TobOF/7IcrmyWLw9po9b6gj2p6vpUv34o=
X-Google-Smtp-Source: ABdhPJyIlS6JoSEGHAkqn4dd2H0TAiABDCX7rVNUzHtyYrFxC3U0NKqYXV/GQ6SjrxLpd218yoJR51muZimwWbQeAdA=
X-Received: by 2002:a50:c8ca:: with SMTP id k10mr7117207edh.255.1598305825113;
 Mon, 24 Aug 2020 14:50:25 -0700 (PDT)
MIME-Version: 1.0
From: "R Srinivasan" <s@srin.me>
Date: Mon, 24 Aug 2020 17:50:15 -0400
Message-ID: <CAGNn0haYVPiMw2pv=sjJZknP_0b6twV5iQy+eso4rEMYu+pS5w@mail.gmail.com>
Subject: Self hosting yocto
To: poky@yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f2e26d05ada6922e"

--000000000000f2e26d05ada6922e
Content-Type: text/plain; charset="UTF-8"

I have a strange situation (I think).

I have purchased a SOC board. The goal is to run a custom system built with
yocto eventually when it ships.

For starters, it runs Ubuntu. Question is if I am able to do a yocto build
on it, can I just boot off the image generated? Should I partition the SSD
in any special way? I do have the option of USB sticks - so will a bootable
USB stick be a better option?

Thanks for your pointers/help.

Srini

--000000000000f2e26d05ada6922e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I have a strange situation (I think).</div><div><br><=
/div><div>I have purchased a SOC board. The goal is to run a custom system =
built with yocto eventually when it ships.</div><div><br></div><div>For sta=
rters, it runs Ubuntu. Question is if I am able to do a yocto build on it, =
can I just boot off the image generated? Should I partition the SSD in any =
special way? I do have the option of USB sticks - so will a bootable USB st=
ick be a better option? <br></div><div><br></div><div>Thanks for your point=
ers/help.</div><div><br></div><div>Srini<br></div></div>

--000000000000f2e26d05ada6922e--
