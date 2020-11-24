Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com [209.85.210.65])
 by mx.groups.io with SMTP id smtpd.web08.51463.1606223595005789351
 for <poky@lists.yoctoproject.org>;
 Tue, 24 Nov 2020 05:13:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=ez6mDvjQ;
 spf=pass (domain: konsulko.com, ip: 209.85.210.65, mailfrom: paul.barker@konsulko.com)
Received: by mail-ot1-f65.google.com with SMTP id y24so13718181otk.3
        for <poky@lists.yoctoproject.org>; Tue, 24 Nov 2020 05:13:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Gvb9BV+8iZxXWBS8kSsDJ4mFvbJ4Kv0KFkGeKrLuFHk=;
        b=ez6mDvjQ0rwmaga2Y+qQk9QogUqN8Q9iBFlDB7RKWuvHXk5i1OvdwMTjrgZC22hl7g
         1GqWWiqboTbFL78oq8WDnJ6HeQcNhgpwZznAjgGFA8kshjd2+trfFgJVMLdZcCHIx5gp
         zxFLkmYIKyVwkGQ8lnki8fIc5BrFNX/8Fwg8I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Gvb9BV+8iZxXWBS8kSsDJ4mFvbJ4Kv0KFkGeKrLuFHk=;
        b=VsiCdwCoyw945OxrBQWqi1OsDgR8cuSUXbszCq+ly7KWDwXti2t5q7zrPgfBOxdr+J
         P+DO+Nu39GN4znOBjY9b/HaR3GBQfQJjHzJjjq7WlthY2dzud725Nn3kh++FSRD88Wny
         KKHxxC8UxYIU0K31T4hX3Djf2zfhW/Ksxw0OUEJLa+mdT7+oIzMEheyCu3GczFlNxYW2
         s4OKklfl88WpTQWvvNNHgMAmj+6wO3hd38Vqs5XoOwHbaFagY5XqzXw0kzDe+1vMvqf/
         ieBFAxrshoElNbQMZwd5nmEz2NJiOfODVl3HIuoWjP2An0VGFHMyEOovnGwIr690U+DR
         6a5g==
X-Gm-Message-State: AOAM533ujS1g60vaBNNRUxNAkf6HZ5T0v2PWPmGGghIM6z0Qqwbq/VpK
	sU/NknNg885HEs/GFHwirzRYk2rWV2qdLzzsEhMHPA==
X-Google-Smtp-Source: ABdhPJwpeV0dOPx9lVeIZEIQ404sPKCx7nskrK0+pNWvxKUbbB8Pt7vhxMV850WIiqdNRZ8ImH94uNblkWTZWMjqE0A=
X-Received: by 2002:a05:6830:22d2:: with SMTP id q18mr2901914otc.305.1606223594304;
 Tue, 24 Nov 2020 05:13:14 -0800 (PST)
MIME-Version: 1.0
References: <20201124124431.25294-1-pbarker@konsulko.com> <d99fb8c9fbc13a0ff994fec17a8331f4913c3c41.camel@linuxfoundation.org>
In-Reply-To: <d99fb8c9fbc13a0ff994fec17a8331f4913c3c41.camel@linuxfoundation.org>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Tue, 24 Nov 2020 13:13:03 +0000
Message-ID: <CAM9ZRVsQJFvDvM1F0U7As+JkxasmBhV74iXqHEz0ahN0V4ugLw@mail.gmail.com>
Subject: Re: [poky] [master/gatesgarth/dunfell PATCH] local.conf.sample: Update list of qemu machines
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 24 Nov 2020 at 12:51, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Tue, 2020-11-24 at 12:44 +0000, Paul Barker wrote:
> > The `qemuarmv5` and `qemuriscv64` machines have been support since
> > the
> > warrior and zeus releases respectively. Add them to the local.conf
> > sample so that they're easier for new users to discover.
> >
> > Signed-off-by: Paul Barker <pbarker@konsulko.com>
> > ---
> >  meta-poky/conf/local.conf.sample | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/meta-poky/conf/local.conf.sample b/meta-
> > poky/conf/local.conf.sample
> > index 68e71b930b..df23af0a71 100644
> > --- a/meta-poky/conf/local.conf.sample
> > +++ b/meta-poky/conf/local.conf.sample
> > @@ -19,11 +19,13 @@
> >  #
> >  #MACHINE ?= "qemuarm"
> >  #MACHINE ?= "qemuarm64"
> > +#MACHINE ?= "qemuarmv5"
> >  #MACHINE ?= "qemumips"
> >  #MACHINE ?= "qemumips64"
> >  #MACHINE ?= "qemuppc"
> >  #MACHINE ?= "qemux86"
> >  #MACHINE ?= "qemux86-64"
> > +#MACHINE ?= "qemuriscv64"
> >
>
> I think those ones aren't listed as we don't actually test them
> currently...

I reviewed the test matrix in
http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder-helper/tree/config.json
after your pointer on IRC. Neither of these is covered by the
autobuilder so perhaps it is right to leave them out of the sample
config for now.

-- 
Paul Barker
Konsulko Group
