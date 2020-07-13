Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.18177.1594643928839392352
 for <poky@lists.yoctoproject.org>;
 Mon, 13 Jul 2020 05:38:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@srin-me.20150623.gappssmtp.com header.s=20150623 header.b=IWbaScJN;
 spf=none, err=SPF record not found (domain: srin.me, ip: 140.211.169.56, mailfrom: s@srin.me)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69C99E01E21; Mon, 13 Jul 2020 05:38:48 -0700 (PDT)
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
	*      [209.85.208.45 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BB83E01DE3
	for <poky@yoctoproject.org>; Mon, 13 Jul 2020 05:38:46 -0700 (PDT)
Received: by mail-ed1-f45.google.com with SMTP id n2so13496191edr.5
        for <poky@yoctoproject.org>; Mon, 13 Jul 2020 05:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=srin-me.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xcfE6P3hA8LnO/xFfVZO0IBR5cpiKq/kiCiO/QaeQC4=;
        b=IWbaScJNMSozPsXqpfIGXOb/ldvN3y5fQTC3ulNYiSzZ8UyAwoYt0Tc3AhpFg5tZKz
         e0W51jma8Lw4nTAJEH5Gz8MMxiJrEHZdHfxpq8YfQ5lI4RYjEQ5NyDNQ65VFk+QtF/hD
         aj/yxMzMXjbNYcLr2YsdjYccT7AZiL041THT5M9/KcTCqe1yqhD6SixO77IyXTq04/pH
         6Rrf6UzMw2gyyKmr1J0Mf62ZNWsuQzTOAGGOfUR6eE0hIhWVX/VCMHEQP/oQlfBLdM3h
         aw6+WT+gQZWi5z7Ku0U5wdo2vxCv8BbI2wyDUqy3GSeUky2C5C1nQ5i00yhj952PIjmX
         ogcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xcfE6P3hA8LnO/xFfVZO0IBR5cpiKq/kiCiO/QaeQC4=;
        b=PXT1IwNcSEc2826CkOCMD0YzerLSiGBCCN42RRfIUzhOZxBJHke9C45iIIgvSvgzb5
         kLJ4DaHg7khSTTto+R2BGYJo7YRho+hV+n1b9OA7Kx6k8WlpOUDIvkIgXG7sX2ZicyLY
         aCItJ9C4sHrB5C+zJM2+PGD9m8fGkBEINd9GPzR44X5QvTndxMzGs1uigWaXN7amhq5K
         jCCVE62APl0W1H3WuNQWD+E6TW/o1W0em1JJ93MMv2ioBmLhfZXrMYNVH4Owtrf4HK42
         Elk4r+JkiX1JVBieR/0oiXY/ecCgH4wmgtrGFWTxS2wf6BbvIkC876CD4igrCW9OYzex
         C6QQ==
X-Gm-Message-State: AOAM532DviB3NUUkr4ziBi9R6X0YB43brfraOyVH+N/4n9eVkVpJFaB4
	R9pBUwPrzWl+K5nQrVGRznXBUYe86xmchj/vz4UHgMwbpIw=
X-Google-Smtp-Source: ABdhPJyHDh8Gz2rsF/SVriMpciFpW15HEwvAizQeRvq8IB8eBS2jIeuIt2BTxCigILQhQymx2pKV4wxSc2MOUuOoWYY=
X-Received: by 2002:a50:fc97:: with SMTP id f23mr80416946edq.255.1594643925585;
 Mon, 13 Jul 2020 05:38:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAGNn0hYDMk+pSXarT1XbUOPmhyajUvcwTt7FmD78BEmeqZySzg@mail.gmail.com>
 <CAAnfSTvnVfziABYju=3p5vU7Ud=h6v8Uq027yeUeTow8piRvRA@mail.gmail.com>
In-Reply-To: <CAAnfSTvnVfziABYju=3p5vU7Ud=h6v8Uq027yeUeTow8piRvRA@mail.gmail.com>
From: "R Srinivasan" <s@srin.me>
Date: Mon, 13 Jul 2020 08:38:36 -0400
Message-ID: <CAGNn0haD30WVN0EpBUJqdxuqBu=0dyY8h-gD+wKJJV=TKZPBNw@mail.gmail.com>
Subject: Re: [poky] yocto under WSL
To: Ross Burton <ross@burtonini.com>
Cc: poky@yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ba6e7a05aa51f83f"

--000000000000ba6e7a05aa51f83f
Content-Type: text/plain; charset="UTF-8"

I have been looking at WSL2. It seems the brand new DELL I received has a
version of Windows 10 that does not support WSL2. I assume others have
upgraded to the version of Windows. Was it a smooth upgrade? Anything I
should be worried about about this upgrade?

thanks, srini

On Mon, Jul 13, 2020 at 6:31 AM Ross Burton <ross@burtonini.com> wrote:

> WSL2 should work out of the box, no need for Docker.
>
> Ross
>
> On Sat, 11 Jul 2020 at 10:02, R Srinivasan <s@srin.me> wrote:
> >
> > I got myself a new laptop. Trying to decide whether to setup a VM for
> yocto development.
> >
> > Will the above work?
> >
> > thanks, srini
> > 
>

--000000000000ba6e7a05aa51f83f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I have been looking at WSL2. It seems the brand new D=
ELL I received has a version of Windows 10 that does not support WSL2. I as=
sume others have upgraded to the version of Windows. Was it a smooth upgrad=
e? Anything I should be worried about about this upgrade?</div><div><br></d=
iv><div>thanks, srini<br></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Mon, Jul 13, 2020 at 6:31 AM Ross Burton =
&lt;<a href=3D"mailto:ross@burtonini.com">ross@burtonini.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">WSL2 should wor=
k out of the box, no need for Docker.<br>
<br>
Ross<br>
<br>
On Sat, 11 Jul 2020 at 10:02, R Srinivasan &lt;<a href=3D"mailto:s@srin.me=
" target=3D"_blank">s@srin.me</a>&gt; wrote:<br>
&gt;<br>
&gt; I got myself a new laptop. Trying to decide whether to setup a VM for=
 yocto development.<br>
&gt;<br>
&gt; Will the above work?<br>
&gt;<br>
&gt; thanks, srini<br>
&gt; <br>
</blockquote></div>

--000000000000ba6e7a05aa51f83f--
