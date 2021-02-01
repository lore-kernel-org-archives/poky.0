Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com [209.85.222.46])
 by mx.groups.io with SMTP id smtpd.web12.41591.1612212706205129699
 for <poky@lists.yoctoproject.org>;
 Mon, 01 Feb 2021 12:51:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=sGyo+VvZ;
 spf=pass (domain: gmail.com, ip: 209.85.222.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f46.google.com with SMTP id d3so6390483uap.4
        for <poky@lists.yoctoproject.org>; Mon, 01 Feb 2021 12:51:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Jt7qXq4E6yUgyzpnmpzseWihiK21H7S3SJ28AKfLePc=;
        b=sGyo+VvZzpTk1KMEiiV29e/yzMnn711oLMXsJNSVikO9JZ009PLnDvH+s6oUxMqu7r
         ZhbuxQP0qdIWscyu9pPr3gnfgf5JSxYOX6AnRhxfoMNOrer0o8u+BANesieeMqb7oHTI
         tjU16S/KmjWwNJGk3Ije9ps7JT0ulg6t6nSIK9IOfpCY658H+TX/HtrAYzSLUewWIevS
         +3uyw44+DqZPrObUV4OHKxfQf5yes7UmP8+Uhg7gL6DhQWJoGDZMspM2MV347Wbe8Pg7
         5krPAMhzRLzfGFyV6S0rmHpRZrU8Ucm87JXwY8SkY91Zfb4AnLdlo4O1tNbdyAecUxY5
         hFag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Jt7qXq4E6yUgyzpnmpzseWihiK21H7S3SJ28AKfLePc=;
        b=mcVHKa9RoLRfb30ut9SIsrmpkV/dNDUeobD4ue1cszYOvmrPdKwAZ1L695z56cdV9x
         6qf3y9xMUEDBnbD50t/19NFkynfj387bzVlqlH+dMjqjlHyGEjfLXBK5j1nblSLGlUMF
         tfk7jJW7oT6sbh3Dujc/Z9vAsytdibXFAqIuLWZ+uRh/3vMswAzXEeHk6iGPPn4GCa5O
         BUK/wzY7M/Un2VpjLfTWCD37TJW7NLAtW0YJWncK3zvdJUilGbSHgKzwKI173RIh48HN
         HR1lspkGDt/vMXv7J1Wcv6J8IaDTFjZiqcPWmOPZAxtCMauMeykDcBvJGox+cumKOvqH
         rp6w==
X-Gm-Message-State: AOAM531laEuMQkrcg5UUyQ6Uh2GozYlHQjrVGD/GClEAx241qExBoiZW
	AkgYYA7sVPm2nDYlm3mdbZyj/8csHr+5m5J6of0=
X-Google-Smtp-Source: ABdhPJzj0f5iz+bxT0BufBFbxuKKJe2XCeK4VlKaiedWFpzphoxGHEYTbxgj0dYwW276g5w2joGPbw3mNBo2A/GBRYA=
X-Received: by 2002:ab0:2b95:: with SMTP id q21mr5684921uar.22.1612212705379;
 Mon, 01 Feb 2021 12:51:45 -0800 (PST)
MIME-Version: 1.0
References: <d1a13d7af36ec70895118c077d29660f@mail.gmail.com>
In-Reply-To: <d1a13d7af36ec70895118c077d29660f@mail.gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Mon, 1 Feb 2021 21:51:33 +0100
Message-ID: <CANNYZj-FzXr=7as6aLyLHNcSPbmLay5wW4KxiqJGL6qHSR3ujw@mail.gmail.com>
Subject: Re: [poky] dnf ignorearch not working
To: Jonathan Richardson <jonathan.richardson@broadcom.com>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009b46c605ba4c852b"

--0000000000009b46c605ba4c852b
Content-Type: text/plain; charset="UTF-8"

You should still file it with red hat bugzilla, but a way to reproduce on
Fedora will certainly help. Better yet, keep digging and get to the point
where you have a patch.

Alex

On Mon, 1 Feb 2021 at 21:37, Jonathan Richardson via lists.yoctoproject.org
<jonathan.richardson=broadcom.com@lists.yoctoproject.org> wrote:

> Hi,
>
> I tried adding ignorearch=True to dnf.conf but it doesn't work in a recent
> yocto using dnf 4.5.2. I have a driver built with different machine types
> but they are functionally identical. I see that dnf uses 'rpm'. rpm
> --ignorearch does work. I debugged dnf and see that when dnf installs an
> rpm of the same architecture it sets the IGNOREARCH flag which is used by
> 'rpm'.
>
> @property
>     def _ts(self):
> <clip>
>         if self.conf.ignorearch:
>             self._rpm_probfilter.add(rpm.RPMPROB_FILTER_IGNOREARCH)
>
> But when doing a dnf install with ignorearch=True and an rpm of a
> different architecture, this code is never called and the flag is never
> set. It queries the database and fails saying the architecture is
> incompatible. This looks like a dnf issue. The only dnf bug reporting
> database is for Red Hat. Not sure where I should file this bug because I'm
> not using RH and it sounds like the feature is being used successfully in
> that distro.
>
> Thanks,
> Jon
>
> 
>
>

--0000000000009b46c605ba4c852b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You should still file it with red hat bugzilla, but a=
 way to reproduce on Fedora will certainly help. Better yet, keep digging a=
nd get to the point where you have a patch.</div><div><br></div><div>Alex<b=
r></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Mon, 1 Feb 2021 at 21:37, Jonathan Richardson via <a href=3D"htt=
p://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;jonathan.richard=
son=3D<a href=3D"mailto:broadcom.com@lists.yoctoproject.org">broadcom.com@l=
ists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">Hi,<br>
<br>
I tried adding ignorearch=3DTrue to dnf.conf but it doesn&#39;t work in a =
recent<br>
yocto using dnf 4.5.2. I have a driver built with different machine types<=
br>
but they are functionally identical. I see that dnf uses &#39;rpm&#39;. rp=
m<br>
--ignorearch does work. I debugged dnf and see that when dnf installs an<b=
r>
rpm of the same architecture it sets the IGNOREARCH flag which is used by<=
br>
&#39;rpm&#39;.<br>
<br>
@property<br>
=C2=A0 =C2=A0 def _ts(self):<br>
&lt;clip&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if self.conf.ignorearch:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self._rpm_probfilter.add(rpm.RPM=
PROB_FILTER_IGNOREARCH)<br>
<br>
But when doing a dnf install with ignorearch=3DTrue and an rpm of a<br>
different architecture, this code is never called and the flag is never<br=
>
set. It queries the database and fails saying the architecture is<br>
incompatible. This looks like a dnf issue. The only dnf bug reporting<br>
database is for Red Hat. Not sure where I should file this bug because I&#=
39;m<br>
not using RH and it sounds like the feature is being used successfully in<=
br>
that distro.<br>
<br>
Thanks,<br>
Jon<br>
<br>
<br>
<br>
</blockquote></div>

--0000000000009b46c605ba4c852b--
