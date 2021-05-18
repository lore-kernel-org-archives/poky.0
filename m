Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web09.7332.1621338963594020702
 for <poky@lists.yoctoproject.org>;
 Tue, 18 May 2021 04:56:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=kNmiEgKe;
 spf=pass (domain: burtonini.com, ip: 209.85.128.54, mailfrom: ross@burtonini.com)
Received: by mail-wm1-f54.google.com with SMTP id t206so5295298wmf.0
        for <poky@lists.yoctoproject.org>; Tue, 18 May 2021 04:56:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=OMDwkWGazpgJ+F7r8FOQA4po9m/Cxbz11OaIztojnho=;
        b=kNmiEgKexdPvzj0+TzzYmEPybZFjWVURLGFsgSEzUzRv6sM6wWm24pNHUNrdFjPEJ4
         I4P/Z/TSxgYEMTpe5heOnwdVuXg50vgGXR34EtNBv4pOKO6C8trsXJXlDAIRbEzxRyEh
         oHjKCjOjSosVJn+1jjexN8ysasX+L+iW47LRnDZEOMaemvtMZEt7XUYminlFYJV8afV0
         lAvTncI/T9/sh2IiG15Wf0gyQhLk2D9cxhfUWvCh2YW8a/mlSKRp3tcjf3DrZDDD+NvD
         RMgXuEnEsyNwEVlimnX3+woIzU/VHKWNwoEU6ZHJJ9kIsF1nZ4hgnSeQuuAcguLOwkJ+
         8lXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=OMDwkWGazpgJ+F7r8FOQA4po9m/Cxbz11OaIztojnho=;
        b=AJPkrrb5tz4HJkYaFIx7rGofGpaccSof9RFeU61BEHMOWskDHGs1haYQZAMdqVupHB
         wIVEglDm0zQhNABf+9JDEUdD+vinEy9DxbpA1f0W6xZjAXz6O0GettT8L/0H8GlT1g1Y
         0ipinS2d+8pWo9EgiT4dkHBUAwvjJ+OjmpsJy97e4FaMpcMukRQm4TNJygIoegtrGOTN
         DsyJdwKcK/Z0+DM1Wjr/sNC0dsAupbmEGG01WOuWh7ufgI3hdLqNz7GR/dma25D+ym9F
         y+i5fjDgN3cFSOMEnXVPuK+YoN64nnxMGNcKL6iRYXKc94hpjEFx73xAag4eyB90K7vA
         7MFQ==
X-Gm-Message-State: AOAM530xN4KXkyEnSU+g/8Nv5RHzU3sjXC2BpJuAmYYA7Kixgt5EyLNi
	RsZtQ33ZAaB6H884WwrCtp1akH/N/7g8O+/2ANg4AQ==
X-Google-Smtp-Source: ABdhPJxWklu12g7nO3ABAboU5qLrmGANSrbZ3U9rJvOLxdvgcAJkPwFKqlZfoQtCat9QbAW5IG9zbjLHm0sZ6l+DiTM=
X-Received: by 2002:a7b:cc83:: with SMTP id p3mr5185579wma.169.1621338961919;
 Tue, 18 May 2021 04:56:01 -0700 (PDT)
MIME-Version: 1.0
References: <141358386.90607893.1621323974188.JavaMail.zimbra@jasmin-infotech.com>
 <1180155480.90839930.1621324248815.JavaMail.zimbra@jasmin-infotech.com>
 <AM9PR09MB46424A47140676C11DAD16D2A82C9@AM9PR09MB4642.eurprd09.prod.outlook.com>
 <1263831117.91201115.1621324764469.JavaMail.zimbra@jasmin-infotech.com>
In-Reply-To: <1263831117.91201115.1621324764469.JavaMail.zimbra@jasmin-infotech.com>
From: "Ross Burton" <ross@burtonini.com>
Date: Tue, 18 May 2021 12:55:51 +0100
Message-ID: <CAAnfSTvHC0OjXmXoXVqewG_vvaS-6oLfshdOcgZu1L42YCMb4Q@mail.gmail.com>
Subject: Re: [bitbake-devel] Disable Reproducible Build - reg
To: Daniel Selvan <daniel.selvan@jasmin-infotech.com>
Cc: Konrad Weihmann <kweihmann@outlook.com>, poky <poky@lists.yoctoproject.org>, 
	bitbake-devel <bitbake-devel@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

That error isn't caused by Yocto, so you'll have to work on the source
of the recipe that is failing.

Ross

On Tue, 18 May 2021 at 08:59, Daniel Selvan
<daniel.selvan@jasmin-infotech.com> wrote:
>
> Hi,
>
> I already added the line "BUILD_REPRODUCIBLE_BINARIES =3D '0'" in by loc=
al.conf yet if I try to add __DATE__ I get the following error: "error: mac=
ro "__DATE__" might prevent reproducible builds [-Werror=3Ddate-time]"
>
> Can you comment on this?
>
> Kind regards,
>
>
> Daniel Selvan D.
>
>
> --
>
>
> P Please consider the environment before printing this email.
>
> ----- Original Message -----
> From: "Konrad Weihmann" <kweihmann@outlook.com>
> To: "Daniel D" <daniel.selvan@jasmin-infotech.com>, "poky" <poky@lists.y=
octoproject.org>, "bitbake-devel" <bitbake-devel@lists.openembedded.org>
> Sent: Tuesday, 18 May, 2021 13:26:19
> Subject: Re: [bitbake-devel] Disable Reproducible Build - reg
>
> You could either create a distro configuration of your own (one that
> doesn't inherit the poky.conf) or set `BUILD_REPRODUCIBLE_BINARIES` to
> `0` to reduce the impact of the inherited reproducible_build class
>
> On 18.05.21 09:50, Daniel Selvan wrote:
> > Hi,
> >
> > I wonder how to disable the Yocto reproducible builds, since it is
> > enabled by default now
> > (https://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#m=
igration-3.1-reproducible-builds
> > <https://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#m=
igration-3.1-reproducible-builds>).
> >
> > Thanks in advance.
> >
> > Kind regards,
> >
> > Daniel Selvan D.
> >
> > Senior Systems Engineer*|* Jasmin Infotech
> > <http://www.jasmin-infotech.com/the-company/contact-us/>
> >
> > *+91 9445556596 <callto:9445556596>*
> >
> > =EF=BB=BF--
> >
> > P Please consider the environment before printing this email.
> >
> >
> >
> > Information in this email is proprietary and Confidential to Jasmin
> > Infotech Pvt. Ltd. Any use, copying or dissemination of the informatio=
n
> > in any manner without prior approval, is strictly prohibited. If you a=
re
> > not the intended recipient, please destroy the message and please info=
rm
> > to us..
> >
> >
> >
> >
>
>
>
>=20
>
