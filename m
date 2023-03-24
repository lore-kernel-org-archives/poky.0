Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web10.98956.1679657520698197863
 for <poky@lists.yoctoproject.org>;
 Fri, 24 Mar 2023 04:32:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=m7uADefB;
 spf=pass (domain: gmail.com, ip: 209.85.167.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f53.google.com with SMTP id y15so1824903lfa.7
        for <poky@lists.yoctoproject.org>; Fri, 24 Mar 2023 04:32:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679657519;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kwQPoVToVcGm5L24lfjDbrfRe3DyL0ISucIlsWiadOI=;
        b=m7uADefB/qrIM/x0a77WITDhK8jSJGR7pFnlzy1H3FKKKIDOQ0WnmxJdgE4cPkt4B9
         KUbJvQgsyx2+ExtRlMLm8oRt0TM6m5nkd3M2IC26U/RTK+Z3zcqUYllROYSQtGSfa8cI
         4OvsVj8QP1Hz5cL24VEHHAwTPAlmLapXcRGBzH0yKEMXJhtnDIpNhH3GB3vsa+2JPcDN
         M5o9WPy2usco+UIk8yuU7xZDmIa+Et/0Tcb91IkaYQE1xzjiFTdr581la6H5rw0sVs+E
         ABoIDZdwrj1SuckkWNEhjKep8zHymr1pMb/UvtqNSrrFm/ughrwoZlnrBmVLLJNqdjsc
         KwDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679657519;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kwQPoVToVcGm5L24lfjDbrfRe3DyL0ISucIlsWiadOI=;
        b=hIN7347ZpTXHdzWkpAMgu2H0TY+RdXWoy/jMMwGnunHZ2AqL0VXFrflHFTsqI2Wegr
         pLElcQq7ln7en2z/d3QouCzScf85oDDB6p8ggN8CoV/gth/4PeuAoq1Wc46bDtuzXx2p
         T87rJ0figxGWk4Qr9TgiXRvW4Z1aiWKQSuglbWffA81ZBA0PSo79jmns5X6K9j24AS0X
         Ax3z10RhkKp/Zmla/ts67EThrKpdtAPqxLifsxCU8KPwgh8G1V0xto13abZqF9ErRvef
         12dMZUJ67xySq5ixcrE1hOnLS/7Li1OxEa+qUYaXRf8jMutv/U9l9A646PMVRa507p84
         zP9Q==
X-Gm-Message-State: AAQBX9fMD3E4peNYxQlF6yhbw8N2UWra8svGvI8RH/whVP2JXxdtv5r2
	MNKVMZg0hlEw4/M/lUIvK8zCIZMxsN9qQXfS2nY=
X-Google-Smtp-Source: AKy350ZgEfJypENh4lupX+UjAFLnaK6nNNjAUf4cdBKrkMdWizPingZhnZw3Pj9kH231q1HcJ8QOMQrTdEKKqWIr+UE=
X-Received: by 2002:ac2:522e:0:b0:4ea:e2f8:5ed6 with SMTP id
 i14-20020ac2522e000000b004eae2f85ed6mr592805lfl.11.1679657518573; Fri, 24 Mar
 2023 04:31:58 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj_7_5fr-5maZ2633R6=mkbd2+Jufuejy+wfnxUWmmB4Bg@mail.gmail.com>
 <21387.1679656649236932073@lists.yoctoproject.org>
In-Reply-To: <21387.1679656649236932073@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Fri, 24 Mar 2023 12:31:47 +0100
Message-ID: <CANNYZj86dCZhkV+7CzyF09=EJBEtBzLOQWRwP=x_5uK3NCBBkw@mail.gmail.com>
Subject: Re: [poky] [PATCH 0/2] git/gitsm do_clean fixes
To: =?UTF-8?B?TmljbyBNw7xsbGVy?= <nicomueller1991@gmail.com>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, there is a strict 'master first' policy to avoid losing patches
from old branches and general chaos.

I would suggest this sequence:
- set up a master build, verify that the issue still exists
- rebase the patches into it, verify that the issue no longer exists
- adjust the commit messages, showing how the issue can be observed,
and what the patch does so that it no longer happens
- submit to bitbake-devel

Alex

On Fri, 24 Mar 2023 at 12:17, "Nico M=C3=BCller <nicomueller1991@gmail.com>=
 wrote:
>
> Okay Alex, I will resubmit the patches to `bitbake-devel`.
>
> The patches are created on dunfell. I checked the relevant master source =
files and the issue definitely persists there too.
> Would you suggest to rebase the patches before submitting them again?
>
> Best Regards,
> Nico
>=20
>
