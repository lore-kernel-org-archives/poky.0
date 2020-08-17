Received: from mail-vs1-f68.google.com (mail-vs1-f68.google.com [209.85.217.68])
 by mx.groups.io with SMTP id smtpd.web11.43618.1597672020485902161
 for <poky@lists.yoctoproject.org>;
 Mon, 17 Aug 2020 06:47:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=C4ZFiKgX;
 spf=pass (domain: gmail.com, ip: 209.85.217.68, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f68.google.com with SMTP id r7so8283264vsq.5
        for <poky@lists.yoctoproject.org>; Mon, 17 Aug 2020 06:47:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=urNmlcENmAP5vWUrmBjCiFMsKD4dORV844wgh+9ujI4=;
        b=C4ZFiKgXS0uTAK4B1oqzWuoImY3tUuJQA/YRmP7y2q6+85jjQRS3TtgDdpOeNGp3GL
         Mgx7uZ02GdgZkZlGhwdqmYdQ4ZS+znvXVbjg8Zp0CSEmv4HLJanmMoO/eFlXEw4g6v5n
         Fzfk/95Qtunsb8a2AUJMBfouuc5Y7nRoZvWewWKnye6YOl7frU0uhgp9bOXg3p6aXtq2
         bNs6F+i549iLD8+gF1CgCbEGtAiAuTkxF6bSwZtCH22I36CaAlRTp1dx1KnmzWjEvxbT
         +kZskqksXcCvMWSLDvzCKviO296rPgOLDAl3KRNI761SJyWM4CtlPBkrnQBYZMGsuG1P
         P6PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=urNmlcENmAP5vWUrmBjCiFMsKD4dORV844wgh+9ujI4=;
        b=D8s+XCK3EGlXZdPGBRb4Rtl3dBChJsG0G6YumB1sIYtIm57sse6NCN4Nh1QdhPKHGp
         t7YQ2DGQrzWxyva6n1B8zbPhJgPioo8BgOwqySHJgwujGMqpi/DNUVKsjpPB/k7etsC6
         tYjDRB+b5KZdRKow5Brfi6qDqotop2FFeR8M+SaPdnLqjOfDIxrvujUOVp/3etlk7OWX
         D2TH86uG6Iie0Z1V2vYtFurbMtX/GmMuXoSPdwOJAUVrIsmWjw5yDhoBW9JcZlmLwK2z
         EGk8rBcKQaHzTFmy0HzCDCXXdBjMLN7N1EtKriximNAiCZqUBChi4BQPhYW5eRlAJLWd
         3Cuw==
X-Gm-Message-State: AOAM5336mrFtwrte6S80pqgDyr4JzksIucqAnea4R9byI0ltiRzDvkiJ
	lhiJ20ooTESskqMy6xAOWHbhxGZgZQcGW03cnZo=
X-Google-Smtp-Source: ABdhPJweuHOknuKZYOScjf7Bed/qXjHNVvzpSyAnGYfpuGutdW/mPtyct+9C/xE2RyQzINIWyNLU2fauJ6BrRS4MlP0=
X-Received: by 2002:a67:ecc6:: with SMTP id i6mr7890835vsp.25.1597672019655;
 Mon, 17 Aug 2020 06:46:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200817130135.3512-1-vvavrychuk@gmail.com>
In-Reply-To: <20200817130135.3512-1-vvavrychuk@gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Mon, 17 Aug 2020 15:46:48 +0200
Message-ID: <CANNYZj9=fRRqp+fO=sWikGwDkdE4xnWyXvStmLndwdesJ8gLGQ@mail.gmail.com>
Subject: Re: [poky] [PATCH 1/2] ref-manual: Fix mistake in base class description.
To: Vasyl Vavrychuk <vvavrychuk@gmail.com>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000003309c405ad1301fc"

--0000000000003309c405ad1301fc
Content-Type: text/plain; charset="UTF-8"

And these two should go to docs@lists.yoctoproject.org, I think :)

Alex

On Mon, 17 Aug 2020 at 15:02, Vasyl Vavrychuk <vvavrychuk@gmail.com> wrote:

> Clearly, previous sentense speaks about definitions in classes which
> can be overrided or extended in other classes.
>
> Signed-off-by: Vasyl Vavrychuk <vvavrychuk@gmail.com>
> ---
>  documentation/ref-manual/ref-classes.xml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/documentation/ref-manual/ref-classes.xml
> b/documentation/ref-manual/ref-classes.xml
> index 1dcd5fdd03..1f353b3c30 100644
> --- a/documentation/ref-manual/ref-classes.xml
> +++ b/documentation/ref-manual/ref-classes.xml
> @@ -191,7 +191,7 @@
>          tasks such as fetching, unpacking, configuring (empty by default),
>          compiling (runs any <filename>Makefile</filename> present),
> installing
>          (empty by default) and packaging (empty by default).
> -        These classes are often overridden or extended by other classes
> +        These definitions are often overridden or extended by other
> classes
>          such as the
>          <link
> linkend='ref-classes-autotools'><filename>autotools</filename></link>
>          class or the
> --
> 2.23.0
>
> 
>

--0000000000003309c405ad1301fc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>And these two should go to <span class=3D"gmail-gI"><=
span><a href=3D"mailto:docs@lists.yoctoproject.org">docs@lists.yoctoproject=
.org</a>, I think :)</span></span></div><div><span class=3D"gmail-gI"><span=
><br></span></span></div><div><span class=3D"gmail-gI"><span>Alex<br></span=
></span></div><div><span class=3D"gmail-gI"><span></span></span></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mo=
n, 17 Aug 2020 at 15:02, Vasyl Vavrychuk &lt;<a href=3D"mailto:vvavrychuk@g=
mail.com">vvavrychuk@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">Clearly, previous sentense speaks about defin=
itions in classes which<br>
can be overrided or extended in other classes.<br>
<br>
Signed-off-by: Vasyl Vavrychuk &lt;<a href=3D"mailto:vvavrychuk@gmail.com"=
 target=3D"_blank">vvavrychuk@gmail.com</a>&gt;<br>
---<br>
=C2=A0documentation/ref-manual/ref-classes.xml | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/documentation/ref-manual/ref-classes.xml b/documentation/ref-=
manual/ref-classes.xml<br>
index 1dcd5fdd03..1f353b3c30 100644<br>
--- a/documentation/ref-manual/ref-classes.xml<br>
+++ b/documentation/ref-manual/ref-classes.xml<br>
@@ -191,7 +191,7 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tasks such as fetching, unpacking, confi=
guring (empty by default),<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0compiling (runs any &lt;filename&gt;Make=
file&lt;/filename&gt; present), installing<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(empty by default) and packaging (empty =
by default).<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 These classes are often overridden or extende=
d by other classes<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 These definitions are often overridden or ext=
ended by other classes<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0such as the<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;link linkend=3D&#39;ref-classes-auto=
tools&#39;&gt;&lt;filename&gt;autotools&lt;/filename&gt;&lt;/link&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0class or the<br>
-- <br>
2.23.0<br>
<br>
<br>
</blockquote></div>

--0000000000003309c405ad1301fc--
