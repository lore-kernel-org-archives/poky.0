Received: from mail-il1-f176.google.com (mail-il1-f176.google.com [209.85.166.176])
 by mx.groups.io with SMTP id smtpd.web12.648.1597279725705721995
 for <poky@lists.yoctoproject.org>;
 Wed, 12 Aug 2020 17:48:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=SiNPKgSR;
 spf=pass (domain: gmail.com, ip: 209.85.166.176, mailfrom: ticotimo@gmail.com)
Received: by mail-il1-f176.google.com with SMTP id q14so594607ilm.2
        for <poky@lists.yoctoproject.org>; Wed, 12 Aug 2020 17:48:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kmeIFaRHN5IR9B4tw57m+2aOyS4RAi7HV6PB98RBzxU=;
        b=SiNPKgSRERoI+atcJHiEIRkXDiVBLhcaxJzovPpypzeIBe5aIpx4uuNHZ4WPeT69mJ
         jPytyvmliehGKVnES+olAUMJ4KDmkTdwD2wA0A2YuhF6F60nfcv9YEdQ0sxp368JKWmB
         EGlbsaMme8OsSNXWD473ePlZifPIOn7cZD8+mBV6r9od9pNETl1XnHPaxwSADSv2GIzC
         fVVYPjUsQdtSFPVBYU0/FfhcUdjxWcUTYllO03a/5Zlt7BFYi7BGasifxgeT0Igas40r
         SnMfh2IyOHZwZmLnzqVcJ8+5DQYZfC8fhO7VDo3/P3WxfbObnApt7e9KkdcJ5Jx/E97l
         L9jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kmeIFaRHN5IR9B4tw57m+2aOyS4RAi7HV6PB98RBzxU=;
        b=N7uwtBM6rSMPGgLBGBnblhFibD2KnCGHLln66KOy5xqUOUOgspm/zjgPuRXx+zGRVY
         F/P678KWw7spIpbBWdw2ynOC6HQM1lw8NQqZ2SLC984IdbMmjnXgestEokV+xwZDx0Ar
         r1fspj3gGtCnxufmpc0axUedlgEb0hXrfNmNj6U2adobzZ3FWI46KWlIUE+R2smZsBx1
         LyQYnnewicc+P2eOrI8CBnAgCbqjsScVJqIEClGYHL8EQgjXDdMYWKoROoUGmF9+cVDE
         Om/AJ6CiMLguJAt2ENa8Z9OxsDa9NVOL8qSBKi6EGk5jcjxDhiB/HelCQqPHQ0ZsaqWd
         9sWg==
X-Gm-Message-State: AOAM531MsDktodoHqvUHwkFIWGgzwqZuDM4H069E59cAbhkTLukNaJff
	LQhi1t9Fm4pMgVacURArZVQcgWXVsQjr2mMF6cE=
X-Google-Smtp-Source: ABdhPJxofEEhoPNiWuepg6Nv/m67EI1jvYTDvKXbUsLY6hbEbfLcG8V0aTBon9S8evjCYk+80cbk17SpBhB2TIiUsWQ=
X-Received: by 2002:a92:9e48:: with SMTP id q69mr2340334ili.170.1597279725165;
 Wed, 12 Aug 2020 17:48:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAHrpVsUkTgim53raUgXgkiGvpzrWZJVPFEBzU1YX0S03_ix-kg@mail.gmail.com>
 <CAMKF1so6iTZNupBciUh8dgUQDWQ1-YH7iUy=RU4YFMrx77mqDA@mail.gmail.com>
 <CAHrpVsVvD55j=BHjN2Jv+b71A8rOTVpYYoaMKAyF_zFcXMUw6A@mail.gmail.com>
 <0994fb3e-7adb-def7-89ab-f8e8c3f64113@linux.microsoft.com>
 <21192528214e26ccb6a30dfa64e1b6cf@mail.gmail.com> <CANx9H-CyHBzacbPsDKPO4DpHMANRvP2_YLd3=w00NRvnuEn_Cg@mail.gmail.com>
 <CAHrpVsV4EpjidokvZcidNPH_mDo0pOcCRpfQN=QggS5FbwP4Dw@mail.gmail.com>
In-Reply-To: <CAHrpVsV4EpjidokvZcidNPH_mDo0pOcCRpfQN=QggS5FbwP4Dw@mail.gmail.com>
From: "Tim Orling" <ticotimo@gmail.com>
Date: Wed, 12 Aug 2020 17:48:34 -0700
Message-ID: <CANx9H-DihAhruQHsPpKEJqyry9MAHuT4FwnQhaWXRCBBHByERQ@mail.gmail.com>
Subject: Re: [poky] TCLIBC with newlib
To: Jonathan Richardson <jonathan.richardson@broadcom.com>
Cc: Alejandro Hernandez Samaniego <alhe@linux.microsoft.com>, Khem Raj <raj.khem@gmail.com>, 
	poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a0200705acb7aaab"

--000000000000a0200705acb7aaab
Content-Type: text/plain; charset="UTF-8"

Can we see if we can bring your changes to the meta-zephyr layer for the
benefit of everyone?

On Wed, Aug 12, 2020 at 5:46 PM Jonathan Richardson <
jonathan.richardson@broadcom.com> wrote:

> On Wed, Aug 12, 2020 at 2:00 PM Tim Orling <ticotimo@gmail.com> wrote:
>
> >
>
> > Did you look at meta-zephyr?
>
> > http://git.yoctoproject.org/cgit/cgit.cgi/meta-zephyr/
>
> >
>
>
>
> Hi Tim. Yes I did. We're using the zephyr classes but we're on a later
>
> version that requires use of a bunch of python tools. Adding the
>
> additional dependencies exposed the problem.
>
>

--000000000000a0200705acb7aaab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Can we see if we can bring your changes to the meta-=
zephyr layer for the benefit of everyone?</div></div><div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 12, 2020 at=
 5:46 PM Jonathan Richardson &lt;<a href=3D"mailto:jonathan.richardson@broa=
dcom.com">jonathan.richardson@broadcom.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">On Wed, Aug 12, 2020 at 2:00 PM Tim Orling &lt;<a hr=
ef=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@gmail.com</a>&g=
t; wrote:<br><br>&gt;<br><br>&gt; Did you look at meta-zephyr?<br><br>&gt; =
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-zephyr/" rel=3D"n=
oreferrer" target=3D"_blank">http://git.yoctoproject.org/cgit/cgit.cgi/meta=
-zephyr/</a><br><br>&gt;<br><br><br><br>Hi Tim. Yes I did. We&#39;re using =
the zephyr classes but we&#39;re on a later<br><br>version that requires us=
e of a bunch of python tools. Adding the<br><br>additional dependencies exp=
osed the problem.<br><br></blockquote></div></div>

--000000000000a0200705acb7aaab--
