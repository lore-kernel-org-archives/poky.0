Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web12.305.1583260012005701907
 for <poky@lists.yoctoproject.org>;
 Tue, 03 Mar 2020 10:26:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@srin-me.20150623.gappssmtp.com header.s=20150623 header.b=N2Ot5FW+;
 spf=none, err=SPF record not found (domain: srin.me, ip: 209.85.221.54, mailfrom: s@srin.me)
Received: by mail-wr1-f54.google.com with SMTP id z11so5640173wro.9
        for <poky@lists.yoctoproject.org>; Tue, 03 Mar 2020 10:26:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=srin-me.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OQJsGq6AOlYfJ/46iZBCk8ye1eGVrs0lCdft1gKpY/E=;
        b=N2Ot5FW+7EZt52WjFQlLhTRemJAsF9aWERTXjaP1blTCqML7a869c5ezsJ6vLkAw/L
         vS2DFOFHY2VJGbhcqqvH+sFh5lzIXxRZVsDwSBJdwjHfqycluFgNRAWkcxU2PLuPaMHl
         ydfS8O+Pfy927YNma4EPItXeisoHblneRyAkLWmG/3BWmLX/P4l8Q31KdogtaWcLJ2Pe
         3ORJFmYGYlKAnBXLpyBYnUVDIygF39z7blCOy3hKG8wG3AoTNEiC2Wwlj1rSqwB774wL
         TKjnhiOtWb4I/gKBsfjc5cPoZn+FGjrJuGCGcawlyqOTAdROGzk38GOS0MGnpDfeRv6y
         CZ+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OQJsGq6AOlYfJ/46iZBCk8ye1eGVrs0lCdft1gKpY/E=;
        b=p3NAtGAGAwilC1IVTBpiaTARzQ2ik6v35xqKh3SWcfv4zF0zWePGfAGXdYZ/jUE7+D
         cOAp9CEFDwM8jiVh47Sf4TlfEibPYMEvM/0fVcqXtgjxXDlotOmhdcaCd74QQ0DcSbFD
         SRj4D3J82UbdPpjJ1XwE4htajstZDpDuMkd3QzvSRgMUOhFn3fwmVEEcfefpe2xNe6Ch
         q/s38E27V+bJ6OMvFbNy7acRKpA7aayyc8YM9/2OZI2Jqb1O0FZkuBBHQEDubW0q1wfT
         OnObs1tFkmzzKWVlU0ZKstbbfxuW9LhGZMbWo7JA1rgJ1HzZ/3e8MRyWVHvS/TmpllKh
         lGCw==
X-Gm-Message-State: ANhLgQ17cVATQ522KHzlNpcIRpqirtmwxzKcAEw79awGKm6elYTRuNcn
	klsq0dDRMwKUn8cwY8NjTivZGttCbKkGnh1ZCv7MAA==
X-Google-Smtp-Source: ADFU+vu+uNOJK7QNlaUpFlHHVpMmHLJYY23zZFU02wwSAvdnc7d8ALJcsYyUa+1A1BcSF6x35SY8vIVCAWYQUxz9iEg=
X-Received: by 2002:a5d:53c8:: with SMTP id a8mr6346283wrw.238.1583260010531;
 Tue, 03 Mar 2020 10:26:50 -0800 (PST)
MIME-Version: 1.0
References: <CAGNn0hYGyrVuse7oK8vwJhkLHudYCpnfESt9uuuMChQhhKhGyQ@mail.gmail.com>
 <45f139f0-4312-0ca5-c273-03ac012ee388@gmail.com> <5e32c7e4ec004c6e14b778f7a1f52d967bd4f0b6.camel@linuxfoundation.org>
In-Reply-To: <5e32c7e4ec004c6e14b778f7a1f52d967bd4f0b6.camel@linuxfoundation.org>
From: "R Srinivasan" <s@srin.me>
Date: Tue, 3 Mar 2020 13:26:25 -0500
Message-ID: <CAGNn0hZ+A78tDUZkEA7Uwr3MGDHyDHmdEz5Lq8c-Suzd-JpZYg@mail.gmail.com>
Subject: Re: [poky] Enabling additional languages
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Khem Raj <raj.khem@gmail.com>, poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000083dea6059ff77212"

--00000000000083dea6059ff77212
Content-Type: text/plain; charset="UTF-8"

awesome. i will take a shot at this. thanks, srini

On Tue, Mar 3, 2020 at 1:23 PM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Tue, 2020-03-03 at 10:08 -0800, Khem Raj wrote:
> >
> > On 3/3/20 9:33 AM, R Srinivasan wrote:
> > > I am looking to enable ada while building the gcc cross. Can
> > > someone
> > > point me to any other recipe that does something similar? Like gcc
> > > with
> > > fortran.
> > >
> >
> > we dont have pre-existing knob for ada but it should be easy enough
> > to
> > add, please follow on the footsteps of how fortran is
> > enabled/disabled
> > perhaps a starting point would be to define
> >
> > ADA ?= ",ada"
> > then add it to
> > LANGUAGES ?= "c,c++${FORTRAN}${ADA}"
> >
> > in meta/recipes-devtools/gcc/gcc-configure-common.inc
> >
> > you might have to also take care of packaging ada runtime later in
> > gcc-runtime recipe.
>
> Enabling fortran is documented in meta/conf/local.conf.sample.extended
>
> Cheers,
>
> Richard
>
> 
>

--00000000000083dea6059ff77212
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">awesome. i will=C2=A0take a shot at this. thanks, srini</d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Tue, Mar 3, 2020 at 1:23 PM Richard Purdie &lt;<a href=3D"mailto:richard.pu=
rdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left-width:1px;border-left-style:solid;border-left-color:rgb(204,=
204,204);padding-left:1ex">On Tue, 2020-03-03 at 10:08 -0800, Khem Raj wrot=
e:<br>
&gt; <br>
&gt; On 3/3/20 9:33 AM, R Srinivasan wrote:<br>
&gt; &gt; I am looking to enable ada while building the gcc cross. Can<br>
&gt; &gt; someone <br>
&gt; &gt; point me to any other recipe that does something similar? Like g=
cc<br>
&gt; &gt; with <br>
&gt; &gt; fortran.<br>
&gt; &gt; <br>
&gt; <br>
&gt; we dont have pre-existing knob for ada but it should be easy enough<b=
r>
&gt; to <br>
&gt; add, please follow on the footsteps of how fortran is<br>
&gt; enabled/disabled<br>
&gt; perhaps a starting point would be to define<br>
&gt; <br>
&gt; ADA ?=3D &quot;,ada&quot;<br>
&gt; then add it to<br>
&gt; LANGUAGES ?=3D &quot;c,c++${FORTRAN}${ADA}&quot;<br>
&gt; <br>
&gt; in meta/recipes-devtools/gcc/gcc-configure-common.inc<br>
&gt; <br>
&gt; you might have to also take care of packaging ada runtime later in <b=
r>
&gt; gcc-runtime recipe.<br>
<br>
Enabling fortran is documented in meta/conf/local.conf.sample.extended<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
<br>
</blockquote></div>

--00000000000083dea6059ff77212--
