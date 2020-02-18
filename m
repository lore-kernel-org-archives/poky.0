Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
 by mx.groups.io with SMTP id smtpd.web09.5028.1582037829774960525
 for <poky@lists.yoctoproject.org>;
 Tue, 18 Feb 2020 06:57:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GcdwJ3g9;
 spf=pass (domain: gmail.com, ip: 209.85.217.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f48.google.com with SMTP id x123so13188253vsc.2
        for <poky@lists.yoctoproject.org>; Tue, 18 Feb 2020 06:57:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=r5qTXG36frZVLXgfzblsvNe40rXdD9gh2BkxhsREfpc=;
        b=GcdwJ3g9s7HAohyAF1LzBZPEG8CDzSRv+Y+hSimRUaVc34rR2TlEgDhx8HZ/7AGf2T
         9fxjVncaFOkzRefMCOMlASKuOr3UxaEE4V1gGYQoY7W2I9WIbntR5u2QjFAo6tBExCLx
         PVpQcqk8R+iNXaOv92vkMrGS2Ht9dCmk0ZzOhWvS33PMM406BjmKo9P8j4aiwPTvPeep
         NBLtmBuyxyHl+ZWIQalelutcWK54zAJCrNrovfQAgQnSQhVNuZoAXyC8Zs679yPksitK
         ZD86GS8bdH0vuQ/vD20xh/BBnnLP1xuf/YODQv0hUhobxhGw6ZxpHEXqQGZoIPzpQNMV
         tnvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=r5qTXG36frZVLXgfzblsvNe40rXdD9gh2BkxhsREfpc=;
        b=NYQdSNftMR04QjsQE93T/55Ju+1FOUoI6Z/y5BKA09CQSbpPaurys20cd7VnGCMLDM
         0wJH84sqC4wH4uuwHz2WdMkjJH/uGcqthiGxZywGOr2gkyW8yrjzppIP3Po9lIY/RS7d
         KIJphZoql+2GcoM0Y7p2fDdnW8WHm2Lk+vIuNRrgQr5hRkAAj03LYm4SGPxNvXdzOeu4
         +HyRuc1oKRdgQ2oqR+9VH14xPp14ZP3YYJLZNARGhQ1oIPJwk2ZECK8DsPD8w6QQ7Bh/
         0TkceJYPfjwh1eZPYDrkSSxl0gUP1EgG6BnPW6Uj4nQWkEWcvnDgLNjiaW3SwFE82ect
         vFTQ==
X-Gm-Message-State: APjAAAWcOOWNySuqsQLzET69E+r9UWVsvZzz/ISjRG+kOi1ZbssZI+ao
	VUwld6mFfSvPm0MefIONxFmFN556s1JmlArNrSA=
X-Google-Smtp-Source: APXvYqyVZa1c7wazehjxoXMIE4XzcZW3WiKnOnElGSyivcajNVxVcyg8djS6n2+9FI4Pwbkobg0XlKAyqvBxqtetYmw=
X-Received: by 2002:a67:7987:: with SMTP id u129mr11331568vsc.83.1582037828948;
 Tue, 18 Feb 2020 06:57:08 -0800 (PST)
MIME-Version: 1.0
References: <CAHSN6OeyfB-PYE=+Uk9o1=dCNu=a8Vb10Q8y8GHzuFg7oNXx0w@mail.gmail.com>
In-Reply-To: <CAHSN6OeyfB-PYE=+Uk9o1=dCNu=a8Vb10Q8y8GHzuFg7oNXx0w@mail.gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Tue, 18 Feb 2020 15:57:33 +0100
Message-ID: <CANNYZj_SqHDt1zY_yLwDimwgh83YfAw0on2inYAbY0SaXswGhQ@mail.gmail.com>
Subject: Re: [poky] pkg_postinst_ontarget scriptlets without pkg_postinst content
To: Guillaume Champagne <champagne.guillaume.c@gmail.com>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d0d8f8059edae2d2"

--000000000000d0d8f8059edae2d2
Content-Type: text/plain; charset="UTF-8"

You can write a custom single scriptlet that wraps the two steps into a
condition that checks whether $D exists in the environment. If it exists,
run the parts that should execute at do_rootfs, then execute the defer to
first boot hook (see the implementation of pkg_postinst_ontarget to see
how). Then the block that executes when $D is not there will be executed at
first boot.

Alex

On Tue, 18 Feb 2020 at 15:43, Guillaume Champagne <
champagne.guillaume.c@gmail.com> wrote:

> Hi everyone,
>
> Is it possible for a postinst scriplets to have two steps, one ran at
> do_rootfs time and a second deferred to first boot? I considered using
> pkg_postinst_ontarget, but the resulting scriptlet deferred to first boot
> is concatenated with `pkg_postinst` instead of containing only the
> `pkg_postinst_ontarget` part.
>
> Using postint_ontarget directly (when it is defined) in
> meta/classes/package.bbclass::process_postinst_on_target would produce the
> behavior I want, but I'm not sure this would be the way to go. Is there a
> better way to achieve this?
>
> Thank you,
> Guillaume
> 
>

--000000000000d0d8f8059edae2d2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You can write a custom single scriptlet that wraps the two=
 steps into a condition that checks whether $D exists in the environment. I=
f it exists, run the parts that should execute at do_rootfs, then execute t=
he defer to first boot hook (see the implementation of pkg_postinst_ontarge=
t to see how). Then the block that executes when $D is not there will be ex=
ecuted at first boot.<div><br></div><div>Alex</div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 18 Feb 2020 at 1=
5:43, Guillaume Champagne &lt;<a href=3D"mailto:champagne.guillaume.c@gmail=
.com">champagne.guillaume.c@gmail.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1p=
x;border-left-style:solid;border-left-color:rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr"><div>Hi everyone,</div><div><br></div><div>Is it possi=
ble for a postinst scriplets to have two steps, one ran at do_rootfs time a=
nd a second deferred to first boot? I considered using pkg_postinst_ontarge=
t, but the resulting scriptlet deferred to first boot is concatenated with =
`pkg_postinst` instead of containing only the `pkg_postinst_ontarget` part.=
</div><div><br></div><div>Using postint_ontarget directly (when it is defin=
ed) in meta/classes/package.bbclass::process_postinst_on_target would produ=
ce the behavior I want, but I&#39;m not sure this would be the way to go. I=
s there a better way to achieve this?<br></div><div><br></div><div>Thank yo=
u,</div><div>Guillaume<br></div></div>
<br>
</blockquote></div>

--000000000000d0d8f8059edae2d2--
