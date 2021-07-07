Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com [209.85.221.169])
 by mx.groups.io with SMTP id smtpd.web09.20287.1625660601804414746
 for <poky@lists.yoctoproject.org>;
 Wed, 07 Jul 2021 05:23:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Lpeg04W3;
 spf=pass (domain: gmail.com, ip: 209.85.221.169, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f169.google.com with SMTP id e15so530193vkp.13
        for <poky@lists.yoctoproject.org>; Wed, 07 Jul 2021 05:23:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nZFBLsjNJsh4HLR2KewjiFL65UZV6iAobhObQpfhrKY=;
        b=Lpeg04W3oNvQx2xdkDzlcXLS7ogxxdWjYz16Jcu3lo9fBuRYcY2uPoCtqD9W2Pd+cJ
         QIGA53Q/rJpw/u5G1SrxoeHqOnWa8e/q6wwuPEaMxpfedDqIS6P741VjzjXpwY9w39VB
         7ffAEeTwRP9ix83OovK/HUPPjiNch4Fi3MLJzZt0mjqDJKFMI6A/I0V8cUO1uq0nQTSF
         62JgQ/cBziutbdijEKE8xHqnjZd5MgxYcVxa3K0BYInuYUlGN9sDGYoB7gMrPLbsFXdV
         Y5dcYOgo40OZxXG5lR3b1MFUp9z1Ci7ycErolZYVkWuJ/2uxJqTAKvkcwqQWOFuMxy9C
         nj9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nZFBLsjNJsh4HLR2KewjiFL65UZV6iAobhObQpfhrKY=;
        b=RtYxogS90CnBkLgluO5PO41HXJu54WB0nJU+wcaKZdO13ZdvNEoSktVVPNdR2SxmrO
         +7am0BdpJFkWIbaUJ/xO4MwBpd85k+KFXOX6MRh1b8WnwosqmWiH+79vSc2gWmo6qhRc
         QcYsuGdMG6Mg+K9x25fGQ3V/UTFygOKPqDRJ2tTScQi6pNYlASt1SHXHPauMCulV33Qp
         opke4l3fEy+WjMXSfR0fY/9xsbSEx11ucgoyBjodscCVJ22DKWHKnwMGoXYh7ycmS1ca
         K+7PX8TjdxPJy4ZqxfBGnuGoKscSOfvxk0j+daOP4jPlFk4wgjPHZNvzQP90HuEsRmAg
         IAwg==
X-Gm-Message-State: AOAM530biUfdcgbQSo1jZqMb3JuoXGRJm1HcMY1isY4skokjC9f9BAMF
	1LyXx+EwwQ3U7dVR9VLUxGrlth69n2sUay+kV88=
X-Google-Smtp-Source: ABdhPJw7SFiaulDi6oENUjg/hu0f7fwh+7TKO76Y343hTprCvsWUhgqtikUWaKQrhhXzZFNQhpn+AJ7h1Wl4UJkD12E=
X-Received: by 2002:a1f:9d8b:: with SMTP id g133mr15895038vke.10.1625660600715;
 Wed, 07 Jul 2021 05:23:20 -0700 (PDT)
MIME-Version: 1.0
References: <20210707104004.2490664-1-dwrobel@ertelnet.rybnik.pl>
In-Reply-To: <20210707104004.2490664-1-dwrobel@ertelnet.rybnik.pl>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Wed, 7 Jul 2021 14:23:09 +0200
Message-ID: <CANNYZj8FZFFKRfNS2rged44E3q2fTmmBGMnC83c555Nm54jUQA@mail.gmail.com>
Subject: Re: [poky] [PATCH] bitbake: fetch2/git: run gc in foreground to avoid race with tar
To: Damian Wrobel <dwrobel@ertelnet.rybnik.pl>
Cc: poky@lists.yoctoproject.org, Adam Romanek <romanek.adam@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000a18cda05c6879adf"

--000000000000a18cda05c6879adf
Content-Type: text/plain; charset="UTF-8"

Can you send the patch to bitbake-devel list please?

Alex

On Wed, 7 Jul 2021 at 12:40, Damian Wrobel <dwrobel@ertelnet.rybnik.pl>
wrote:

> From: Adam Romanek <romanek.adam@gmail.com>
>
> It looks like git gc can interrupts the package creation when
> BB_GENERATE_MIRRORS_TARBALL is in use.
>
> Log excerpts:
>
> tar -czf TOPDIR/../downloads/git2_bitbucket.name-hidden.git.tar.gz .
> failed with exit code 1, output:
> tar: ./objects/pack/pack-89a1d76f6c08f53172ef1d02ff851d90564362c4.pack:
> file changed as we read it
> tar: ./objects/pack/pack-b4a48ada355d333630fdf6b4f67205b7c264dc2c.idx:
> File removed before we read it
>
> Auto packing the repository in background for optimum performance.
> See "git help gc" for manual housekeeping.
>
> Signed-off-by: Adam Romanek <romanek.adam@gmail.com>
> Signed-off-by: Damian Wrobel <dwrobel@ertelnet.rybnik.pl>
> ---
>  bitbake/lib/bb/fetch2/git.py | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
> index 5e65c83c63..488f4c7414 100644
> --- a/bitbake/lib/bb/fetch2/git.py
> +++ b/bitbake/lib/bb/fetch2/git.py
> @@ -231,7 +231,7 @@ class Git(FetchMethod):
>              for name in ud.names:
>                  ud.unresolvedrev[name] = 'HEAD'
>
> -        ud.basecmd = d.getVar("FETCHCMD_git") or "git -c
> core.fsyncobjectfiles=0"
> +        ud.basecmd = d.getVar("FETCHCMD_git") or "git -c
> core.fsyncobjectfiles=0 -c gc.autoDetach=false"
>
>          write_tarballs = d.getVar("BB_GENERATE_MIRROR_TARBALLS") or "0"
>          ud.write_tarballs = write_tarballs != "0" or ud.rebaseable
> --
> 2.31.1
>
>
> 
>
>

--000000000000a18cda05c6879adf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Can you send the patch to bitbake-devel list please?<=
/div><div><br></div><div>Alex<br></div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 7 Jul 2021 at 12:40, Damian =
Wrobel &lt;<a href=3D"mailto:dwrobel@ertelnet.rybnik.pl">dwrobel@ertelnet.r=
ybnik.pl</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">From: Adam Romanek &lt;<a href=3D"mailto:romanek.adam@gmail.com" ta=
rget=3D"_blank">romanek.adam@gmail.com</a>&gt;<br>
<br>
It looks like git gc can interrupts the package creation when<br>
BB_GENERATE_MIRRORS_TARBALL is in use.<br>
<br>
Log excerpts:<br>
<br>
tar -czf TOPDIR/../downloads/git2_bitbucket.name-hidden.git.tar.gz . faile=
d with exit code 1, output:<br>
tar: ./objects/pack/pack-89a1d76f6c08f53172ef1d02ff851d90564362c4.pack: fi=
le changed as we read it<br>
tar: ./objects/pack/pack-b4a48ada355d333630fdf6b4f67205b7c264dc2c.idx: Fil=
e removed before we read it<br>
<br>
Auto packing the repository in background for optimum performance.<br>
See &quot;git help gc&quot; for manual housekeeping.<br>
<br>
Signed-off-by: Adam Romanek &lt;<a href=3D"mailto:romanek.adam@gmail.com" =
target=3D"_blank">romanek.adam@gmail.com</a>&gt;<br>
Signed-off-by: Damian Wrobel &lt;<a href=3D"mailto:dwrobel@ertelnet.rybnik=
.pl" target=3D"_blank">dwrobel@ertelnet.rybnik.pl</a>&gt;<br>
---<br>
=C2=A0bitbake/lib/bb/fetch2/git.py | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py<b=
r>
index 5e65c83c63..488f4c7414 100644<br>
--- a/bitbake/lib/bb/fetch2/git.py<br>
+++ b/bitbake/lib/bb/fetch2/git.py<br>
@@ -231,7 +231,7 @@ class Git(FetchMethod):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for name in ud.names:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ud.unresolve=
drev[name] =3D &#39;HEAD&#39;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 ud.basecmd =3D d.getVar(&quot;FETCHCMD_git&qu=
ot;) or &quot;git -c core.fsyncobjectfiles=3D0&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 ud.basecmd =3D d.getVar(&quot;FETCHCMD_git&qu=
ot;) or &quot;git -c core.fsyncobjectfiles=3D0 -c gc.autoDetach=3Dfalse&quo=
t;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0write_tarballs =3D d.getVar(&quot;BB_GEN=
ERATE_MIRROR_TARBALLS&quot;) or &quot;0&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ud.write_tarballs =3D write_tarballs !=
=3D &quot;0&quot; or ud.rebaseable<br>
-- <br>
2.31.1<br>
<br>
<br>
<br>
<br>
</blockquote></div>

--000000000000a18cda05c6879adf--
