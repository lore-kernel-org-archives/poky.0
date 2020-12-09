Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.3817.1607551744148078852
 for <poky@lists.yoctoproject.org>;
 Wed, 09 Dec 2020 14:09:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@srin-me.20150623.gappssmtp.com header.s=20150623 header.b=SB9vfQy7;
 spf=none, err=SPF record not found (domain: srin.me, ip: 198.145.29.25, mailfrom: s@srin.me)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by mail.yoctoproject.org (Postfix) with ESMTPS id C8B9638C04BB
	for <poky@yoctoproject.org>; Wed,  9 Dec 2020 22:09:03 +0000 (UTC)
Received: by mail-ed1-f43.google.com with SMTP id dk8so3340251edb.1
        for <poky@yoctoproject.org>; Wed, 09 Dec 2020 14:09:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=srin-me.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6Li78MP2Uf/tVLxu8636l8idDSUfe+mws3Ha340VYVA=;
        b=SB9vfQy714gIDERSDmm7ADXysbsv0XIcJ9BPS+gr4E5FQFMFF46cnwcnrPsE6lHR7h
         ZtKlE2m+IfOJmCbpyLK0tOkWlfNYXz1V/ugKxNJUfXK7hczt+IGE4bXNcsijfXxVz2Sq
         6CnnPAs+vm7lAYa4+odLJ9Q7nSq1VnDtkkncaVt3KnNl5xOsMH3RcBdIYS/JxjOe6b8z
         pq3+HcerwuBUxXoY3lyisv0C8EEukgnqlyydGRkl/5odfoxmGgQBqk0f1IcrNkpeDr27
         Gaw21yMVYJfVB+DQFyCyqT6BeEl9REPp2yev/NR6huIwofMsFhOwFK/j+2ROJJmwpU1K
         3+Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6Li78MP2Uf/tVLxu8636l8idDSUfe+mws3Ha340VYVA=;
        b=EU/ZDe2UFSlQ5yDZV/417vVtWVZDYTkJOHzHTSEGvu+PcyyUK/uGJFh0ZEPZtPW5on
         sLFOSAI4BV5EJo/7Q7GxtyTAxlaYO8AHOTd92OWXHqIrGVuQM/lWVRRD0ZOo9kKsKdqd
         v3RxLaeFJ+5wWxouDUKPqZx7W1R41gMYgRyAcOf4PC1BU4yFO+L6ioiOIlu6IA+ECrqC
         FHtGtiELDRe5+a9CIEU2oFt3yODhamHWJuY+jYApZS0x3O1vxe7cv3YJycK3OvR8x+1w
         0zNnAtaRVdVXcsa83SENYenK5uV0u+roSvHO3cQuUDFSbLdVe4Lwp7St7+eD5Evj5lzo
         dPkw==
X-Gm-Message-State: AOAM531t5cWxDPCITMCV654HJa0QFZ6lJOalRqLXCOdFQ0FaaC5ATCk+
	T+QRBQFjFmh/+v1l76oG9SDV7simbRIdpjTKdG6vGX7aoGo//w==
X-Google-Smtp-Source: ABdhPJwhx8KK0iRoor9fsnO+ZOHY+h96f+c4Z8Azl0HGM48WuArcdYXk4PPci4V9hp56EHnkqVKumJKJlKy5PJheGno=
X-Received: by 2002:aa7:c2d8:: with SMTP id m24mr3979605edp.300.1607551742128;
 Wed, 09 Dec 2020 14:09:02 -0800 (PST)
MIME-Version: 1.0
References: <CAGNn0hbf=v9VVj2uVECAF9_UU8d_MUOW6UodpUsXzY54vDMkwA@mail.gmail.com>
 <20201209170617.0005086c@pouet.cJ>
In-Reply-To: <20201209170617.0005086c@pouet.cJ>
From: "R Srinivasan" <s@srin.me>
Date: Wed, 9 Dec 2020 17:08:51 -0500
Message-ID: <CAGNn0ha10ZchHEqWfSVGvsEmnxhDhxR8Ogfbs-ie71eKZs+X4Q@mail.gmail.com>
Subject: Re: [poky] practices question
To: =?UTF-8?B?SsOpcsO0bWUgQ2FycmV0ZXJv?= <cJ-poky@zougloub.eu>
Cc: poky@yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008c480705b60f4ed7"

--0000000000008c480705b60f4ed7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Awesome, thanks!

On Wed, Dec 9, 2020 at 5:06 PM J=C3=A9r=C3=B4me Carretero <cJ-poky@zougloub=
.eu> wrote:

> On Wed, 9 Dec 2020 16:34:22 -0500
> "R Srinivasan" <s@srin.me> wrote:
>
> > Curious if yocto users have their own replicated repo say poky.git or
> > meta-openembedded
> >
> > it would seem to me that we should always be able to retrieve the right
> > version from the yoctoproject repositories.
> >
> > thanks, srini
>
> Hi srini,
>
>
> Most of the time I'm directly using the upstream poky and layer
> repositories as submodules within a master repo with build template
> folders, custom layers, scripts and documentation.
>
> Rationale for not replicating: there would be many more SRC_URI to
> mirror, and it would take resources that my clients don't have to
> handle them all. They don't care about offline build-ability and are
> cloning their code from the cloud with AUTOREV kept on forever. Of
> course something better than SHA1 submodule commit IDs would help
> security.
>
>
> Regards,
>
> --
> J=C3=A9r=C3=B4me
>

--0000000000008c480705b60f4ed7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>Awesome, thanks!</div><div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Wed, Dec 9, 2020 at 5:06 PM J=C3=A9r=C3=B4me C=
arretero &lt;<a href=3D"mailto:cJ-poky@zougloub.eu">cJ-poky@zougloub.eu</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1e=
x;border-left-color:rgb(204,204,204)">On Wed, 9 Dec 2020 16:34:22 -0500<br>
&quot;R Srinivasan&quot; &lt;<a href=3D"mailto:s@srin.me" target=3D"_blank"=
>s@srin.me</a>&gt; wrote:<br>
<br>
&gt; Curious if yocto users have their own replicated repo say poky.git or<=
br>
&gt; meta-openembedded<br>
&gt; <br>
&gt; it would seem to me that we should always be able to retrieve the righ=
t<br>
&gt; version from the yoctoproject repositories.<br>
&gt; <br>
&gt; thanks, srini<br>
<br>
Hi srini,<br>
<br>
<br>
Most of the time I&#39;m directly using the upstream poky and layer<br>
repositories as submodules within a master repo with build template<br>
folders, custom layers, scripts and documentation.<br>
<br>
Rationale for not replicating: there would be many more SRC_URI to<br>
mirror, and it would take resources that my clients don&#39;t have to<br>
handle them all. They don&#39;t care about offline build-ability and are<br=
>
cloning their code from the cloud with AUTOREV kept on forever. Of<br>
course something better than SHA1 submodule commit IDs would help<br>
security.<br>
<br>
<br>
Regards,<br>
<br>
-- <br>
J=C3=A9r=C3=B4me<br>
</blockquote></div></div>

--0000000000008c480705b60f4ed7--
