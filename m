Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com [209.85.160.195])
 by mx.groups.io with SMTP id smtpd.web09.2964.1574450037547623862
 for <poky@lists.yoctoproject.org>;
 Fri, 22 Nov 2019 11:13:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=g2Ea3f4O;
 spf=pass (domain: gmail.com, ip: 209.85.160.195, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f195.google.com with SMTP id y39so9060262qty.0
        for <poky@lists.yoctoproject.org>; Fri, 22 Nov 2019 11:13:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=x0E+dZMZFAJlOAhFJx7kh7YV/QOCw+njbSeXFEnduxA=;
        b=g2Ea3f4Osf0j2ca62vGA59smjvXBlplqEIFQ3Z3RrADhFT1VyItWU313Nc48wS2wTU
         8zCANOq+vGfeQ9JDbJbQafFKksnCDctl+llryKdN7qD6zZ0XKI8znPebHxW2iGp0JihI
         cIzpKbAe+H6xYLeHDtj26dxX+DgUZV9Ui3EdKogz6TErn/jeFPwqIkjadKsqWgwy87hU
         4BusNR2MWZZYhqp4d5rVZiJw56zgs7mS6qwJAvarSNDVv0e+hH5vkLwQ8gFhFJYjnS+e
         7Wa6sAEHYCAge4ZRdfWC2pdYG5jbKjrkUT0b8mlNEfMb3VWh1zd+XZqAWGtFKI8XHi+y
         qBKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=x0E+dZMZFAJlOAhFJx7kh7YV/QOCw+njbSeXFEnduxA=;
        b=nwmMNn1GKhP5ZmUy+bYgclLeHaAIrCiioivMLeF4rIHiAWCSa0w9uAz0Qmqt0fxavK
         c6MrSrcntsX79iotz23/pNypNMoGqu7PaaAgQThf3IVUZZJBSuDJ6WYUClWKlVj84/XW
         ZHhyT0gz49BGOPzDmYEEK07HTk/XAK/34XL7vNUKV7ABB4QKFJuMdLRE3GX0vpa97ui/
         LBhKAWYDfnEb35rJx8oFvEJsxb1utRAY5fNkbrz6/dtQh7bfvImfqpURkdQx1U9n9Fgq
         tMhGI9Sgx/50eVmotYmxbW1ch4z8qvjn4fJwfxv7pTUS37ekD90ojDhm7S4wLqqdo9j+
         K7TQ==
X-Gm-Message-State: APjAAAVFVk7uCM0VqMVkvdHB5mV2y8/f+/SKXCXA9jJEuKkO7Y510LJq
	7+jRfsyTby1jVJkmKkM3+91Q8bmqnAl7n3QhN2o=
X-Google-Smtp-Source: APXvYqyudsbwYZcQsZ7aKd0Wx/Dt60gRNy787Qn1vxudAGrV8XWTDfny4lVOvYHV3aVpJVn8BONTatKtU7Ztix6EkMo=
X-Received: by 2002:ac8:2ddc:: with SMTP id q28mr7915767qta.88.1574450036326;
 Fri, 22 Nov 2019 11:13:56 -0800 (PST)
MIME-Version: 1.0
References: <20191122173942.5161-1-richard.purdie@linuxfoundation.org> <9266c330-48cd-68b9-7581-5f4c11a932aa@gmail.com>
In-Reply-To: <9266c330-48cd-68b9-7581-5f4c11a932aa@gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Fri, 22 Nov 2019 11:13:45 -0800
Message-ID: <CAMKF1srD0jXxtg15WR4Mvv24oM6-hFKbYwUTm0cTmZWwvrr0Qg@mail.gmail.com>
Subject: Re: [poky] [PATCH] poky: Default to reproducible builds
To: Armpit <akuster808@gmail.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000021c4360597f43736"

--00000000000021c4360597f43736
Content-Type: text/plain; charset="UTF-8"

On Fri, Nov 22, 2019 at 10:38 AM Armpit <akuster808@gmail.com> wrote:

>
>
> On 11/22/19 9:39 AM, Richard Purdie wrote:
>
> This is essential for sensible use of hash equivalence which we also plan
> to enable by default in the next release.
>
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org> <richard.purdie@linuxfoundation.org>
> ---
>  meta-poky/conf/distro/poky.conf | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
> index 619414295b2..82b20642818 100644
> --- a/meta-poky/conf/distro/poky.conf
> +++ b/meta-poky/conf/distro/poky.conf
> @@ -87,3 +87,5 @@ require conf/distro/include/no-static-libs.inc
>  require conf/distro/include/yocto-uninative.inc
>  require conf/distro/include/security_flags.inc
>  INHERIT += "uninative"
> +
> +INHERIT += "reproducible_build"
>
>
> The down side I see with this being only in "Poky" is if I do a package
> update in a "No Distro"  setup and I don't see if I introduced a regression
> of reproducibility.
>

I tend to agree that poky policies in general should apply to nodistro at
least build qa policies etc  and security flags as well as this

Since we ci poky policies and submitters may not have tested that will
avoid extra submission  loops

>
>
> I need to start adding this to my local.conf.
>
> - armin
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#11822): https://lists.yoctoproject.org/g/poky/message/11822
> Mute This Topic: https://lists.yoctoproject.org/mt/61713118/3616698
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub  [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#11828):
> https://lists.yoctoproject.org/g/poky/message/11828
> Mute This Topic: https://lists.yoctoproject.org/mt/61713118/1997914
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub  [
> raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

--00000000000021c4360597f43736
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Nov 22, 2019 at 10:38 AM Armpit &lt;<a href=3D"mail=
to:akuster808@gmail.com">akuster808@gmail.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <br>
    <br>
    <div>On 11/22/19 9:39 AM, Richard Purdie
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <pre>This is essential for sensible use of hash equivalence which we =
also plan
to enable by default in the next release.

Signed-off-by: Richard Purdie <a href=3D"mailto:richard.purdie@linuxfoundat=
ion.org" target=3D"_blank">&lt;richard.purdie@linuxfoundation.org&gt;</a>
---
 meta-poky/conf/distro/poky.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.c=
onf
index 619414295b2..82b20642818 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -87,3 +87,5 @@ require conf/distro/include/no-static-libs.inc
 require conf/distro/include/yocto-uninative.inc
 require conf/distro/include/security_flags.inc
 INHERIT +=3D &quot;uninative&quot;
+
+INHERIT +=3D &quot;reproducible_build&quot;</pre>
    </blockquote>
    <br>
    The down side I see with this being only in &quot;Poky&quot; is if I do=
 a
    package update in a &quot;No Distro&quot;=C2=A0 setup and I don&#39;t s=
ee if I
    introduced a regression of reproducibility.</div></blockquote><div dir=
=3D"auto"><br></div><div dir=3D"auto">I tend to agree that poky policies in=
 general should apply to nodistro at least build qa policies etc =C2=A0and =
security flags as well as this=C2=A0</div><div dir=3D"auto"><br></div><div =
dir=3D"auto">Since we ci poky policies and submitters may not have tested t=
hat will avoid extra submission =C2=A0loops=C2=A0</div><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><div text=3D"#000000" bgcolor=3D"#FFFFFF"><br>
    <br>
    I need to start adding this to my local.conf.<br>
    <br>
    - armin<br>
    <blockquote type=3D"cite">
      <pre></pre>
      <br>
      <fieldset></fieldset>
      <pre>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.

View/Reply Online (#11822): <a href=3D"https://lists.yoctoproject.org/g/pok=
y/message/11822" target=3D"_blank">https://lists.yoctoproject.org/g/poky/me=
ssage/11822</a>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/61713118/3616=
698" target=3D"_blank">https://lists.yoctoproject.org/mt/61713118/3616698</=
a>
Group Owner: <a href=3D"mailto:poky+owner@lists.yoctoproject.org" target=3D=
"_blank">poky+owner@lists.yoctoproject.org</a>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" target=
=3D"_blank">https://lists.yoctoproject.org/g/poky/unsub</a>  [<a href=3D"ma=
ilto:akuster808@gmail.com" target=3D"_blank">akuster808@gmail.com</a>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
</pre>
    </blockquote>
    <br>
  </div>

-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
<br>
View/Reply Online (#11828): <a href=3D"https://lists.yoctoproject.org/g/pok=
y/message/11828" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/poky/message/11828</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/61713118/1997=
914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/61713118/1997914</a><br>
Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" rel=3D=
"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/poky/unsub<=
/a>=C2=A0 [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem=
@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
</blockquote></div></div>

--00000000000021c4360597f43736--
