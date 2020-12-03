Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.11353.1607008094484223927
 for <poky@lists.yoctoproject.org>;
 Thu, 03 Dec 2020 07:08:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=DljFDyq5;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: alex.kanavin@gmail.com)
Received: from mail-ua1-f66.google.com (mail-ua1-f66.google.com [209.85.222.66])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 3EFD738C0868
	for <poky@yoctoproject.org>; Thu,  3 Dec 2020 15:08:14 +0000 (UTC)
Received: by mail-ua1-f66.google.com with SMTP id x4so765616uac.11
        for <poky@yoctoproject.org>; Thu, 03 Dec 2020 07:08:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Pe7wtjVy27VENIsp63urMp69/ZDoEaNBcz3sbyK0yKs=;
        b=DljFDyq5OGWZV+MDAVGET/g8LPmzV+C6SKd4O07CB+Vk1LGCz0rc9k8zJW4L0M0MYE
         Uc7fK5ICW9MVL6EhCX9Ww5aC9hkeU2kCMSVodyUdOD8GuAeZViqMImQAu7RBt0at3aR5
         4fYz496GN6OGqOI7avqPPVFk2GAOYPpYorDKDJYApF5rcQTzXmxBnb66Bj3uojK5cS39
         Imt6Piggr8MtMl3fwk3DUiqS0bQvmQUKjVy8i39BktWKFc4BUFodQo6VsZDPzQOgq+4v
         VJxp18ZCrYF33Xo4KoFtLlE6pRI1vy6JM+xmWIHVXaJ9GIs0NMLJs4ffb7bzvn/UWOg0
         Jn8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Pe7wtjVy27VENIsp63urMp69/ZDoEaNBcz3sbyK0yKs=;
        b=JqxcvSCNFI2YsfUbVvRMpXdpiQYhJBdIuHl2oCmDAtNtcmLiOnUr7HJZusfUdC12Lx
         but8kn0n/PgK2qbGQiB+AQUEIpM3KJSRGMc4peHyDLF1caVN3geIGRo1WlogWJNosKM3
         otI0lcSGe00FS1uB9+ad/osX4/kkewfWDT5UO+o5SgT/5Ke8TfXL/Nk1io57hQ0HH4Yp
         sRyCZoaUZ1w9Zc1CUgI7zlHMvOu1lykq1nWyB+amp24BVpicT0LD4TI1bylKiJX8dzbr
         KyDjGkfGku8kBZowrN+sm7ap0NZ2qlc0Ue+9Q5o8DJaI/SeJBauEc2VHcFcV3xwGiRZq
         H8aw==
X-Gm-Message-State: AOAM531wepocVHWT/60ukFaJoqnAKJUfCiKmn/bGmc6ZfsFN8Gkp3Eod
	gy2+aJUUWv5esunFbF8ValwjVel2+7+ffacBvgs=
X-Google-Smtp-Source: ABdhPJxDhKfVJuF0pwiUFk6HHeO8/BCa1VnzCFz0zmpJTwiGXCEc6VUB3Kj/buEjQ9K5i2u+GhmOYWjlzYR5JDltTwU=
X-Received: by 2002:a9f:36e7:: with SMTP id p94mr2323954uap.71.1607008093114;
 Thu, 03 Dec 2020 07:08:13 -0800 (PST)
MIME-Version: 1.0
References: <20201203133628.12420-1-alex.kanavin@gmail.com> <31c05a1e3da5fae63a10ae25b8b7d71292f3dc14.camel@linuxfoundation.org>
In-Reply-To: <31c05a1e3da5fae63a10ae25b8b7d71292f3dc14.camel@linuxfoundation.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Thu, 3 Dec 2020 16:08:01 +0100
Message-ID: <CANNYZj856bc0o1Q6ZngMrQQfAteJ1OuqF8MG7bua_ig-2kVHCQ@mail.gmail.com>
Subject: Re: [poky] [PATCH] poky.conf: do not write current date into distro version
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Poky Project <poky@yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000008a976705b590ba3d"

--0000000000008a976705b590ba3d
Content-Type: text/plain; charset="UTF-8"

On Thu, 3 Dec 2020 at 15:37, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Thu, 2020-12-03 at 14:36 +0100, Alexander Kanavin wrote:
> > This leaks into target installs of items like os-release,
> > and makes them non-reproducible.
> >
> > Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> > ---
> >  meta-poky/conf/distro/poky.conf | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/meta-poky/conf/distro/poky.conf
> b/meta-poky/conf/distro/poky.conf
> > index 31dc110bf6..20e258714a 100644
> > --- a/meta-poky/conf/distro/poky.conf
> > +++ b/meta-poky/conf/distro/poky.conf
> > @@ -1,6 +1,6 @@
> >  DISTRO = "poky"
> >  DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
> > -DISTRO_VERSION = "3.2+snapshot-${DATE}"
> > +DISTRO_VERSION =
> "3.2+snapshot${@oe.utils.ifelse(d.getVar('BUILD_REPRODUCIBLE_BINARIES') ==
> '1', '', '-${DATE}')}"
> >  DISTRO_CODENAME = "master"
> >  SDK_VENDOR = "-pokysdk"
> >  SDK_VERSION =
> "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
>
> Perhaps we should replace this with the current poky git hash?
>

Sure, I sent an adjusted patch now.

Alex

--0000000000008a976705b590ba3d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, 3 Dec 2020 at 15:37, Richard Purd=
ie &lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie=
@linuxfoundation.org</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">On Thu, 2020-12-03 at 14:36 =
+0100, Alexander Kanavin wrote:<br>
&gt; This leaks into target installs of items like os-release,<br>
&gt; and makes them non-reproducible.<br>
&gt; <br>
&gt; Signed-off-by: Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gm=
ail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 meta-poky/conf/distro/poky.conf | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt; <br>
&gt; diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/p=
oky.conf<br>
&gt; index 31dc110bf6..20e258714a 100644<br>
&gt; --- a/meta-poky/conf/distro/poky.conf<br>
&gt; +++ b/meta-poky/conf/distro/poky.conf<br>
&gt; @@ -1,6 +1,6 @@<br>
&gt;=C2=A0 DISTRO =3D &quot;poky&quot;<br>
&gt;=C2=A0 DISTRO_NAME =3D &quot;Poky (Yocto Project Reference Distro)&quot=
;<br>
&gt; -DISTRO_VERSION =3D &quot;3.2+snapshot-${DATE}&quot;<br>
&gt; +DISTRO_VERSION =3D &quot;3.2+snapshot${@oe.utils.ifelse(d.getVar(&#39=
;BUILD_REPRODUCIBLE_BINARIES&#39;) =3D=3D &#39;1&#39;, &#39;&#39;, &#39;-${=
DATE}&#39;)}&quot;<br>
&gt;=C2=A0 DISTRO_CODENAME =3D &quot;master&quot;<br>
&gt;=C2=A0 SDK_VENDOR =3D &quot;-pokysdk&quot;<br>
&gt;=C2=A0 SDK_VERSION =3D &quot;${@d.getVar(&#39;DISTRO_VERSION&#39;).repl=
ace(&#39;snapshot-${DATE}&#39;, &#39;snapshot&#39;)}&quot;<br>
<br>
Perhaps we should replace this with the current poky git hash?<br></blockqu=
ote><div><br></div><div>Sure, I sent an adjusted patch now.</div><div><br><=
/div><div>Alex<br></div></div></div>

--0000000000008a976705b590ba3d--
