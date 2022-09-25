Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web10.19955.1664131846379998235
 for <poky@lists.yoctoproject.org>;
 Sun, 25 Sep 2022 11:50:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=VJqXwruT;
 spf=pass (domain: gmail.com, ip: 209.85.167.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f46.google.com with SMTP id 10so7750392lfy.5
        for <poky@lists.yoctoproject.org>; Sun, 25 Sep 2022 11:50:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=KmUV8MidedXB6KU+boG6+YRynB4S/UqNKzeCycDW3Ws=;
        b=VJqXwruTTZ2udIO/mITjj+IwydRmEWl59aYyEokxzH/XWYfDwHXtmA1pBoV8k2RKoh
         DOXqvITuWhsZcBwkFp/uzX8Vz8UrOwAHOjtPOsFgW2qzozTdqt1MY3WUnz4LQfMX/Xe0
         Aukb1AQxIRAtogPZhdgbssMtAuCkj3wYcmN3tm71AMl2q4QAcpp6H17cRi4OqZXN5RCI
         Tl0jVq6xTDvjZojIsUPLkw2xzJoPKa6AdkA+NVwQoUwpnr3QRvjkcjxGVXsFAANAzia6
         qWST6/OuSk8hxQAzUYoYs1lpc0pR4DjgnrGhRsSdMo221C7mOeAD5RKS2D8b+ADO40JA
         bIzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=KmUV8MidedXB6KU+boG6+YRynB4S/UqNKzeCycDW3Ws=;
        b=RAYVGA47EgUw2ResoIWZefHqWJzhaI4q1NKIDopTquLhia5GfqUP0po1kTitu5eSXE
         Y21lnHfa6kRkZ2C843nkHtuTLeT4JP3CeTPVKltkA85I0HJ8U3nSl1Gl3JTruxQTLNxj
         d6CZejRP30uk7MUqcKvjxASgvtYdyfP7u+FT+H9JbYb96Lyv50CFG3SXXUv/QL2yQf34
         jn+mVOvmibmm48g/pCOa4CGRKJ27ZMUWpjQ7CKxJWhgoFVfFNb6bkjpAmSUFOsBJ1dcq
         egkDDY7zb5yzSEuLRcq5lN6nXPuyVlemaRGeEBcppyZhriWqYAyudz08cSy2huu1WQiX
         hoGg==
X-Gm-Message-State: ACrzQf0OoWYw9RIKI9vU17hJnpXNboi8N8vApZV3b/vKiuEMbuJbLSgs
	XIADWQvoTV8TPm2ugLZYR18umHlHxvHxSuBSSyU=
X-Google-Smtp-Source: AMsMyM7POrLD58g0H0uDlSS6Zuzex38n1AZEKzW2SZYPQWQsV7NWPEz3ejIiyfCqtzEEwqBxTpDHofrUYSz47VIN5vA=
X-Received: by 2002:a05:6512:10c4:b0:499:4c:64d7 with SMTP id
 k4-20020a05651210c400b00499004c64d7mr7411008lfg.521.1664131844286; Sun, 25
 Sep 2022 11:50:44 -0700 (PDT)
MIME-Version: 1.0
References: <1714FEA7DD011F1F.28744@lists.yoctoproject.org>
 <CANNYZj8GM+JZVnr0hwEmuC6chc7M84r1z0snL97k6kFzxz8aXg@mail.gmail.com> <YzCaqtunI25C6eJC@mail.local>
In-Reply-To: <YzCaqtunI25C6eJC@mail.local>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Sun, 25 Sep 2022 20:50:32 +0200
Message-ID: <CANNYZj-rW=fRKtXpH3bryDP_yuYaDFc5DMWQRk1-=wTX2snsqA@mail.gmail.com>
Subject: Re: [poky] [PATCH] local.conf.sample: correct the location of public hashserv
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: poky@lists.yoctoproject.org, Alexander Kanavin <alex@linutronix.de>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

But why is it not in poky repo yet?

Alex

On Sun, 25 Sept 2022 at 20:15, Alexandre Belloni
<alexandre.belloni@bootlin.com> wrote:
>
> On 25/09/2022 18:44:00+0200, Alexander Kanavin wrote:
> > Has this patch reached you? I'm not sure why it's not appearing in
> > test branches after several weeks.
> >
>
> Your patch from the 7th of September was applied on the same day so this
> one doesn't apply ;)
>
> > Alex
> >
> > On Thu, 15 Sept 2022 at 11:29, Alexander Kanavin via
> > lists.yoctoproject.org <alex.kanavin=gmail.com@lists.yoctoproject.org>
> > wrote:
> > >
> > > Signed-off-by: Alexander Kanavin <alex@linutronix.de>
> > > ---
> > >  meta-poky/conf/templates/default/local.conf.sample | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/meta-poky/conf/templates/default/local.conf.sample b/meta-poky/conf/templates/default/local.conf.sample
> > > index b96dc908f4..7be423ffed 100644
> > > --- a/meta-poky/conf/templates/default/local.conf.sample
> > > +++ b/meta-poky/conf/templates/default/local.conf.sample
> > > @@ -234,7 +234,7 @@ BB_DISKMON_DIRS ??= "\
> > >  # which will depend on your network.
> > >  # Note: For this to work you also need hash-equivalence passthrough to the matching server
> > >  #
> > > -#BB_HASHSERVE_UPSTREAM = "typhoon.yocto.io:8687"
> > > +#BB_HASHSERVE_UPSTREAM = "hashserv.yocto.io:8687"
> > >  #SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/all/PATH;downloadfilename=PATH"
> > >
> > >  #
> > > --
> > > 2.30.2
> > >
> > >
> > >
> > >
>
> >
> > 
> >
>
>
> --
> Alexandre Belloni, co-owner and COO, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
